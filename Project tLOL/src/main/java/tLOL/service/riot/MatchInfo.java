package tLOL.service.riot;

import java.util.ArrayList;
import java.util.List;

public class MatchInfo {
	private boolean winLose;
	private int champion;
	private String championAddr;
	private int spell_1Addr;
	private int spell_2Addr;
	private int team1Kill;
	private int team2Kill;
	private int teamId;
	
	public List<String> player;
	public List<Integer> playerChampion;
	public MatchInfo() {
		player = new ArrayList<String>();
		playerChampion = new ArrayList<Integer>();
	}
	public boolean isWinLose() {
		return winLose;
	}
	public void setWinLose(boolean winLose) {
		this.winLose = winLose;
	}
	public int getChampion() {
		return champion;
	}
	public void setChampion(int champion) {
		this.champion = champion;
	}
	public String getChampionAddr() {
		return championAddr;
	}
	public void setChampionAddr(String championAddr) {
		this.championAddr = championAddr;
	}
	public int getSpell_1Addr() {
		return spell_1Addr;
	}
	public void setSpell_1Addr(int spell_1Addr) {
		this.spell_1Addr = spell_1Addr;
	}
	public int getSpell_2Addr() {
		return spell_2Addr;
	}
	public void setSpell_2Addr(int spell_2Addr) {
		this.spell_2Addr = spell_2Addr;
	}
	public int getTeam1Kill() {
		return team1Kill;
	}
	public void setTeam1Kill(int team1Kill) {
		this.team1Kill = team1Kill;
	}
	public int getTeam2Kill() {
		return team2Kill;
	}
	public void setTeam2Kill(int team2Kill) {
		this.team2Kill = team2Kill;
	}
	public int getTeamId() {
		return teamId;
	}
	public void setTeamId(int teamId) {
		this.teamId = teamId;
	}
	public List<String> getPlayer() {
		return player;
	}
	public void setPlayer(List<String> player) {
		this.player = player;
	}
	public List<Integer> getPlayerChampion() {
		return playerChampion;
	}
	public void setPlayerChampion(List<Integer> playerChampion) {
		this.playerChampion = playerChampion;
	}
	
	
}
