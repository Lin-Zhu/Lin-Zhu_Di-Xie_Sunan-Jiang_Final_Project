package neu.edu.cs5200.project;

import java.util.List;

public class Player {
	private List<String> items;
	private List<String> spells;
	private String kills;
	private String deaths;
	private String asists;
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
	public String getKills() {
		return kills;
	}
	public void setKills(String kills) {
		this.kills = kills;
	}
	public String getDeaths() {
		return deaths;
	}
	public void setDeaths(String deaths) {
		this.deaths = deaths;
	}
	public String getAsists() {
		return asists;
	}
	public void setAsists(String asists) {
		this.asists = asists;
	}
	
	
	
}
