package PrototypeServer;
import java.sql.*;
import java.util.*;
import java.lang.Math;

public class DatabaseManager {
	
		static Connection con = null;
		static int heroid = 83;
		static int[] multiheroes = new int[5];
		//Install http://download.eclipse.org/webtools/updates/
		
		public static void main (String args[]){
			/*for(int i = 0;i < 1; i++){
				multiheroes[i] = i+1;
			}
			//getgrouphero(multiheroes);
			getgroupheroban(multiheroes);*/
			//getAllHeroes();
//			int[] test1 = new int[]{1,2,3,4,5};
//			int[] test2 = new int[]{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};
//			win(test1, test2);
//			getgroupherofull(test1, test2);
			
//			for(int i = 1; i<112; i++){
//				System.out.print("(" + i + "),");
//			}
			getstandarddev(14);
		}
		
		//Rounding method taken from @http://stackoverflow.com/questions/2808535/round-a-double-to-2-decimal-places
		public static double round(double value, int places) {
		    if (places < 0) throw new IllegalArgumentException();

		    long factor = (long) Math.pow(10, places);
		    value = value * factor;
		    long tmp = Math.round(value);
		    return (double) tmp / factor;
		}
		
		//Takes a hero id and returns an array of that hero's matchups against all other heroes
		public static double[][] getparticularhero(int heroID){
			try{
						
				//Get the wins for a hero in a sorted array
				int[][] wins = new int[111][2];
				int[] hero = new int[2];
				con = DriverManager.getConnection("jdbc:mysql://mysql.mcscw3.le.ac.uk:3306/mb508", "mb508", "iledstro");
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
				ResultSet rs1 = s.executeQuery("SELECT id" + heroID + " FROM hero_matchups");
				while(rs1.next()){
					count++;
					hero2[0] = rs1.getInt(1);				
					hero2[1] = count;	
					losses[count-1][0] = hero2[0];
					losses[count-1][1] = hero2[1];
				}
				
				//Get the wins with a hero in a sorted array
				int[][] synwins = new int[111][2];
				int[] synhero = new int[2];
				ResultSet rs2 = s.executeQuery("SELECT * FROM hero_synergy WHERE hero_id = " + heroID);
				while(rs2.next()){
					for(int i = 1; i<112; i++){
						synhero[0] = rs2.getInt(i+1);
						synhero[1] = i;
						synwins[i-1][0] = synhero[0];
						synwins[i-1][1] = synhero[1];
					}		
				}	
			
				//Get the losses with a hero in a sorted array
				int[][] csynwins = new int[111][2];
				int[] csynhero = new int[2];
				ResultSet rs3 = s.executeQuery("SELECT * FROM hero_countersynergy WHERE hero_id = " + heroID);
				while(rs3.next()){
					for(int i = 1; i<112; i++){
						csynhero[0] = rs3.getInt(i+1);
						csynhero[1] = i;
						csynwins[i-1][0] = csynhero[0];
						csynwins[i-1][1] = csynhero[1];
					}		
				}	
				
				//Comebine the two versus arrays into one
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
				
				//Combine the two synergy arrays into one
				double[][] synpercentheroes = new double[111][2];
				for(int i=0; i<111; i++){
					double synwin1 = synwins[i][0];
					double csynwin1 = csynwins[i][0];				
					if((synwins[i][0] + csynwins[i][0] != 0)){						
						synpercentheroes[i][0] = round(((synwin1/(synwin1+csynwin1))*100),2);
						synpercentheroes[i][1] = (i+1);
					}
					else{						
					}
				}
				
				//Combine the versus and synergy arrays into one
				double[][] finalarray = new double[111][2];
				for(int i=0; i<111; i++){
					double versus1 = percentheroes[i][0];
					double synergy1 = synpercentheroes[i][0];				
					if((percentheroes[i][0] + synpercentheroes[i][0] != 0)){						
						finalarray[i][0] = round((((synergy1+versus1))/2),2);
						finalarray[i][1] = (i+1);
					}
					else{						
					}
				}
					con.close();
					return finalarray;			
			}
				
			catch(SQLException e){
				e.printStackTrace();
				
			}
			
			return null;
		}
		
		//Takes a hero's array from the database and returns the worse ten heroes for them to play, takes into account heroes already picked and such
		public static double[][] getworstheroes(double[][] heroarray, int[] bannedheroes){
			
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
			
			for(int m=0; m<20; m++){
				if(heroarray[m][1] != 0.0 &&
				   heroarray[m][1] != 24.0 &&
				   heroarray[m][1] != 108.0 &&
				   heroarray[m][1] != bannedheroes[0] &&
				   heroarray[m][1] != bannedheroes[1] &&
				   heroarray[m][1] != bannedheroes[2] &&
				   heroarray[m][1] != bannedheroes[3] &&
				   heroarray[m][1] != bannedheroes[4] &&
				   heroarray[m][1] != bannedheroes[5] &&
				   heroarray[m][1] != bannedheroes[6] &&
				   heroarray[m][1] != bannedheroes[7] &&
				   heroarray[m][1] != bannedheroes[8] &&
				   heroarray[m][1] != bannedheroes[9] &&
				   heroarray[m][1] != bannedheroes[10] &&
				   heroarray[m][1] != bannedheroes[11] &&
				   heroarray[m][1] != bannedheroes[12] &&
				   heroarray[m][1] != bannedheroes[13] &&
				   heroarray[m][1] != bannedheroes[14] &&
				   heroarray[m][1] != bannedheroes[15] &&
				   heroarray[m][1] != bannedheroes[16] &&
				   heroarray[m][1] != bannedheroes[17] &&
				   heroarray[m][1] != bannedheroes[18] &&
				   heroarray[m][1] != bannedheroes[19]	
		   ){
					worstheroes.add(heroarray[m][1]);
					worstheroes.add(heroarray[m][0]);				
				}	
				else{	
				}
			}
			
			double[][] worstheroesarray = new double[10][2];
			for(int i = 0; i<20; i+=2){			
				worstheroesarray[(i/2)][0] = worstheroes.get(i);
				worstheroesarray[(i/2)][1] = round(worstheroes.get(i+1),2);
			}			
			return worstheroesarray;
		}
		
		//Takes a hero's array from the database and returns the worse ten heroes for them to play, takes into account heroes already picked and such
				public static double[][] getworstheroesfull(double[][] heroarray, int[] bannedheroes){
					
					//Sorting of a 2d Array found @ http://stackoverflow.com/questions/15452429/java-arrays-sort-2d-array
					Arrays.sort(heroarray, new Comparator<double[]>() {
					    @Override
					    public int compare(double[] o1, double[] o2) {
					        return Double.compare(o1[0], o2[0]);
					    }
					});
					
					List<Double> worstheroes = new ArrayList<Double>();
					
					for(int m=0; m<110; m++){
						if(heroarray[m][1] != 0.0 &&
						   heroarray[m][1] != 24.0 &&
						   heroarray[m][1] != 108.0 &&
						   heroarray[m][1] != bannedheroes[0] &&
						   heroarray[m][1] != bannedheroes[1] &&
						   heroarray[m][1] != bannedheroes[2] &&
						   heroarray[m][1] != bannedheroes[3] &&
						   heroarray[m][1] != bannedheroes[4] &&
						   heroarray[m][1] != bannedheroes[5] &&
						   heroarray[m][1] != bannedheroes[6] &&
						   heroarray[m][1] != bannedheroes[7] &&
						   heroarray[m][1] != bannedheroes[8] &&
						   heroarray[m][1] != bannedheroes[9] &&
						   heroarray[m][1] != bannedheroes[10] &&
						   heroarray[m][1] != bannedheroes[11] &&
						   heroarray[m][1] != bannedheroes[12] &&
						   heroarray[m][1] != bannedheroes[13] &&
						   heroarray[m][1] != bannedheroes[14] &&
						   heroarray[m][1] != bannedheroes[15] &&
						   heroarray[m][1] != bannedheroes[16] &&
						   heroarray[m][1] != bannedheroes[17] &&
						   heroarray[m][1] != bannedheroes[18] &&
						   heroarray[m][1] != bannedheroes[19]	
				   ){
							worstheroes.add(heroarray[m][1]);
							worstheroes.add(heroarray[m][0]);				
						}	
						else{	
						}
					}
					
					double[][] worstheroesarray = new double[110][2];
					for(int i = 0; i<111; i+=2){			
						worstheroesarray[i/2][0] = worstheroes.get(i);
						worstheroesarray[i/2][1] = round(worstheroes.get(i+1),2);
					}
//					System.out.print("WHA = "+ worstheroesarray[0][0] + "," + worstheroesarray[0][1] + " --- " + worstheroesarray[1][0] + "," + worstheroesarray[1][1]+ " --- " + worstheroesarray[2][0] + "," + worstheroesarray[2][1]+ " --- " + worstheroesarray[3][0] + "," + worstheroesarray[3][1]);
					return worstheroesarray;
				}
		
		//Takes a hero's array from the database and returns the worse ten heroes for them to play, takes into account heroes already picked and such
		public static double[][] getbestheroes(double[][] heroarray){
					
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
			
			
			for(int m=109; m>98; m--){
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
				
		public static double[][] getgrouphero(int[] heroIDs, int[] bannedheroIDs){
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
					}
				}
				double[][] final1 = new double[10][2];
				final1 = getworstheroes(combinedheroes, bannedheroIDs);
				
				for(int i=0; i < bannedheroIDs.length; i++){
					if(bannedheroIDs[i] != 0){
						for(int j=0; j < final1.length; j++ ){
							if(final1[j][1] == bannedheroIDs[i]){
								final1[j][0] = 0;
								final1[j][1] = 0;
							}
						}
					}
				}
				return final1;
			}
			catch(Exception e){
				e.printStackTrace();
			}
			
			return null;
		}
		
		public static double[][] getgroupherofull(int[] heroIDs, int[] bannedheroIDs){
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
					}
				}
				double[][] final1 = new double[111][2];
				final1 = getworstheroesfull(combinedheroes, bannedheroIDs);
				
				for(int i=0; i < bannedheroIDs.length; i++){
					if(bannedheroIDs[i] != 0){
						for(int j=0; j < final1.length; j++ ){
							if(final1[j][1] == bannedheroIDs[i]){
								final1[j][0] = 0;
								final1[j][1] = 0;
							}
						}
					}
				}
				return final1;
			}
			catch(Exception e){
				e.printStackTrace();
			}
			
			return null;
		}
		
		public static double[][] getgroupheroban(int[] heroIDs){
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
						
					}
					
					else{
						combinedheroes[i][0] = round(((hero1[i][0] + hero2[i][0] + hero3[i][0] + hero4[i][0] + hero5[i][0])/(count)),2);
						combinedheroes[i][1] = i+1;
					}
				}
				double[][] final1 = new double[10][2];
				final1 = getbestheroes(combinedheroes);
				System.out.println(final1[0][0] + " " + final1[0][1]);
				return final1;
			}
			catch(Exception e){
				e.printStackTrace();
			}
			return null;
		}
		
		//Takes a heroID and outputs the respective hero name
		public static String getheroname(int heroid){
			String heroname = "";
			switch (heroid){
            case 1: heroname = "Antimage"; break;
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
		
		public static List<String> getAllHeroes(){
			List<String> allheroes = new ArrayList();
			for(int i = 1; i <= 111; i++){
				if(getheroname(i).equals("")){
					allheroes.add("NOHERO");
					
				}				
				else{
					allheroes.add(getheroname(i));
				}
			}
			return allheroes;
			}
		
		public static String[] win(int[] fheroIDs, int[] eheroIDs){
			boolean win = false;
			String[] result = new String[2];
			double perc = 0;
			double total = 0;
			double[][] hero1 = getparticularhero(fheroIDs[0]);
			double[][] hero2 = getparticularhero(fheroIDs[1]);
			double[][] hero3 = getparticularhero(fheroIDs[2]);
			double[][] hero4 = getparticularhero(fheroIDs[3]);
			double[][] hero5 = getparticularhero(fheroIDs[4]);
			
			for(int i = 0; i < 5; i++){
				for(int k =0; k <= 110; k++){
					if(hero1[k][1] == eheroIDs[i]){
						total = total + hero1[k][0];
					}
					if(hero2[k][1] == eheroIDs[i]){
						total = total + hero2[k][0];
					}
					if(hero3[k][1] == eheroIDs[i]){
						total = total + hero3[k][0];					
					}
					if(hero4[k][1] == eheroIDs[i]){
						total = total + hero4[k][0];						
					}
					if(hero5[k][1] == eheroIDs[i]){
						total = total + hero5[k][0];						
					}
				}
			}
			
			perc = round((total)/25,2);
			if(perc >= 50){
				win = true;
			}
			result[0] = String.valueOf(win);
			result[1] = String.valueOf(perc);;
			return result;
			
		}
		
		public static double[][] getaverages(int[] bans){
			double[][] result = new double[111][2];	
			try{
							
				con = DriverManager.getConnection("jdbc:mysql://mysql.mcscw3.le.ac.uk:3306/mb508", "mb508", "iledstro");
				Statement s = con.createStatement();
				ResultSet rs = s.executeQuery("SELECT win_rate FROM hero_average");
				while(rs.next()){
					for(int i = 1; i<112; i++){
						rs.absolute(i);
						result[i-1][0] = rs.getInt(1);
						result[i-1][1] = i;
					}		
				}
				
				for(int k=0; k<111; k++){
					for(int l=0; l< bans.length; l++){
						if(result[k][1] == bans[l]){
							result[k][0] = 0;
							result[k][1] = 0;
						}						
					}					
				}
				//Sorting of a 2d Array found @ http://stackoverflow.com/questions/15452429/java-arrays-sort-2d-array
				Arrays.sort(result, new Comparator<double[]>() {
				    @Override
				    public int compare(double[] o1, double[] o2) {
				        return Double.compare(o2[0], o1[0]);
				    }
				});
//				System.out.println("Results = " + result[0][0] + ", " + result[0][1] + " - " + result[1][0] + ", " + result[1][1] + " - " + result[2][0] + ", " +  result[2][1] + " - " +
//												+ result[108][0] + ", " + result[108][1] + " - " + result[109][0] + ", " + result[109][1] + " - " + result[110][0] + ", " +  result[110][1]);
				con.close();
				return result;
			}
			catch(SQLException e){
				e.printStackTrace();
			}
			return result;
		}
		
		public static double getaverage(int hero){
			double result = 0;	
			try{
							
				con = DriverManager.getConnection("jdbc:mysql://mysql.mcscw3.le.ac.uk:3306/mb508", "mb508", "iledstro");
				Statement s = con.createStatement();
				ResultSet rs = s.executeQuery("SELECT win_rate FROM hero_average WHERE hero_id=" + hero);
				while(rs.next()){
					result = rs.getInt("win_rate");
				}
				System.out.println("Result = " + result);
				return result;
			}
			
			catch(SQLException e){
				e.printStackTrace();
			}
			return result;
		}
		
		public static double[][] bestteammate(int hero){
			double[][] result = new double[1][2];	
			try{
				
				con = DriverManager.getConnection("jdbc:mysql://mysql.mcscw3.le.ac.uk:3306/mb508", "mb508", "iledstro");
				Statement s = con.createStatement();			
				
				//Get the wins with a hero in a sorted array
				int[][] synwins = new int[111][2];
				int[] synhero = new int[2];
				ResultSet rs2 = s.executeQuery("SELECT * FROM hero_synergy WHERE hero_id = " + hero);
				while(rs2.next()){
					for(int i = 1; i<112; i++){
						synhero[0] = rs2.getInt(i+1);
						synhero[1] = i;
						synwins[i-1][0] = synhero[0];
						synwins[i-1][1] = synhero[1];
					}		
				}	
			
				//Get the losses with a hero in a sorted array
				int[][] csynwins = new int[111][2];
				int[] csynhero = new int[2];
				ResultSet rs3 = s.executeQuery("SELECT * FROM hero_countersynergy WHERE hero_id = " + hero);
				while(rs3.next()){
					for(int i = 1; i<112; i++){
						csynhero[0] = rs3.getInt(i+1);
						csynhero[1] = i;
						csynwins[i-1][0] = csynhero[0];
						csynwins[i-1][1] = csynhero[1];
					}		
				}	
		
				//Combine the two synergy arrays into one
				double[][] synpercentheroes = new double[111][2];
				for(int i=0; i<111; i++){
					double synwin1 = synwins[i][0];
					double csynwin1 = csynwins[i][0];				
					if((synwins[i][0] + csynwins[i][0] != 0)){						
						synpercentheroes[i][0] = round(((synwin1/(synwin1+csynwin1))*100),2);
						synpercentheroes[i][1] = (i+1);
					}
					else{						
					}
				}
				
				//Sorting of a 2d Array found @ http://stackoverflow.com/questions/15452429/java-arrays-sort-2d-array
				Arrays.sort(synpercentheroes, new Comparator<double[]>() {
				    @Override
				    public int compare(double[] o1, double[] o2) {
				        return Double.compare(o1[0], o2[0]);
				    }
				});
			
				result[0][0] = synpercentheroes[110][0];
				result[0][1] = synpercentheroes[110][1];
				return result;
			}
			
			
			
			catch(SQLException e){
				e.printStackTrace();
			}
			return result;
		}
		
		public static double[][] worstteammate(int hero){
			double[][] result = new double[1][2];
			try{
							
				con = DriverManager.getConnection("jdbc:mysql://mysql.mcscw3.le.ac.uk:3306/mb508", "mb508", "iledstro");
				Statement s = con.createStatement();			
				
				//Get the wins with a hero in a sorted array
				int[][] synwins = new int[111][2];
				int[] synhero = new int[2];
				ResultSet rs2 = s.executeQuery("SELECT * FROM hero_synergy WHERE hero_id = " + hero);
				while(rs2.next()){
					for(int i = 1; i<112; i++){
						synhero[0] = rs2.getInt(i+1);
						synhero[1] = i;
						synwins[i-1][0] = synhero[0];
						synwins[i-1][1] = synhero[1];
					}		
				}	
			
				//Get the losses with a hero in a sorted array
				int[][] csynwins = new int[111][2];
				int[] csynhero = new int[2];
				ResultSet rs3 = s.executeQuery("SELECT * FROM hero_countersynergy WHERE hero_id = " + hero);
				while(rs3.next()){
					for(int i = 1; i<112; i++){
						csynhero[0] = rs3.getInt(i+1);
						csynhero[1] = i;
						csynwins[i-1][0] = csynhero[0];
						csynwins[i-1][1] = csynhero[1];
					}		
				}	
		
				//Combine the two synergy arrays into one
				double[][] synpercentheroes = new double[111][2];
				for(int i=0; i<111; i++){
					double synwin1 = synwins[i][0];
					double csynwin1 = csynwins[i][0];				
					if((synwins[i][0] + csynwins[i][0] != 0)){						
						synpercentheroes[i][0] = round(((synwin1/(synwin1+csynwin1))*100),2);
						synpercentheroes[i][1] = (i+1);
					}
					else{						
					}
				}
				
				//Sorting of a 2d Array found @ http://stackoverflow.com/questions/15452429/java-arrays-sort-2d-array
				Arrays.sort(synpercentheroes, new Comparator<double[]>() {
				    @Override
				    public int compare(double[] o1, double[] o2) {
				        return Double.compare(o1[0], o2[0]);
				    }
				});
				System.out.println("[" + synpercentheroes[0][0] + "," + synpercentheroes[0][1] + "]" + 
								   "[" + synpercentheroes[1][0] + "," + synpercentheroes[1][1] + "]" + 
								   "[" + synpercentheroes[90][0] + "," + synpercentheroes[90][1] + "]" + 
								   "[" + synpercentheroes[110][0] + "," + synpercentheroes[110][1] + "]");
				
				result[0][0] = synpercentheroes[2][0];
				result[0][1] = synpercentheroes[2][1];
				return result;
			}
			
			
			
			catch(SQLException e){
				e.printStackTrace();
			}
			return result;
		}
		
		public static double[][] bestagainst(int hero){
			double[][] result = new double[1][2];
			try{
							
				//Get the wins for a hero in a sorted array
				int[][] wins = new int[111][2];
				int[] hero1 = new int[2];
				con = DriverManager.getConnection("jdbc:mysql://mysql.mcscw3.le.ac.uk:3306/mb508", "mb508", "iledstro");
				Statement s = con.createStatement();
				ResultSet rs = s.executeQuery("SELECT * FROM hero_matchups WHERE hero_id = " + hero);
				while(rs.next()){
					for(int i = 1; i<112; i++){
						hero1[0] = rs.getInt(i+1);
						hero1[1] = i;
						wins[i-1][0] = hero1[0];
						wins[i-1][1] = hero1[1];
					}		
				}		
				
				//Get the losses for a hero in a sorted array
				int[][] losses = new int[111][2];
				int[] hero2 = new int[2];
				int count = 0;
				ResultSet rs1 = s.executeQuery("SELECT id" + hero + " FROM hero_matchups");
				while(rs1.next()){
					count++;
					hero2[0] = rs1.getInt(1);				
					hero2[1] = count;	
					losses[count-1][0] = hero2[0];
					losses[count-1][1] = hero2[1];							
				}	
				
				//Comebine the two versus arrays into one
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
					
				//Sorting of a 2d Array found @ http://stackoverflow.com/questions/15452429/java-arrays-sort-2d-array
				Arrays.sort(percentheroes, new Comparator<double[]>() {
				    @Override
				    public int compare(double[] o1, double[] o2) {
				        return Double.compare(o1[0], o2[0]);
				    }
				});
				System.out.println("[" + percentheroes[0][0] + "," + percentheroes[0][1] + "]" + 
								   "[" + percentheroes[1][0] + "," + percentheroes[1][1] + "]" + 
								   "[" + percentheroes[90][0] + "," + percentheroes[90][1] + "]" + 
								   "[" + percentheroes[110][0] + "," + percentheroes[110][1] + "]");
				
				result[0][0] = percentheroes[110][0];
				result[0][1] = percentheroes[110][1];
				return result;
				
			}
			
			catch(SQLException e){
				e.printStackTrace();
			}
			return result;
		}
		
		public static double[][] worstagainst(int hero){
			double[][] result = new double[1][2];
			try{
							
				//Get the wins for a hero in a sorted array
				int[][] wins = new int[111][2];
				int[] hero1 = new int[2];
				con = DriverManager.getConnection("jdbc:mysql://mysql.mcscw3.le.ac.uk:3306/mb508", "mb508", "iledstro");
				Statement s = con.createStatement();
				ResultSet rs = s.executeQuery("SELECT * FROM hero_matchups WHERE hero_id = " + hero);
				while(rs.next()){
					for(int i = 1; i<112; i++){
						hero1[0] = rs.getInt(i+1);
						hero1[1] = i;
						wins[i-1][0] = hero1[0];
						wins[i-1][1] = hero1[1];
					}		
				}		
				
				//Get the losses for a hero in a sorted array
				int[][] losses = new int[111][2];
				int[] hero2 = new int[2];
				int count = 0;
				ResultSet rs1 = s.executeQuery("SELECT id" + hero + " FROM hero_matchups");
				while(rs1.next()){
					count++;
					hero2[0] = rs1.getInt(1);				
					hero2[1] = count;	
					losses[count-1][0] = hero2[0];
					losses[count-1][1] = hero2[1];							
				}	
				
				//Comebine the two versus arrays into one
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
					
				//Sorting of a 2d Array found @ http://stackoverflow.com/questions/15452429/java-arrays-sort-2d-array
				Arrays.sort(percentheroes, new Comparator<double[]>() {
				    @Override
				    public int compare(double[] o1, double[] o2) {
				        return Double.compare(o1[0], o2[0]);
				    }
				});
				System.out.println("[" + percentheroes[0][0] + "," + percentheroes[0][1] + "]" + 
								   "[" + percentheroes[1][0] + "," + percentheroes[1][1] + "]" + 
								   "[" + percentheroes[2][0] + "," + percentheroes[2][1] + "]" + 
								   "[" + percentheroes[3][0] + "," + percentheroes[3][1] + "]");
				
				result[0][0] = percentheroes[3][0];
				result[0][1] = percentheroes[3][1];
				return result;
				
			}
			
			catch(SQLException e){
				e.printStackTrace();
			}
			return result;
		}
		
		public static double[][] nemesis(int hero){
			double[][] result = new double[1][2];	
			try{
							
				//Get the wins for a hero in a sorted array
				int[][] wins = new int[111][2];
				int[] hero1 = new int[2];
				con = DriverManager.getConnection("jdbc:mysql://mysql.mcscw3.le.ac.uk:3306/mb508", "mb508", "iledstro");
				Statement s = con.createStatement();
				ResultSet rs = s.executeQuery("SELECT * FROM hero_matchups WHERE hero_id = " + hero);
				while(rs.next()){
					for(int i = 1; i<112; i++){
						hero1[0] = rs.getInt(i+1);
						hero1[1] = i;
						wins[i-1][0] = hero1[0];
						wins[i-1][1] = hero1[1];
					}		
				}		
				
				//Get the losses for a hero in a sorted array
				int[][] losses = new int[111][2];
				int[] hero2 = new int[2];
				int count = 0;
				ResultSet rs1 = s.executeQuery("SELECT id" + hero + " FROM hero_matchups");
				while(rs1.next()){
					count++;
					hero2[0] = rs1.getInt(1);				
					hero2[1] = count;	
					losses[count-1][0] = hero2[0];
					losses[count-1][1] = hero2[1];							
				}	
				
				//Comebine the two versus arrays into one
				double[][] percentheroes = new double[111][2];
				for(int i=0; i<111; i++){
					double win1 = wins[i][0];
					double loss1 = losses[i][0];				
					if((wins[i][0] + losses[i][0] != 0)){						
						percentheroes[i][0] = (win1+loss1);
						percentheroes[i][1] = (i+1);
					}
					else{						
					}
				}
					
				//Sorting of a 2d Array found @ http://stackoverflow.com/questions/15452429/java-arrays-sort-2d-array
				Arrays.sort(percentheroes, new Comparator<double[]>() {
				    @Override
				    public int compare(double[] o1, double[] o2) {
				        return Double.compare(o1[0], o2[0]);
				    }
				});
				System.out.println("[" + percentheroes[3][0] + "," + percentheroes[3][1] + "]" + 
								   "[" + percentheroes[40][0] + "," + percentheroes[40][1] + "]" + 
								   "[" + percentheroes[90][0] + "," + percentheroes[90][1] + "]" + 
								   "[" + percentheroes[110][0] + "," + percentheroes[110][1] + "]");
				
				result[0][0] = percentheroes[110][0];
				result[0][1] = percentheroes[110][1];
				return result;
			}
			
			catch(SQLException e){
				e.printStackTrace();
			}
			return result;
		}
		
		public static double getstandarddev(int heroid){
			double sd = 0;
			try { 
				con = DriverManager.getConnection("jdbc:mysql://mysql.mcscw3.le.ac.uk:3306/mb508", "mb508", "iledstro");
				Statement s = con.createStatement();
				double wins1=0, wins2=0, wins3=0, wins4=0, losses1=0, losses2=0, losses3=0, losses4=0;
				
				//Get first set of data
				ResultSet rs = s.executeQuery("SELECT * FROM hour1_matchups WHERE hero_id = " + heroid);
				while(rs.next()){
					for(int i = 1; i<112; i++){
						wins1 = wins1 + rs.getDouble(i);
					}		
				}		
				
				ResultSet rs1 = s.executeQuery("SELECT id" + heroid + " FROM hour1_matchups");
				while(rs1.next()){
					losses1 = losses1 + rs1.getDouble(1);
				}
				
				//Get second set of data
				ResultSet rs2 = s.executeQuery("SELECT * FROM hour2_matchups WHERE hero_id = " + heroid);
				while(rs2.next()){
					for(int i = 1; i<112; i++){
						wins2 = wins2 + rs2.getDouble(i);
					}		
				}		
				
				ResultSet rs21 = s.executeQuery("SELECT id" + heroid + " FROM hour2_matchups");
				while(rs21.next()){				
					losses2 = losses2 + rs21.getDouble(1);
				}
				
				//Get third set of data
				ResultSet rs3 = s.executeQuery("SELECT * FROM hour3_matchups WHERE hero_id = " + heroid);
				while(rs3.next()){
					for(int i = 1; i<112; i++){
						wins3 = wins3 + rs3.getDouble(i);
					}		
				}		
				
				ResultSet rs31 = s.executeQuery("SELECT id" + heroid + " FROM hour3_matchups");
				while(rs31.next()){
					losses3 = losses3 + rs31.getDouble(1);			
				}
				
				//Get fourth set of data
				ResultSet rs4 = s.executeQuery("SELECT * FROM hour4_matchups WHERE hero_id = " + heroid);
				while(rs4.next()){
					for(int i = 1; i<112; i++){
						wins4 = wins4 + rs4.getDouble(i);
					}		
				}		
				
				ResultSet rs41 = s.executeQuery("SELECT id" + heroid + " FROM hour4_matchups");
				while(rs41.next()){
					losses4 = losses4 + rs41.getDouble(1);
				}
				double h1wr = (wins1/(wins1 + losses1)) * 100;
				double h2wr = (wins2/(wins2 + losses2)) * 100;
				System.out.println("Win Rate 2 = " + h2wr);
				double h3wr = (wins3 / (wins3 + losses3)) * 100;
				System.out.println("Win Rate 3 = " + h3wr);
				double h4wr = (wins4 / (wins4 + losses4)) * 100;
				System.out.println("Win Rate 4 = " + h4wr);
				double mwr = (h1wr + h2wr + h3wr + h4wr)/4;
				sd = round(Math.sqrt((h1wr - mwr)*(h1wr - mwr) + (h2wr - mwr)*(h2wr - mwr) + (h3wr - mwr)*(h3wr - mwr) + (h4wr - mwr)*(h4wr - mwr)/4),2);
				System.out.println("Standard Deviation = " + sd);
				return sd;
			}
			catch(Exception e){
				e.printStackTrace();
			}
			return sd;
		}
}
			
