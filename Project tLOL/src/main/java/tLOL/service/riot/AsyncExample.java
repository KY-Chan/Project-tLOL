package tLOL.service.riot;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;

import net.rithms.riot.api.ApiConfig;
import net.rithms.riot.api.RiotApi;
import net.rithms.riot.api.RiotApiAsync;
import net.rithms.riot.api.RiotApiException;
import net.rithms.riot.api.endpoints.league.constant.LeagueQueue;
import net.rithms.riot.api.endpoints.league.dto.LeagueEntry;
import net.rithms.riot.api.endpoints.match.dto.Match;
import net.rithms.riot.api.endpoints.match.dto.MatchList;
import net.rithms.riot.api.endpoints.match.dto.MatchReference;
import net.rithms.riot.api.endpoints.match.dto.Participant;
import net.rithms.riot.api.endpoints.match.dto.ParticipantStats;
import net.rithms.riot.api.endpoints.summoner.dto.Summoner;
import net.rithms.riot.api.request.AsyncRequest;
import net.rithms.riot.api.request.RequestAdapter;
import net.rithms.riot.constant.Platform;

/**
 * This example demonstrates how to use asynchronous requests. In this example we get a summoner's base information, as well as league
 * information asynchronously. Requesting these information asynchronously can save a lot of time, since the requests do not block each
 * other.
 */
public class AsyncExample {

	/*public static void main(String[] args) throws RiotApiException {
		new AsyncExample();
	}*/

	// Inner class to store information in
	private class ExtendedSummoner {
		public Summoner summoner;
		public LeagueEntry leagueSolo;
		public LeagueEntry leagueFlexSR;
		public LeagueEntry leagueFlexTT;
	}

	public AsyncExample() throws RiotApiException {
		ApiConfig config = new ApiConfig().setKey("RGAPI-917e2f58-8f57-46ea-b3d8-532d559df10d");
		RiotApi api = new RiotApi(config);
		RiotApiAsync apiAsync = api.getAsyncApi();

		Summoner summoner = api.getSummonerByName(Platform.KR, "나나나솨");
		
		// TODO need to rewrite this example to properly work with v4 endpoints
		String summonerId = summoner.getId(); // Encrypted summonerId to request
		Platform platform = Platform.KR; // platform to request
		final ExtendedSummoner eSummoner = new ExtendedSummoner(); // Object where we want to store the data

		// Asynchronously get summoner information
		AsyncRequest requestSummoner = apiAsync.getSummoner(platform, summonerId);
		requestSummoner.addListeners(new RequestAdapter() {
			@Override
			public void onRequestSucceeded(AsyncRequest request) {
				eSummoner.summoner = request.getDto();
			}
		});

		// Asynchronously get league information
		AsyncRequest requestLeague = apiAsync.getLeagueEntriesBySummonerId(platform, summonerId);
		requestLeague.addListeners(new RequestAdapter() {
			@Override
			public void onRequestSucceeded(AsyncRequest request) {
				Set<LeagueEntry> leagueEntries = request.getDto();
				if (leagueEntries == null || leagueEntries.isEmpty()) {
					return;
				}
				for (LeagueEntry leagueEntry : leagueEntries) {
					if (leagueEntry.getQueueType().equals(LeagueQueue.RANKED_SOLO_5x5.name())) {
						eSummoner.leagueSolo = leagueEntry;
					} else if (leagueEntry.getQueueType().equals(LeagueQueue.RANKED_FLEX_SR.name())) {
						eSummoner.leagueFlexSR = leagueEntry;
					} else if (leagueEntry.getQueueType().equals(LeagueQueue.RANKED_FLEX_TT.name())) {
						eSummoner.leagueFlexTT = leagueEntry;
					}
				}
			}
		});

		try {
			// Wait for all asynchronous requests to finish
			apiAsync.awaitAll();
		} catch (InterruptedException e) {
			// We can use the Api's logger
			RiotApi.log.log(Level.SEVERE, "Waiting Interrupted", e);
		}

		// Print information stored in eSummoner
		System.out.println("Summoner name: " + eSummoner.summoner.getName());

		System.out.print("Solo Rank: ");
		if (eSummoner.leagueSolo == null) {
			System.out.println("unranked");
		} else {
			System.out.println(eSummoner.leagueSolo.getTier() + " " + eSummoner.leagueSolo.getRank());
			System.out.println("win/lose : " + eSummoner.leagueSolo.getWins() + "/" + eSummoner.leagueSolo.getLosses());
			String accountId = eSummoner.summoner.getAccountId();
			MatchList matchList = api.getMatchListByAccountId(platform, accountId, null, null, null, -1,-1,0,5);
			int kill = 0, death = 0, assist = 0;
			List<MatchReference> gameList = matchList.getMatches();
			for(MatchReference game : gameList) {
				Long gameId = game.getGameId();
				Match match = api.getMatch(platform, gameId, accountId);
				Participant part = match.getParticipantBySummonerId(summonerId);
				ParticipantStats ps = part.getStats();
				kill += ps.getKills();
				death += ps.getDeaths();
				assist += ps.getAssists();
			}
			System.out.println("total kda : " + kill + "/" + death +"/" + assist);
			/*if (matchList.getMatches() != null) {
				for (MatchReference match : matchList.getMatches()) {
					Long gameId = match.getGameId();
					Match m = api.getMatch(platform, gameId, accountId);
					Participant part = m.getParticipantBySummonerId(summonerId);
					ParticipantStats ps = part.getStats();
					System.out.println(ps.getKills());
				}
			}*/
			
		}

		System.out.print("Flex SR Rank: ");
		if (eSummoner.leagueFlexSR == null) {
			System.out.println("unranked");
		} else {
			System.out.println(eSummoner.leagueFlexSR.getTier() + " " + eSummoner.leagueFlexSR.getRank());
		}

		System.out.print("Flex TT Rank: ");
		if (eSummoner.leagueFlexTT == null) {
			System.out.println("unranked");
		} else {
			System.out.println(eSummoner.leagueFlexTT.getTier() + " " + eSummoner.leagueFlexTT.getRank());
		}
	}
}