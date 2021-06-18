package tLOL.service.riot;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

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

public class AsyncApi {

	// Inner class to store information in
	private class ExtendedSummoner {
		public Summoner summoner;
		public LeagueEntry leagueSolo;
		public LeagueEntry leagueFlexSR;
		public LeagueEntry leagueFlexTT;
	}

	public SummonerInfo getInfo(String nickname) throws RiotApiException {
		SummonerInfo sInfo = new SummonerInfo();
		ApiConfig config = new ApiConfig().setKey("RGAPI-ba22d919-0995-40b6-b481-616624df8c81");
		RiotApi api = new RiotApi(config);
		RiotApiAsync apiAsync = api.getAsyncApi();

		Summoner summoner = api.getSummonerByName(Platform.KR, nickname);
		if(summoner == null) {
			System.out.println("그런 소환사는 없습니다");
			return sInfo;
		}
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
		sInfo.setSummonerName(eSummoner.summoner.getName()); // 소환사명 기록
		sInfo.setProfileIconAddr("http://ddragon.leagueoflegends.com/cdn/10.11.1/img/profileicon/" + eSummoner.summoner.getProfileIconId() +".png");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); // ^ 프로필 아이콘 주소
		sInfo.setRevisionDate(sdf.format(eSummoner.summoner.getRevisionDate())); // 최근 활동일
		sInfo.setSumonerLevel(eSummoner.summoner.getSummonerLevel()); // 소환사 레벨

		if (eSummoner.leagueSolo == null) {
			sInfo.setRank("unranked"); // 언랭
		} else {
			sInfo.setRank(eSummoner.leagueSolo.getRank()); // 랭크
			sInfo.setTier(eSummoner.leagueSolo.getTier()); // 티어
			sInfo.setpWins(eSummoner.leagueSolo.getWins()); // 승리수
			sInfo.setpLosses(eSummoner.leagueSolo.getLosses()); // 패배수
			sInfo.setLeaguePoints(eSummoner.leagueSolo.getLeaguePoints()); // 랭크점수
			sInfo.setTierImageAddr("/Project_tLOL/images/tier/" + eSummoner.leagueSolo.getTier() + ".png"); // 티어 아이콘
			
			String accountId = eSummoner.summoner.getAccountId();
			MatchList matchList = api.getMatchListByAccountId(platform, accountId, null, null, null, -1,-1,0,10);
			int kill = 0, death = 0, assist = 0;
			
			
			List<MatchReference> gameList = matchList.getMatches();
			sInfo.setGames(gameList.size()); // 게임수
			for(MatchReference game : gameList) {
				MatchInfo mi = new MatchInfo();
				Long gameId = game.getGameId();
				Match match = api.getMatch(platform, gameId, accountId);
				Participant part = match.getParticipantBySummonerId(summonerId);
				ParticipantStats ps = part.getStats();
				mi.setWinLose(ps.isWin()); // 승리 여부
				mi.setChampion(part.getChampionId()); // 챔피온
				System.out.println(mi.getChampion());
				kill += ps.getKills();
				death += ps.getDeaths();
				assist += ps.getAssists();
			}
			sInfo.setKda(((float)kill + assist) / death);
			sInfo.setKills(kill / sInfo.getGames());
			
		}

		/*System.out.print("Flex SR Rank: ");
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
		}*/
		
		return sInfo;
	}
}