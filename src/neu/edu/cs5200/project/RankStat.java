package neu.edu.cs5200.project;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;


public class RankStat {

	private String APIQuery = "https://na.api.pvp.net/api/lol/na/v1.3/stats/by-summoner/47642700/ranked?season=SEASON4&api_key=e7082900-18ec-4f82-af81-0987641a9f1a";
	private String APIName = "https://na.api.pvp.net/api/lol/static-data/na/v1.2/champion/254?api_key=e7082900-18ec-4f82-af81-0987641a9f1a";
	private String APInameToid = "https://na.api.pvp.net/api/lol/na/v1.4/summoner/by-name/xxxx?api_key=e7082900-18ec-4f82-af81-0987641a9f1a";
	public static Summary summa = new Summary();
	
	public double getTwodigits(double i) {
		double result = Double.parseDouble(String.format("%.2f",i));
		return result;
	}
	
	public String getPercentage(double i) {
		double n = i * 100;
		String t = (String.format("%.2f", n));
		String percent = t + "%";
		return percent;
		
	}
	
	public Champion getSummary(List<Champion> ChampL) {
		Champion summary = new Champion();
		for (Champion champ : ChampL) {
			if (Integer.parseInt(champ.getId()) == 0) {
				summary = champ;
			}
		}
		return summary;
	}
	
	public String idSolution(String summonName) {
		String urlStr = APInameToid.replace("xxxx", summonName.toLowerCase());
		String champId = null;
		URL url;
		try {
			url = new URL(urlStr);
			HttpURLConnection connection;
			connection = (HttpURLConnection) url.openConnection();	
			connection.setRequestMethod("GET");
			InputStream stream = connection.getInputStream();
			InputStreamReader reader = new InputStreamReader(stream);
			BufferedReader buffer = new BufferedReader(reader);
			String line;
			String json = "";
			while((line = buffer.readLine()) !=null) {
				json += line;
			}
			JSONParser parser = new JSONParser();
			parser.parse(json);
			JSONObject root = (JSONObject) parser.parse(json);
			JSONObject namePack = (JSONObject)root.get(summonName.toLowerCase());
			champId = namePack.get("id").toString();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		
		return champId;
		
	}
	
	
	
	
	
	public String nameSolution(String id) {
		String urlStr = APIName.replace("254", id);	
		String champName = null;
		if (Integer.parseInt(id) != 0) {
			
		try {
			URL url = new URL(urlStr);
			HttpURLConnection connection;
			connection = (HttpURLConnection) url.openConnection();	
			connection.setRequestMethod("GET");
			InputStream stream = connection.getInputStream();
			InputStreamReader reader = new InputStreamReader(stream);
			BufferedReader buffer = new BufferedReader(reader);
			String line;
			String json = "";
			while((line = buffer.readLine()) !=null) {
				json += line;
			}
			JSONParser parser = new JSONParser();
			parser.parse(json);
			JSONObject root = (JSONObject) parser.parse(json);
			champName = root.get("name").toString();
			} catch (IOException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		}
		else {
			champName = "Summary";
		}
		
		return champName;
		
	}
	
	public List<Champion> getChampionWin(String SID) {
		RankStat stat = new RankStat();
		String urlStr = APIQuery.replace("47642700", SID);
		List<Champion> allChampion = new ArrayList<Champion>();
		
		try {
			URL url = new URL(urlStr);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("GET");
			InputStream stream = connection.getInputStream();
			InputStreamReader reader = new InputStreamReader(stream);
			BufferedReader buffer = new BufferedReader(reader);
			String line;
			String json = "";
			while((line = buffer.readLine()) !=null) {
				json += line;
			}
			JSONParser parser = new JSONParser();
			parser.parse(json);
			JSONObject root = (JSONObject) parser.parse(json);
			JSONArray sum = (JSONArray)root.get("champions");
			int i = 0;
			//Champion curChamp = new Champion();
			while (i<sum.size()) {
				
				JSONObject one = (JSONObject)sum.get(i);
				JSONObject again = (JSONObject)one.get("stats");
				Champion curChamp = new Champion();
				curChamp.setId(one.get("id").toString());
				String a = stat.nameSolution(one.get("id").toString());
				String b = a.replace(".", "");
				String c = b.replace(" ", "");
				String d = c.replace("'Z", "z");
				String e = d.replace("'G", "g");
				String f = e.replace("'M", "M");
				String g = f.replace("'K", "k");
				String h = g.replace("LeBlanc", "Leblanc");
				curChamp.setName(h);
				curChamp.setWinningMatch(again.get("totalSessionsWon").toString());
				curChamp.setLosingMatch(again.get("totalSessionsLost").toString());
				curChamp.setTotalAsis(again.get("totalAssists").toString());
				curChamp.setTotalKill(again.get("totalChampionKills").toString());
				curChamp.setTotalDeath(again.get("totalDeathsPerSession").toString());
				curChamp.setTotalCS(again.get("totalMinionKills").toString());
				curChamp.setTotalmatch(again.get("totalSessionsPlayed").toString());
				double mid = ((1.0 * Integer.parseInt(curChamp.getWinningMatch())/Integer.parseInt(curChamp.getTotalmatch())));
				curChamp.setWinningRate(stat.getPercentage(mid));
				double temp1 = 1.0 * Integer.parseInt(curChamp.getTotalKill())/Integer.parseInt(curChamp.getTotalmatch());
				double kk = Double.parseDouble(String.format("%.2f",temp1));
				double temp2 = 1.0 * Integer.parseInt(curChamp.getTotalDeath())/Integer.parseInt(curChamp.getTotalmatch());
				double dd =  Double.parseDouble(String.format("%.2f",temp2));
				double temp3 = 1.0 * Integer.parseInt(curChamp.getTotalAsis())/Integer.parseInt(curChamp.getTotalmatch());
				double aa =  Double.parseDouble(String.format("%.2f",temp3));
				double temp4 = Integer.parseInt(curChamp.getTotalCS())/Integer.parseInt(curChamp.getTotalmatch());
				double ccss =  Double.parseDouble(String.format("%.2f",temp4));
				curChamp.setEverageK(kk);
				curChamp.setEverageD(dd);
				curChamp.setEverageA(aa);
				curChamp.setEverageCS(ccss);
				//double kk = (double)(Math.round((Integer.parseInt(curChamp.getTotalKill())/(Integer.parseInt(curChamp.getTotalmatch())))*1000/1000.0));
				int n = 0;
				if (Integer.parseInt(curChamp.getTotalDeath()) == 0) {
					n = 1;
				}
				else {
					n = Integer.parseInt(curChamp.getTotalDeath());
				}
				
				double temp5 = 1.0 * (Integer.parseInt(curChamp.getTotalKill())+Integer.parseInt(curChamp.getTotalAsis()))/n;
				double kda =  Double.parseDouble(String.format("%.2f",temp5));
				curChamp.setKDA(kda);
				
				allChampion.add(curChamp);
				i++;
			}
			
			
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		} 
		Champion summ = stat.getSummary(allChampion);
		summa.setLosingMatch(summ.getLosingMatch());
		summa.setWinningMatch(summ.getWinningMatch());
		summa.setWinningRate(summ.getWinningRate());
		
		allChampion.remove(summ);
		return allChampion;

	}
	
	public static void main(String[] args) {
		System.out.println("Please Type in your ChampionName");
		BufferedReader Name = new BufferedReader(new InputStreamReader(System.in));
		String SName = null;
		try {
			SName = Name.readLine();
		} catch (IOException e) {
			e.printStackTrace();
		}
		RankStat stat = new RankStat();
		String SID = stat.idSolution(SName);
		List<Champion> reusltSet = stat.getChampionWin(SID);
		
		System.out.println(summa.getWinningRate());
		
		//System.out.println(1.0 * Integer.parseInt(reusltSet.get(2).getLosingMatch())/Integer.parseInt(reusltSet.get(2).getTotalmatch()));
	}

}
