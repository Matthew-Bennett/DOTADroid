package PrototypeServer;
import java.util.*;

public class DraftGameAI {
	
	public static void main (String args[]){
//		int[] testheroes = new int[5];
//		int[] testbans = new int[20];
//		testheroes[0] = randomhero();
//		testheroes[1] = randomhero();
//		for(int i = 0; i<10; i++){
//			testbans[i] = randomhero();
//		}
//		besthero(testheroes, testbans);
//		int[] test1 = new int[5];
//		int[] test2 = new int[20];
//		for(int i=1; i<6; i++){
//			test1[i-1] = i;
//			test2[i-1] = i+5;
//			test2[i+4] = i+10;
//			test2[i+9] = i+15;
//			test2[i+14] = i+20;
//		}
//		smartpick(test1, test2);
		double count = 0;
		double totale = 0;
		double totalm = 0;
		double totalh = 0;
		while(count < 1000){
			totale = totale + gametesteasy();
			totalm = totalm + gametestmedium();
			totalh = totalh + gametesthard();
			count++;
		}
		System.out.print("Easy win rate: " + totale/count);
		System.out.print("Medium win rate: " + totalm/count);
		System.out.print("Hard win rate: " + totalh/count);
	}
	
	//Rounding method taken from @http://stackoverflow.com/questions/2808535/round-a-double-to-2-decimal-places
			public static double round(double value, int places) {
			    if (places < 0) throw new IllegalArgumentException();

			    long factor = (long) Math.pow(10, places);
			    value = value * factor;
			    long tmp = Math.round(value);
			    return (double) tmp / factor;
			}
	
	public static int randomhero(){
		
		List<String> allheroes = DatabaseManager.getAllHeroes();
		Random random = new Random();
		
		int heroid = random.nextInt(allheroes.size());
		//System.out.println("List size: " + allheroes.size());
		
		if(heroid != 0 && heroid != 24 && heroid != 108){
			return heroid;
		}
		
		else{
			randomhero();
		}
		
		return randomhero();
	}
	
	public static List<Integer> tenrandomheroes(){
		List<Integer> randomheroes = new ArrayList<Integer>();
		for(int i = 0; i<10; i++){
			randomheroes.add(randomhero());
		}
		System.out.println(randomheroes);
		return randomheroes;
	}

	public static int besthero(int[] heroes, int[] bans){
		
		int hero = 0;
		double[][] result = DatabaseManager.getgroupherofull(heroes, bans);
		
		for(int i=0; i < bans.length; i++){
			if(bans[i] != 0){
				for(int j=0; j < result.length; j++ ){
					if(result[j][1] == bans[i]){
						result[j][0] = 0;
						result[j][1] = 0;
					}
				}
			}
		}
		hero = (int) (result[0][0]);
		return hero;
	}
	
	public static int randomtop10heroes(int[] heroes, int[] bans){
		
		int hero = 0;
		double[][] result = DatabaseManager.getgroupherofull(heroes, bans);
		
		for(int i=0; i < bans.length; i++){
			if(bans[i] != 0){
				for(int j=0; j < result.length; j++ ){
					if(result[j][1] == bans[i]){
						result[j][0] = 0;
						result[j][1] = 0;
					}
				}
			}
		}
		double[][] topten = new double[10][2];
		for(int k=0;k<10;k++){
			topten[k][0] = result[k][0];
			topten[k][1] = result[k][1];
		}
		Random random = new Random();
		int heroid = random.nextInt(10);
		hero = (int) (topten[heroid][0]);
		return hero;
	}
	
	public static int randombot30heroes(int[] heroes, int[] bans){
		
		int hero = 0;
		double[][] result = DatabaseManager.getgroupherofull(heroes, bans);
		
		for(int i=0; i < bans.length; i++){
			if(bans[i] != 0){
				for(int j=0; j < result.length; j++ ){
					if(result[j][1] == bans[i]){
						result[j][0] = 0;
						result[j][1] = 0;
					}
				}
			}
		}
		int tracker = 0;
		double[][] topten = new double[(result.length - 30)][2];
		for(int k=result.length - 1;k>30;k--){
			topten[tracker][0] = result[k][0];
			topten[tracker][1] = result[k][1];
			tracker++;
		}
		Random random = new Random();
		int heroid = random.nextInt(result.length - 30);
		while(hero == 0){
			heroid = random.nextInt(result.length - 30);
			hero = (int) (topten[heroid][0]);
		}
		return hero;
	}
	
	public static int bestaveragehero(int[] bans){
		int hero = 0;
		double[][] result = DatabaseManager.getaverages(bans);
		
		for(int i=0; i < bans.length; i++){
			if(bans[i] != 0){
				for(int j=0; j < result.length; j++ ){
					if(result[j][1] == bans[i]){
						result[j][0] = 0;
						result[j][1] = 0;
					}
				}
			}
		}
		for(int k=0; k<111; k++){
			hero = (int) result[0][1];
		}
		return hero;
	}
	
	public static int smartpick(int[] heroes, int[] bans){
				
		int hero = 0;
		double[][] average1 = DatabaseManager.getaverages(bans);
		double[][] result = DatabaseManager.getgroupherofull(heroes, bans);
		
		for(int i=0; i < bans.length; i++){
			if(bans[i] != 0){
				for(int j=0; j < result.length; j++ ){
					if(result[j][1] == bans[i]){
						result[j][0] = 0;
						result[j][1] = 0;
					}
				}
			}
		}
		
		hero = (int) (result[0][0]);
		for(int i = 0; i < 10; i++){
			for(int j =0; j < 10; j++){
				if(average1[i][1] == result[j][0]){
					hero = (int) average1[i][1];
				}
			}
		}
		return hero;
	}
	
	
	public static double gametesteasy(){
		double totalperc = 0;
		
			int[] fteam = new int[5];
			int[] eteam = new int[5];
			int[] used = new int[20];
			//User ban 1
			used[0] = randomhero();
			//AI ban 1
			used[1] = randomhero();
			//User ban 2
			used[2] = randomhero();
			//AI ban 2
			used[3] = randomhero();
			//User pick 1
			fteam[0] = randomhero();
			used[4] = fteam[0];
			//AI pick 1
			eteam[0] = randombot30heroes(fteam, used);
			used[5] = eteam[0];
			//AI pick 2
			eteam[1] = randombot30heroes(fteam, used);
			used[6] = eteam[1];
			//User pick 2
			fteam[1] = randomhero();
			used[7] = fteam[0];
			//User ban 3
			used[8] = randomhero();
			//AI ban 3
			used[9] = randombot30heroes(eteam, used);
			//User ban 1
			used[10] = randomhero();
			//AI ban4
			used[11] = randombot30heroes(eteam, used);	
			//AI pick 3
			eteam[2] = randombot30heroes(fteam, used);
			used[12] = eteam[2];
			//User pick 3
			fteam[2] = randomhero();
			used[13] = fteam[2];
			//AI pick 4
			eteam[3] = randombot30heroes(fteam, used);
			used[14] = eteam[3];
			//User pick 4
			fteam[3] = randomhero();
			used[15] = fteam[3];
			//AI ban 5
			used[16] = randombot30heroes(eteam, used);
			//User ban 5
			used[17] = randomhero();
			//AI pick 4
			eteam[4] = randombot30heroes(fteam, used);
			used[18] = eteam[4];
			//User pick 4
			fteam[4] = randomhero();
			used[19] = fteam[4];
			
			String[] result = DatabaseManager.win(fteam, eteam);
			totalperc = Double.parseDouble(result[1]);
			
		System.out.println("One game tested at: " + totalperc);
		return totalperc;
		
	}
	
	public static double gametestmedium(){
		double totalperc = 0;
		
			int[] fteam = new int[5];
			int[] eteam = new int[5];
			int[] used = new int[20];
			//User ban 1
			used[0] = randomhero();
			//AI ban 1
			used[1] = randomhero();
			//User ban 2
			used[2] = randomhero();
			//AI ban 2
			used[3] = randomhero();
			//User pick 1
			fteam[0] = randomhero();
			used[4] = fteam[0];
			//AI pick 1
			eteam[0] = randomtop10heroes(fteam, used);
			used[5] = eteam[0];
			//AI pick 2
			eteam[1] = randomtop10heroes(fteam, used);
			used[6] = eteam[1];
			//User pick 2
			fteam[1] = randomhero();
			used[7] = fteam[0];
			//User ban 3
			used[8] = randomhero();
			//AI ban 3
			used[9] = randomtop10heroes(eteam, used);
			//User ban 1
			used[10] = randomhero();
			//AI ban4
			used[11] = randomtop10heroes(eteam, used);	
			//AI pick 3
			eteam[2] = randomtop10heroes(fteam, used);
			used[12] = eteam[2];
			//User pick 3
			fteam[2] = randomhero();
			used[13] = fteam[2];
			//AI pick 4
			eteam[3] = randomtop10heroes(fteam, used);
			used[14] = eteam[3];
			//User pick 4
			fteam[3] = randomhero();
			used[15] = fteam[3];
			//AI ban 5
			used[16] = randomtop10heroes(eteam, used);
			//User ban 5
			used[17] = randomhero();
			//AI pick 4
			eteam[4] = randomtop10heroes(fteam, used);
			used[18] = eteam[4];
			//User pick 4
			fteam[4] = randomhero();
			used[19] = fteam[4];
			
			String[] result = DatabaseManager.win(fteam, eteam);
			totalperc = Double.parseDouble(result[1]);
			
		System.out.println("One game tested at: " + totalperc);
		return totalperc;
		
	}
	
	public static double gametesthard(){
		double totalperc = 0;
		
			int[] fteam = new int[5];
			int[] eteam = new int[5];
			int[] used = new int[20];
			//User ban 1
			used[0] = randomhero();
			//AI ban 1
			used[1] = randomhero();
			//User ban 2
			used[2] = randomhero();
			//AI ban 2
			used[3] = randomhero();
			//User pick 1
			fteam[0] = randomhero();
			used[4] = fteam[0];
			//AI pick 1
			eteam[0] = smartpick(fteam, used);
			used[5] = eteam[0];
			//AI pick 2
			eteam[1] = smartpick(fteam, used);
			used[6] = eteam[1];
			//User pick 2
			fteam[1] = randomhero();
			used[7] = fteam[0];
			//User ban 3
			used[8] = randomhero();
			//AI ban 3
			used[9] = smartpick(eteam, used);
			//User ban 1
			used[10] = randomhero();
			//AI ban4
			used[11] = smartpick(eteam, used);	
			//AI pick 3
			eteam[2] = smartpick(fteam, used);
			used[12] = eteam[2];
			//User pick 3
			fteam[2] = randomhero();
			used[13] = fteam[2];
			//AI pick 4
			eteam[3] = smartpick(fteam, used);
			used[14] = eteam[3];
			//User pick 4
			fteam[3] = randomhero();
			used[15] = fteam[3];
			//AI ban 5
			used[16] = smartpick(eteam, used);
			//User ban 5
			used[17] = randomhero();
			//AI pick 4
			eteam[4] = smartpick(fteam, used);
			used[18] = eteam[4];
			//User pick 4
			fteam[4] = randomhero();
			used[19] = fteam[4];
			
			String[] result = DatabaseManager.win(fteam, eteam);
			totalperc = Double.parseDouble(result[1]);
			
		System.out.println("One game tested at: " + totalperc);
		return totalperc;
		
	}
}

