package neu.edu.cs5200.project;

import java.util.ArrayList;
import java.util.List;

public class Match {
	private String matchId;
	private String championUsed;
	private String Kills;
	private String Deaths;
	private String Asists;
	private String totalGold;
	private String Creeps;
	private List<String> items = new ArrayList<String>();
	private List<String> spells = new ArrayList<String>();
	
	
	public String getMatchId() {
		return matchId;
	}
	public void setMatchId(String matchId) {
		this.matchId = matchId;
	}
	public String getChampionUsed() {
		return championUsed;
	}
	public void setChampionUsed(String championUsed) {
		this.championUsed = championUsed;
	}
	public String getKills() {
		return Kills;
	}
	public void setKills(String kills) {
		Kills = kills;
	}
	public String getDeaths() {
		return Deaths;
	}
	public void setDeaths(String deaths) {
		Deaths = deaths;
	}
	public String getAsists() {
		return Asists;
	}
	public void setAsists(String asists) {
		Asists = asists;
	}
	public String getTotalGold() {
		return totalGold;
	}
	public void setTotalGold(String totalGold) {
		this.totalGold = totalGold;
	}
	public String getCreeps() {
		return Creeps;
	}
	public void setCreeps(String creeps) {
		Creeps = creeps;
	}
	
	public List<String> getItems() {
		return items;
	}
	public void setItems(List<String> items) {
		this.items = items;
	}
	public List<String> getSpells() {
		return spells;
	}
	public void setSpells(List<String> spells) {
		this.spells = spells;
	}
	
	
	
}
