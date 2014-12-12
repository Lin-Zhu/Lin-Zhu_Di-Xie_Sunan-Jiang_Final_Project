package neu.edu.cs5200.project;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class SummonerWebserviceClient {
	private String urlApi = "https://na.api.pvp.net/api/lol/na/v1.4/summoner/by-name/yourdadddd?api_key=0b8d4837-8ad8-46a7-a056-f42be94466ab";
	public Summoner getSummonerForName(String name) {
		
		String urlStr = urlApi.replace("yourdadddd", name);
		
//		System.out.println(urlStr);
		
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
			JSONObject Sname = (JSONObject) root.get(name);
			Summoner currentSummoner = new Summoner();
			currentSummoner.setId(Integer.parseInt(Sname.get("id").toString()));
			currentSummoner.setProfileIconId(Integer.parseInt(Sname.get("profileIconId").toString()));
			currentSummoner.setSummonerLevel(Integer.parseInt(Sname.get("summonerLevel").toString()));
			currentSummoner.setName(Sname.get("name").toString());
			
			Summoner summonerObject = new Summoner (currentSummoner.getId(),currentSummoner.getName(),currentSummoner.getProfileIconId(),currentSummoner.getSummonerLevel());
			
			return summonerObject;
			
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return null;
	}
	
	public static void main(String[] args) {
		SummonerWebserviceClient client = new SummonerWebserviceClient();
		Summoner summoner = client.getSummonerForName("pbj1203");
		System.out.println(summoner.getId());
		System.out.println(summoner.getProfileIconId());
		System.out.println(summoner.getSummonerLevel());
		System.out.println(summoner.getName());
		Gender maleGender = Gender.Male;
		System.out.println(maleGender);
	}

}
