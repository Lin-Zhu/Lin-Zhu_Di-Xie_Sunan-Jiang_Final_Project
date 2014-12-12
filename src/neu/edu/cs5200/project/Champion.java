package neu.edu.cs5200.project;

public class Champion {
	
	private String id;
	private String name;
	private String icon;
	private String winningMatch;
	private String losingMatch;
	private String totalUsed;
	private String totalKill;
	private String totalDeath;
	private String totalAsis;
	private String totalCS;
	private String totalmatch;
	private String WinningRate;
	private double everageK;
	private double everageD;
	private double everageA;
	private double everageCS;
	private double KDA;
	
	
	public double getEverageCS() {
		return everageCS;
	}
	public void setEverageCS(double everageCS) {
		this.everageCS = everageCS;
	}
	public double getEverageK() {
		return everageK;
	}
	public void setEverageK(double everageK) {
		this.everageK = everageK;
	}
	public double getEverageD() {
		return everageD;
	}
	public void setEverageD(double everageD) {
		this.everageD = everageD;
	}
	public double getEverageA() {
		return everageA;
	}
	public void setEverageA(double everageA) {
		this.everageA = everageA;
	}
	public double getKDA() {
		return KDA;
	}
	public void setKDA(double kDA) {
		KDA = kDA;
	}
	public String getWinningRate() {
		return WinningRate;
	}
	public void setWinningRate(String winningRate) {
		WinningRate = winningRate;
	}
	public String getTotalmatch() {
		return totalmatch;
	}
	public void setTotalmatch(String totalMatch) {
		this.totalmatch = totalMatch;
	}
	public String getId() {
		return id;
	}
	public void setId(String string) {
		this.id = string;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getWinningMatch() {
		return winningMatch;
	}
	public void setWinningMatch(String string) {
		this.winningMatch = string;
	}
	public String getLosingMatch() {
		return losingMatch;
	}
	public void setLosingMatch(String losingMatch) {
		this.losingMatch = losingMatch;
	}
	public String getTotalUsed() {
		return totalUsed;
	}
	public void setTotalUsed(String totalUsed) {
		this.totalUsed = totalUsed;
	}
	public String getTotalKill() {
		return totalKill;
	}
	public void setTotalKill(String totalKill) {
		this.totalKill = totalKill;
	}
	public String getTotalDeath() {
		return totalDeath;
	}
	public void setTotalDeath(String totalDeath) {
		this.totalDeath = totalDeath;
	}
	public String getTotalAsis() {
		return totalAsis;
	}
	public void setTotalAsis(String totalAsis) {
		this.totalAsis = totalAsis;
	}
	public String getTotalCS() {
		return totalCS;
	}
	public void setTotalCS(String totalCS) {
		this.totalCS = totalCS;
	}
	
}
