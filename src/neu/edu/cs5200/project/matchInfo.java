package neu.edu.cs5200.project;

import java.util.ArrayList;
import java.util.List;

public class matchInfo {
	private List<String> allies = new ArrayList<String>();
	private List<String> enemies = new ArrayList<String>();
	private List<String> alliesChamp = new ArrayList<String>();
	private List<String> enemiesChamp = new ArrayList<String>();
	private List<Player> player = new ArrayList<Player>();

	private String Red;
	private String Purple;
	
	
	
	
	public List<Player> getPlayer() {
		return player;
	}
	public void setPlayer(List<Player> player) {
		this.player = player;
	}
	public String getRed() {
		return Red;
	}
	public void setRed(String red) {
		Red = red;
	}
	public String getPurple() {
		return Purple;
	}
	public void setPurple(String purple) {
		Purple = purple;
	}
	public List<String> getAllies() {
		return allies;
	}
	public void setAllies(List<String> allies) {
		this.allies = allies;
	}
	public List<String> getEnemies() {
		return enemies;
	}
	public void setEnemies(List<String> enemies) {
		this.enemies = enemies;
	}
	public List<String> getAlliesChamp() {
		return alliesChamp;
	}
	public void setAlliesChamp(List<String> alliesChamp) {
		this.alliesChamp = alliesChamp;
	}
	public List<String> getEnemiesChamp() {
		return enemiesChamp;
	}
	public void setEnemiesChamp(List<String> enemiesChamp) {
		this.enemiesChamp = enemiesChamp;
	}
	
	
}
