package neu.edu.cs5200.project;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class MatchStat {
	
	private String APIgetMatch = "https://na.api.pvp.net/api/lol/na/v2.2/matchhistory/47642700?api_key=e7082900-18ec-4f82-af81-0987641a9f1a";
	private String APIgetPlayers = "https://na.api.pvp.net/api/lol/na/v2.2/match/1543373608?api_key=e7082900-18ec-4f82-af81-0987641a9f1a";
	private List<Match> allMatches = new ArrayList<Match>();
	private List<Player> people = new ArrayList<Player>();
	private matchInfo matchinfo = new matchInfo();
	
public List<Match> getAllMatches() {
		return allMatches;
	}

	public void setAllMatches(List<Match> allMatches) {
		this.allMatches = allMatches;
	}

	public List<Match> recentMatch(String SID) {
		String urlStr = APIgetMatch.replace("47642700", SID);
		URL url;
		try {
			url = new URL(urlStr);
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
			JSONArray sum = (JSONArray)root.get("matches");
			int i = 0;
			while (i<sum.size()) {

				Match curMatch = new Match();
				JSONObject one = (JSONObject)sum.get(i);
				curMatch.setMatchId(one.get("matchId").toString());
				JSONArray info1st = (JSONArray)one.get("participants");
				JSONObject info2nd = (JSONObject)info1st.get(0);
				JSONObject info3rd = (JSONObject)info2nd.get("stats");
				List<String> spells = new ArrayList<String>();
				String spell1 = info2nd.get("spell2Id").toString();
				spells.add(spell1);
				String spell2 = info2nd.get("spell1Id").toString();
				spells.add(spell2);
				curMatch.setSpells(spells);
				RankStat stat = new RankStat();
				String a = stat.nameSolution(info2nd.get("championId").toString());
				String b = a.replace(".", "");
				String c = b.replace(" ", "");
				String d = c.replace("'Z", "z");
				String e = d.replace("'G", "g");
				String f = e.replace("'M", "M");
				String g = f.replace("'K", "k");
				String h = g.replace("LeBlanc", "Leblanc");
				curMatch.setChampionUsed(h);
				curMatch.setAsists(info3rd.get("assists").toString());
				curMatch.setKills(info3rd.get("kills").toString());
				curMatch.setDeaths(info3rd.get("deaths").toString());
				int j = 0;
				List<String> items = new ArrayList<String>();
				while (j < 7) {
				String query = "item" + j;
				String item = info3rd.get(query).toString();
				if (Integer.parseInt(item)!=0){
				items.add(item);
				}
				j++;
				}
				curMatch.setItems(items);
				curMatch.setTotalGold(info3rd.get("goldEarned").toString());
				int minion = Integer.parseInt(info3rd.get("minionsKilled").toString());
				int monstor = Integer.parseInt(info3rd.get("neutralMinionsKilled").toString());
				int total = minion + monstor;
				curMatch.setCreeps(Integer.toString(total));
				allMatches.add(curMatch);
				i++;
			}				
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		} //catch (InterruptedException e) {
			// TODO Auto-generated catch block
		//	e.printStackTrace();
		//}
		return allMatches;
		
	}
	
	public matchInfo getAnE(String matchNum) {
		String urlStr = APIgetPlayers.replace("1543373608", allMatches.get(Integer.parseInt(matchNum)).getMatchId());
		URL url;
		try {
			url = new URL(urlStr);
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
			JSONArray name = (JSONArray) root.get("participantIdentities");
			JSONArray Sname = (JSONArray) root.get("participants");
			List<String> redChamp = new ArrayList<String>();
			List<String> purpleChamp = new ArrayList<String>();
			List<String> ally = new ArrayList<String>();
			List<String> enemy = new ArrayList<String>();
			int i = 0;
			while (i < 5) {
				RankStat stat = new RankStat();
				JSONObject getOne = (JSONObject) name.get(i);
				JSONObject getOnechamp = (JSONObject) Sname.get(i);
				JSONObject getName = (JSONObject) getOne.get("player");
				JSONObject getNamechamp = (JSONObject) getOnechamp.get("stats");
				
				Player player = new Player();
				List<String> SP = new ArrayList<String>();
				List<String> IT = new ArrayList<String>();
				String I1 = getOnechamp.get("spell1Id").toString();
				String I2 = getOnechamp.get("spell2Id").toString();
				SP.add(I1);
				SP.add(I2);
				JSONObject getStats = (JSONObject) getOnechamp.get("stats");
				int n = 0;
				while (n <= 6) {
					String temp = getStats.get("item"+n).toString();
					IT.add(temp);
					n++;
				}
				player.setItems(IT);
				player.setSpells(SP);
				player.setKills(getStats.get("kills").toString());
				player.setDeaths(getStats.get("deaths").toString());
				player.setAsists(getStats.get("assists").toString());
				
				if (getNamechamp.get("winner") == "true") {
					matchinfo.setRed("Winner");
					matchinfo.setPurple("Loser");
					}
					else {
						matchinfo.setRed("Loser");
						matchinfo.setPurple("Winner");
					}
				String oneAlly = getName.get("summonerName").toString();
				String oneRedchampID = getOnechamp.get("championId").toString();
				String oneRedchamp = stat.nameSolution(oneRedchampID);
				redChamp.add(oneRedchamp);
				ally.add(oneAlly);
				people.add(player);
				i++;
			}
			while (i < 10) {
				RankStat stat = new RankStat();
				JSONObject getOne = (JSONObject) name.get(i);
				JSONObject getOnechamp = (JSONObject) Sname.get(i);
				JSONObject getName = (JSONObject) getOne.get("player");
				
				Player player = new Player();
				List<String> SP = new ArrayList<String>();
				List<String> IT = new ArrayList<String>();
				String I1 = getOnechamp.get("spell1Id").toString();
				String I2 = getOnechamp.get("spell2Id").toString();
				SP.add(I1);
				SP.add(I2);
				JSONObject getStats = (JSONObject) getOnechamp.get("stats");
				int n = 0;
				while (n <= 6) {
					String temp = getStats.get("item"+n).toString();
					IT.add(temp);	
					n++;
				}
				player.setItems(IT);
				player.setSpells(SP);
				player.setKills(getStats.get("kills").toString());
				player.setDeaths(getStats.get("deaths").toString());
				player.setAsists(getStats.get("assists").toString());
				String oneEnemy = getName.get("summonerName").toString();
				String onePurplechampID = getOnechamp.get("championId").toString();
				String onePurplechamp = stat.nameSolution(onePurplechampID);
				System.out.println("asdasd");
				purpleChamp.add(onePurplechamp);
				enemy.add(oneEnemy);
				people.add(player);
				i++;
			}
			matchinfo.setAllies(ally);
			matchinfo.setAlliesChamp(redChamp);
			matchinfo.setEnemies(enemy);
			matchinfo.setEnemiesChamp(purpleChamp);
			matchinfo.setPlayer(people);
			
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (ProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		return matchinfo;
	}
	
	
	
	public static void main(String[] args) {
		MatchStat matches = new MatchStat();
		List<Match> allM =  matches.recentMatch("47642700");
		matchInfo a = new matchInfo();
		a = matches.getAnE("0");
		System.out.println(allM.get(0).getChampionUsed());
		System.out.println(allM.get(0).getKills());
		System.out.println(allM.get(0).getAsists());
		System.out.println(allM.get(0).getDeaths());
		System.out.println(a.getAllies().get(0));
		System.out.println(a.getPlayer().get(0).getItems());
		}
		
}
		

