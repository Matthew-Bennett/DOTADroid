package PrototypeServer;
import java.sql.*;
import java.util.*;

public class DatabaseManager {
	
		static Connection con = null;
		static int heroid = 83;
		static int[] multiheroes = new int[5];
		
		
		public static void main (String args[]){
			for(int i = 0;i < 5; i++){
				multiheroes[i] = i+1;
			}
			getgrouphero(multiheroes);
			//getparticularhero(1);
		}
		
		/*public static DatabaseConnector(){
			try{			
				con = DriverManager.getConnection("jdbc:mysql://achilles.mcscw3.le.ac.uk:3306/mb508", "mb508", "iledstro");
			}
			
			catch(SQLException e){
				e.printStackTrace();
			}
		}*/
		
		//Rounding method taken from @http://stackoverflow.com/questions/2808535/round-a-double-to-2-decimal-places
		public static double round(double value, int places) {
		    if (places < 0) throw new IllegalArgumentException();

		    long factor = (long) Math.pow(10, places);
		    value = value * factor;
		    long tmp = Math.round(value);
		    return (double) tmp / factor;
		}
		
		public static double[][] getparticularhero(int heroID){
			try{
				
				
				//Get the wins for a hero in a sorted array
				int[][] wins = new int[111][2];
				int[] hero = new int[2];
				con = DriverManager.getConnection("jdbc:mysql://achilles.mcscw3.le.ac.uk:3306/mb508", "mb508", "iledstro");
				Statement s = con.createStatement();
				ResultSet rs = s.executeQuery("SELECT * FROM hero_matchups WHERE hero_id = " + heroID);
				while(rs.next()){
					for(int i = 1; i<112; i++){
						hero[0] = rs.getInt(i+1);
						hero[1] = i;
						wins[i-1][0] = hero[0];
						wins[i-1][1] = hero[1];
					}		
				}		
					
				
				//Get the losses for a hero in a sorted array
				int[][] losses = new int[111][2];
				int[] hero2 = new int[2];
				int count = 0;
				con = DriverManager.getConnection("jdbc:mysql://achilles.mcscw3.le.ac.uk:3306/mb508", "mb508", "iledstro");
				ResultSet rs1 = s.executeQuery("SELECT id" + heroID + " FROM hero_matchups");
				while(rs1.next()){
					count++;
					hero2[0] = rs1.getInt(1);				
					hero2[1] = count;	
					losses[count-1][0] = hero2[0];
					losses[count-1][1] = hero2[1];
				}
				
				//Combine the two arrays into one array with hero win percentages
				double[][] percentheroes = new double[111][2];
				for(int i=0; i<111; i++){
					double win1 = wins[i][0];
					double loss1 = losses[i][0];
					
					if((wins[i][0] + losses[i][0] != 0)){						
						percentheroes[i][0] = round(((win1/(win1+loss1))*100),2);
						percentheroes[i][1] = (i+1);
					}
					
					else{
						
					}
				}
					//System.out.println(percentheroes[0][0] + " " + percentheroes[0][1] + " ----- " + percentheroes[1][0] + " " + percentheroes[1][1]);
					
					return percentheroes;
					
					
				}
				
				catch(SQLException e){
					e.printStackTrace();
				}
				return null;
				
				}
		
		public static double[][] getworstheroes(double[][] heroarray){
			
			//Sorting of a 2d Array found @ http://stackoverflow.com/questions/15452429/java-arrays-sort-2d-array
			Arrays.sort(heroarray, new Comparator<double[]>() {
			    @Override
			    public int compare(double[] o1, double[] o2) {
			        return Double.compare(o1[0], o2[0]);
			    }
			});			
				
			List<Double> worstheroes = new ArrayList<Double>();
			int count = 0;
			
			for(int y=0; y<111; y++){
				if(heroarray[y][1] == 0){
					count++;
				}
				else{
				}
			}
			
			
			for(int m=0; m<13; m++){
				if(heroarray[m][1] != 0.0 && heroarray[m][1] != 24.0 && heroarray[m][1] != 108.0){

				worstheroes.add(heroarray[m][1]);
				worstheroes.add(heroarray[m][0]);
					
				}
					
				else{	
		
				}
			}
			
			double[][] worstheroesarray = new double[10][2];
			for(int i = 0; i<20; i+=2){
				
				worstheroesarray[(i/2)][0] = worstheroes.get(i);
				worstheroesarray[(i/2)][1] = worstheroes.get(i+1);
			}			
			return worstheroesarray;
		}
		
		
		
		public static double[][] getgrouphero(int[] heroIDs){
			try{
				int count = 0;
				double[][] combinedheroes = new double[111][2];
				double[][] hero1 = new double[111][2];
				double[][] hero2 = new double[111][2];
				double[][] hero3 = new double[111][2];
				double[][] hero4 = new double[111][2];
				double[][] hero5 = new double[111][2];
							
				if(heroIDs[0] != 0){
					hero1 = getparticularhero(heroIDs[0]);
					count++;
				}
				if(heroIDs[1] != 0){
					hero2 = getparticularhero(heroIDs[1]);
					count++;
				}
				if(heroIDs[2] != 0){
					hero3 = getparticularhero(heroIDs[2]);
					count++;
				}
				if(heroIDs[3] != 0){
					hero4 = getparticularhero(heroIDs[3]);
					count++;
				}
				if(heroIDs[4] != 0){
					hero5 = getparticularhero(heroIDs[4]);
					count++;
				}
			
				for(int i = 0; i<110; i++){
					if(i+1 == heroIDs[0] || i+1 == heroIDs[1] || i+1 == heroIDs[2] || i+1 == heroIDs[3] || i+1 == heroIDs[4]){
						combinedheroes[i][0] = 100;
						combinedheroes[i][1] = i+1;
					}
					
					else{
						combinedheroes[i][0] = round(((hero1[i][0] + hero2[i][0] + hero3[i][0] + hero4[i][0] + hero5[i][0])/(count)),2);
						combinedheroes[i][1] = i+1;
						//System.out.println(combinedheroes[i][0] + ", " + combinedheroes[i][1]);
					}
				}
				double[][] final1 = new double[10][2];
				final1 = getworstheroes(combinedheroes);
				/*for(int i=0; i<10;i++){
				System.out.println(final1[i][0] + "," + final1[i][1]);
				}*/
				return final1;
			}
			catch(Exception e){
				e.printStackTrace();
			}
			return null;
		}
		
		
		public static String getheroname(int heroid){
			String heroname = "";
			switch (heroid){
            case  1: heroname = "Antimage"; break;
            case 2: heroname = "Axe"; break;
            case 3: heroname = "Bane"; break;
            case 4: heroname = "Bloodseeker"; break;
            case 5: heroname = "Crystal Maiden"; break;
            case 6: heroname = "Drow Ranger"; break;
            case 7: heroname = "Earthshaker"; break;
            case 8: heroname = "Juggernaught"; break;
            case 9: heroname = "Mirana"; break;
            case 10: heroname = "Morphling"; break;
            case 11: heroname = "Shadow Fiend"; break;
            case 12: heroname = "Phantom Lancer"; break;
            case 13: heroname = "Puck"; break;
            case 14: heroname = "Pudge"; break;
            case 15: heroname = "Razor"; break;
            case 16: heroname = "Sand King"; break;
            case 17: heroname = "Storm Spirit"; break;
            case 18: heroname = "Sven"; break;
            case 19: heroname = "Tiny"; break;
            case 20: heroname = "Vengeful Spirit"; break;
            case 21: heroname = "Windrunner"; break;
            case 22: heroname = "Zeus"; break;
            case 23: heroname = "Kunkka"; break;
            case 25: heroname = "Lina"; break;
            case 26: heroname = "Lion"; break;
            case 27: heroname = "Shadow Shaman"; break;
            case 28: heroname = "Slardar"; break;
            case 29: heroname = "Tidehunter"; break;
            case 30: heroname = "Witch Doctor"; break;
            case 31: heroname = "Lich"; break;
            case 32: heroname = "Riki"; break;
            case 33: heroname = "Enigma"; break;
            case 34: heroname = "Tinker"; break;
            case 35: heroname = "Sniper"; break;
            case 36: heroname = "Necrophos"; break;
            case 37: heroname = "Warlock"; break;
            case 38: heroname = "Beastmaster"; break;
            case 39: heroname = "Queen of Pain"; break;
            case 40: heroname = "Venomancer"; break;
            case 41: heroname = "Faceless Void"; break;
            case 42: heroname = "Wraith King"; break;
            case 43: heroname = "Death Prophet"; break;
            case 44: heroname = "Phantom Assassin"; break;
            case 45: heroname = "Pugna"; break;
            case 46: heroname = "Templar Assassin"; break;
            case 47: heroname = "Viper"; break;
            case 48: heroname = "Luna"; break;
            case 49: heroname = "Dragon Knight"; break;
            case 50: heroname = "Dazzle"; break;
            case 51: heroname = "Clockwerk"; break;
            case 52: heroname = "Leshrac"; break;
            case 53: heroname = "Nature's Prohpet"; break;
            case 54: heroname = "Lifestealer"; break;
            case 55: heroname = "Dark Seer"; break;
            case 56: heroname = "Clinkz"; break;
            case 57: heroname = "Omniknight"; break;
            case 58: heroname = "Enchantress"; break;
            case 59: heroname = "Huskar"; break;
            case 60: heroname = "Nightstalker"; break;
            case 61: heroname = "Broodmother"; break;
            case 62: heroname = "Bounty Hunter"; break;
            case 63: heroname = "Weaver"; break;
            case 64: heroname = "Jakiro"; break;
            case 65: heroname = "Batrider"; break;
            case 66: heroname = "Chen"; break;
            case 67: heroname = "Spectre"; break;
            case 68: heroname = "Doom"; break;
            case 69: heroname = "Ancient Apparition"; break;
            case 70: heroname = "Ursa"; break;
            case 71: heroname = "Spirit Breaker"; break;
            case 72: heroname = "Gyrocopter"; break;
            case 73: heroname = "Alchemist"; break;
            case 74: heroname = "Invoker"; break;
            case 75: heroname = "Silencer"; break;
            case 76: heroname = "Outworld Devourer"; break;
            case 77: heroname = "Lycan"; break;
            case 78: heroname = "Brewmaster"; break;
            case 79: heroname = "Shadow Demon"; break;
            case 80: heroname = "Lone Druid"; break;
            case 81: heroname = "Chaos Knight"; break;
            case 82: heroname = "Meepo"; break;
            case 83: heroname = "Treant Protector"; break;
            case 84: heroname = "Ogre Magi"; break;
            case 85: heroname = "Undying"; break;
            case 86: heroname = "Rubick"; break;
            case 87: heroname = "Disruptor"; break;
            case 88: heroname = "Nyx Assassin"; break;
            case 89: heroname = "Naga Siren"; break;
            case 90: heroname = "Keeper of the Light"; break;
            case 91: heroname = "Io"; break;
            case 92: heroname = "Visage"; break;
            case 93: heroname = "Slark"; break;
            case 94: heroname = "Medusa"; break;
            case 95: heroname = "Troll Warlord"; break;
            case 96: heroname = "Centaur Warrunner"; break;
            case 97: heroname = "Magnus"; break;
            case 98: heroname = "Timbersaw"; break;
            case 99: heroname = "Bristleback"; break;
            case 100: heroname = "Tusk"; break;
            case 101: heroname = "Skywrath Mage"; break;
            case 102: heroname = "Abaddon"; break;
            case 103: heroname = "Elder Titan"; break;
            case 104: heroname = "Legion Commander"; break;
            case 105: heroname = "Techies"; break;
            case 106: heroname = "Ember Spirit"; break;
            case 107: heroname = "Earth Spirit"; break;
            case 109: heroname = "Terrorblade"; break;
            case 110: heroname = "Phoenix"; break;
            case 111: heroname = "Oracle"; break;
			}
			return heroname;
		}
}
