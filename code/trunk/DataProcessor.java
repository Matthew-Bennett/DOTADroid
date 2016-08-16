package PrototypeServer;
import org.w3c.dom.*;
import org.apache.xerces.parsers.DOMParser;

import java.io.IOException;
import java.sql.*;

public 	class DataProcessor {

	public static void main (String args[]){
		//String recentgames = "https://api.steampowered.com/IDOTA2Match_570/GetMatchHistory/V001/?format=XML&key=F132852481FC966F6B0185C7EA6BE5A3";
		//String particulargame = "https://api.steampowered.com/IDOTA2Match_570/GetMatchDetails/V001/?match_id=1040766301&format=XML&key=F132852481FC966F6B0185C7EA6BE5A3";
//		for(int i=1438252544; i<1440045485; i++){
//			parsehourlygames(i);
//		}
//		for(int i=1438459605; i<1440045485; i++){
//			parsehourlygames(i);
//		}
		for(int i=1438709963; i<1440045485; i++){
			parsehourlygames(i);
		}
		
	}
	
	
	public static void databaseconnector(String stmt){
		
		try{
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection("jdbc:mysql://mysql.mcscw3.le.ac.uk:3306/mb508", "mb508", "iledstro");
			Statement s = con.createStatement();	
			s.executeUpdate(stmt);
			con.close();
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		
	}
	
	//Parts of the dom parsing code taken from CO3098 Lecture Notes - https://campus.cs.le.ac.uk/teaching/resources/CO3098/docs/notes.pdf
	
	public static void parserecentgames(String url){
		try{			
			
			DOMParser parser = new DOMParser();
			parser.parse(url);
			Document doc = parser.getDocument();	
			String[] Game = new String[11];		
			NodeList matcheids = doc.getElementsByTagName("match_id");
			NodeList matches = doc.getElementsByTagName("match");
			for (int i=0; i<matcheids.getLength(); i++){
				
				Node mid1 = matcheids.item(i);
				String mids1 = mid1.getTextContent();
				System.out.println("Match ID: " + mids1);
				Game[0] = mids1;
				Node m1 = matches.item(i);
				NodeList m1c = m1.getChildNodes();
				int val = 1;
				for (int j=0; j<(m1c.getLength()); j++){
					Node m1c1 = m1c.item(j);
					if((m1c1.getNodeName() == "players")){
						
						NodeList m1c1c = m1c1.getChildNodes();
						for(int k=0; k<(m1c1c.getLength()); k++){
							
							Node m1c1c1 = m1c1c.item(k);
							if((m1c1c1.getNodeName() == "player")){
								NodeList m1c1c1c = m1c1c1.getChildNodes();
								for(int l=0; l<(m1c1c1c.getLength()); l++){
									
									Node m1c1c1c1 = m1c1c1c.item(l);
									if((m1c1c1c1.getNodeName() == "hero_id")){
										String m1c1c1c1hid = m1c1c1c1.getTextContent();
										System.out.println("Hero ID: "+ m1c1c1c1hid);									
										Game[val] = m1c1c1c1hid;
										val++;
									}							
								}
							}

						}
						System.out.println("Array: "+Game[0]+", "+Game[1]+", "+Game[2]+", "+Game[3]+", "+Game[4]+", "+Game[5]+", "+Game[6]+", "+Game[7]+", "+Game[8]+", "+Game[9]+", "+Game[10]+", ");
					}					
				}
				//AllGames[i] = Game;
			}
			
		//compute_wins();
		}
		
		catch(Exception e){
			e.printStackTrace(System.err);
		}
	}
	
	//Takes a game ID, creates an array with GameID, Team that won and all 10 hero ID's, then inserts the data into the Database
	public static void parseparticulargame(int gameid){
		try{
			
			//Initiates the parser and defines variables required
			DOMParser parser = new DOMParser();
			parser.parse("https://api.steampowered.com/IDOTA2Match_570/GetMatchDetails/V001/?match_id=" + gameid + "&format=XML&key=F132852481FC966F6B0185C7EA6BE5A3");
			Document doc = parser.getDocument();
			String[] Game = new String[12];
			Game[0] = "" + gameid;
			
			//Checks the result of the game
			NodeList result = doc.getElementsByTagName("radiant_win");
			Node res = result.item(0);
			if(res != null){
				if(res.getTextContent().equals("true")){
					Game[1] = "Radiant";
				}
				else{
					Game[1] = "Dire";
				}
			
				//Gathers all of the heroes in the game and adds them to the array Game, first 5 heroes are Radiant, next 5 are Dire
				NodeList players = doc.getElementsByTagName("player");
				int val = 2;
				for (int i=0; i<players.getLength(); i++){						
					Node ply = players.item(i);
					NodeList ply1 = ply.getChildNodes();
					for(int j=0; j<ply1.getLength(); j++){
						Node ply1c = ply1.item(j);
						if(ply1c.getNodeName() == "hero_id"){
							Game[val] = ply1c.getTextContent();
							val++;
						}
					}
				}
				
			//Uses the computewins method to insert the appropriate data into the Database	
			computewins(Game);
			
			}
			else{
			}
		}
		catch(Exception e){
			e.printStackTrace(System.err);
		}
	}
	
	
	//Takes an array and uses the beat method to insert data into the database
	public static void computewins(String[] Game){
		
		System.out.println("Game ID :" + Game[0] + " Processed");		
			if (Game[1].equals("Radiant")){
				for(int i=2; i<7; i++){
					for(int j=7; j<12; j++){
						beat(Game[i], Game[j]);		
					}
				}	
				for(int i=2; i<7; i++){
					for(int j=2; j<7; j++){
						wonwith(Game[i], Game[j]);		
					}
				}
				for(int i=7; i<12; i++){
					for(int j=7; j<12; j++){
						lostwith(Game[i], Game[j]);		
					}
				}
			}			
			else{
				for(int i=7; i<12; i++){
					for(int j=2; j<7; j++){
						beat(Game[i], Game[j]);		
					}
				}
				for(int i=2; i<7; i++){
					for(int j=2; j<7; j++){
						lostwith(Game[i], Game[j]);		
					}
				}
				for(int i=7; i<12; i++){
					for(int j=7; j<12; j++){
						wonwith(Game[i], Game[j]);		
					}
				}
			}
	}
	
	//Takes two hero id's and inserts the appropriate data for hero1 beating hero2
	public static void beat(String won, String lost){
		try{
			if (!won.equals("0") && !lost.equals("0") && !won.equals(null) && !lost.equals(null)){
				databaseconnector("UPDATE hero_matchups SET id" + lost + "=id" + lost + "+1 where hero_id =" + won); 
			}		
			else{
			}
		}
		catch(Exception e){
			e.printStackTrace(System.err);
		}
	}
	
	public static void wonwith(String hero1, String hero2){
		try{
			if (!hero1.equals("0") && !hero2.equals("0") && !hero1.equals(null) && !hero2.equals(null)){
				databaseconnector("UPDATE hero_synergy SET id" + hero2 + "=id" + hero2 + "+1 where hero_id =" + hero1); 
			}		
			else{
			}
		}
		catch(Exception e){
			e.printStackTrace(System.err);
		}
	}
	
	public static void lostwith(String hero1, String hero2){
		try{
			if (!hero1.equals("0") && !hero2.equals("0") && !hero1.equals(null) && !hero2.equals(null)){
				databaseconnector("UPDATE hero_countersynergy SET id" + hero2 + "=id" + hero2 + "+1 where hero_id =" + hero1); 
			}		
			else{
			}
		}
		catch(Exception e){
			e.printStackTrace(System.err);
		}
	}
	
	public static void fillaverages(){
		double[][] averages = new double[111][2];
		for(int i=0; i<111; i++){
			double[][] currenthero = DatabaseManager.getparticularhero(i+1);
			double currentaverage = 0;
			for(int j=0; j<111; j++){
				currentaverage = currentaverage + currenthero[j][0];
			}
			averages[i][0] = i+1;
			averages[i][1] = (currentaverage/109);
		}
		
		for(int k=0; k<111; k++){
			double id = averages[k][0];
			double wr = averages[k][1];
			databaseconnector("INSERT INTO hero_average (hero_id, win_rate) "
							+ "VALUES(" + id + ", " + wr + ")");
		}
	}
	
	
	public static void parsehourlygames(int gameid){
		
		//Early game played on 6.84 - 1438045485, 1438049040, 1438052640, 1438056240
				
		try{
			
			//Initiates the parser and defines variables required
			DOMParser parser = new DOMParser();
			parser.parse("https://api.steampowered.com/IDOTA2Match_570/GetMatchDetails/V001/?match_id=" + gameid + "&format=XML&key=F132852481FC966F6B0185C7EA6BE5A3");
			Document doc = parser.getDocument();
			String[] Game = new String[12];
			Game[0] = "" + gameid;
			String dbname = "";
			int hour1 = 1430486585;
			int hour2 = 1430490185;  
			int hour3 = 1430493785;
			int hour4 = 1430497385;
			int hour5 = 1430500985;
			
			NodeList result = doc.getElementsByTagName("start_time");
			Node res = result.item(0);
			if(res != null && res.getTextContent() != null && res.getTextContent() != ""){
				if(hour1 <= Integer.parseInt(res.getTextContent()) && hour2 > Integer.parseInt(res.getTextContent())){
					dbname = "hour1_matchups";
				}
				else if(hour2 <= Integer.parseInt(res.getTextContent()) && hour3 > Integer.parseInt(res.getTextContent())){
					dbname = "hour2_matchups";
				}
				else if(hour3 <= Integer.parseInt(res.getTextContent()) && hour4 > Integer.parseInt(res.getTextContent())){
					dbname = "hour3_matchups";
				}
				else if(hour4 <= Integer.parseInt(res.getTextContent()) && hour5 > Integer.parseInt(res.getTextContent())){
					dbname = "hour4_matchups";
				}
				else{
					System.out.println("Game " + gameid + " not in time span - " + Integer.parseInt(res.getTextContent()));
					return;
				}}
			else{
				return;
			}

			
			//Checks the result of the game
			NodeList result1 = doc.getElementsByTagName("radiant_win");
			Node res1 = result1.item(0);
			if(res1 != null){
				if(res1.getTextContent().equals("true")){
					Game[1] = "Radiant";
				}
				else{
					Game[1] = "Dire";
				}
			}
			
				//Gathers all of the heroes in the game and adds them to the array Game, first 5 heroes are Radiant, next 5 are Dire
				NodeList players = doc.getElementsByTagName("player");
				int val = 2;
				for (int i=0; i<players.getLength(); i++){						
					Node ply = players.item(i);
					NodeList ply1 = ply.getChildNodes();
					for(int j=0; j<ply1.getLength(); j++){
						Node ply1c = ply1.item(j);
						if(ply1c.getNodeName() == "hero_id"){
							Game[val] = ply1c.getTextContent();
							val++;
						}
					}
				}
				
			//Uses the computewins method to insert the appropriate data into the Database	
				System.out.println("Game ID :" + Game[0] + " Processed");		
				if (Game[1].equals("Radiant")){
					for(int i=2; i<7; i++){
						for(int j=7; j<12; j++){
							try{
								if (!Game[i].equals("0") && !Game[j].equals("0") && !Game[i].equals(null) && !Game[j].equals(null)){
									databaseconnector("UPDATE " + dbname + " SET id" + Game[j] + "=id" + Game[j] + "+1 where hero_id =" + Game[i]); 								
								}		
								else{
								}
							}
							catch(Exception e){
								e.printStackTrace(System.err);
							}
						}		
						}
					System.out.println("Radiant Win entered into " + dbname);
					}	
					
							
				else{
					for(int i=7; i<12; i++){
						for(int j=2; j<7; j++){
							try{
								if (!Game[i].equals("0") && !Game[j].equals("0") && !Game[i].equals(null) && !Game[j].equals(null)){
									databaseconnector("UPDATE " + dbname + " SET id" + Game[j] + "=id" + Game[j] + "+1 where hero_id =" + Game[i]); 
								}		
								else{
								}
							}
							catch(Exception e){
								e.printStackTrace(System.err);
							}
						}	
						}
					System.out.println("Dire Win entered into " + dbname);
					}
					
				}

			
			
			catch(IOException e1){
			System.out.println("Practice Game");	
			}
			catch(Exception e){
			e.printStackTrace(System.err);
			}
	}
	
	
}
