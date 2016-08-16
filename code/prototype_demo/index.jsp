<%@page import="PrototypeServer.DatabaseManager"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DOTADROID</title>
</head>
<body>
<h1>Choose a hero!</h1>

<h2>Enemy Team Picks</h2>
<form action = "index.jsp" method = "POST">
<select name="EnemyHeroPick1">
<option value="0" selected="selected">Choose a hero!</option>
<option value="1">Antimage</option>
<option value="2">Axe</option>
<option value="3">Bane</option>
<option value="4">Bloodseeker</option>
<option value="5">Crystal Maiden</option>
<option value="6">Drow Ranger</option>
<option value="7">Earthshaker</option>
<option value="8">Juggernaught</option>
<option value="9">Mirana</option>
<option value="10">Morphling</option>
<option value="11">Shadow Fiend</option>
<option value="12">Phantom Lancer</option>
<option value="13">Puck</option>
<option value="14">Pudge</option>
<option value="15">Razor</option>
<option value="16">Sand King</option>
<option value="17">Storm Spirit</option>
<option value="18">Sven</option>
<option value="19">Tiny</option>
<option value="20">Vengeful Spirit</option>
<option value="21">Windrunner</option>
<option value="22">Zeus</option>
<option value="23">Kunkka</option>
<option value="25">Lina</option>
<option value="26">Lion</option>
<option value="27">Shadow Shaman</option>
<option value="28">Slardar</option>
<option value="29">Tidehunter</option>
<option value="30">Witch Doctor</option>
<option value="31">Lich</option>
<option value="32">Riki</option>
<option value="33">Enigma</option>
<option value="34">Tinker</option>
<option value="35">Sniper</option>
<option value="36">Necrophos</option>
<option value="37">Warlock</option>
<option value="38">Beastmaster</option>
<option value="39">Queen of Pain</option>
<option value="40">Venomancer</option>
<option value="41">Faceless Void</option>
<option value="42">Wraith King</option>
<option value="43">Death Prophet</option>
<option value="44">Phantom Assassin</option>
<option value="45">Pugna</option>
<option value="46">Templar Assassin</option>
<option value="47">Viper</option>
<option value="48">Luna</option>
<option value="49">Dragon Knight</option>
<option value="50">Dazzle</option>
<option value="51">Clockwerk</option>
<option value="52">Leshrac</option>
<option value="53">Nature's Prohpet</option>
<option value="54">Lifestealer</option>
<option value="55">Dark Seer</option>
<option value="56">Clinkz</option>
<option value="57">Omniknight</option>
<option value="58">Enchantress</option>
<option value="59">Huskar</option>
<option value="60">Nightstalker</option>
<option value="61">Broodmother</option>
<option value="62">Bounty Hunter</option>
<option value="63">Weaver</option>
<option value="64">Jakiro</option>
<option value="65">Batrider</option>
<option value="66">Chen</option>
<option value="67">Spectre</option>
<option value="68">Doom</option>
<option value="69">Ancient Apparition</option>
<option value="70">Ursa</option>
<option value="71">Spirit Breaker</option>
<option value="72">Gyrocopter</option>
<option value="73">Alchemist</option>
<option value="74">Invoker</option>
<option value="75">Silencer</option>
<option value="76">Outworld Devourer</option>
<option value="77">Lycan</option>
<option value="78">Brewmaster</option>
<option value="79">Shadow Demon</option>
<option value="80">Lone Druid</option>
<option value="81">Chaos Knight</option>
<option value="82">Meepo</option>
<option value="83">Treant Protector</option>
<option value="84">Ogre Magi</option>
<option value="85">Undying</option>
<option value="86">Rubick</option>
<option value="87">Disruptor</option>
<option value="88">Nyx Assassin</option>
<option value="89">Naga Siren</option>
<option value="90">Keeper of the Light</option>
<option value="91">Io</option>
<option value="92">Visage</option>
<option value="93">Slark</option>
<option value="94">Medusa</option>
<option value="95">Troll Warlord</option>
<option value="96">Centaur Warrunner</option>
<option value="97">Magnus</option>
<option value="98">Timbersaw</option>
<option value="99">Bristleback</option>
<option value="100">Tusk</option>
<option value="101">Skywrath Mage</option>
<option value="102">Abaddon</option>
<option value="103">Elder Titan</option>
<option value="104">Legion Commander</option>
<option value="105">Techies</option>
<option value="106">Ember Spirit</option>
<option value="107">Earth Spirit</option>
<option value="109">Terrorblade</option>
<option value="110">Phoenix</option>
<option value="111">Oracle</option>
</select>
<select name="EnemyHeroPick2">
<option value="0" selected="selected">Choose a hero!</option>
<option value="1">Antimage</option>
<option value="2">Axe</option>
<option value="3">Bane</option>
<option value="4">Bloodseeker</option>
<option value="5">Crystal Maiden</option>
<option value="6">Drow Ranger</option>
<option value="7">Earthshaker</option>
<option value="8">Juggernaught</option>
<option value="9">Mirana</option>
<option value="10">Morphling</option>
<option value="11">Shadow Fiend</option>
<option value="12">Phantom Lancer</option>
<option value="13">Puck</option>
<option value="14">Pudge</option>
<option value="15">Razor</option>
<option value="16">Sand King</option>
<option value="17">Storm Spirit</option>
<option value="18">Sven</option>
<option value="19">Tiny</option>
<option value="20">Vengeful Spirit</option>
<option value="21">Windrunner</option>
<option value="22">Zeus</option>
<option value="23">Kunkka</option>
<option value="25">Lina</option>
<option value="26">Lion</option>
<option value="27">Shadow Shaman</option>
<option value="28">Slardar</option>
<option value="29">Tidehunter</option>
<option value="30">Witch Doctor</option>
<option value="31">Lich</option>
<option value="32">Riki</option>
<option value="33">Enigma</option>
<option value="34">Tinker</option>
<option value="35">Sniper</option>
<option value="36">Necrophos</option>
<option value="37">Warlock</option>
<option value="38">Beastmaster</option>
<option value="39">Queen of Pain</option>
<option value="40">Venomancer</option>
<option value="41">Faceless Void</option>
<option value="42">Wraith King</option>
<option value="43">Death Prophet</option>
<option value="44">Phantom Assassin</option>
<option value="45">Pugna</option>
<option value="46">Templar Assassin</option>
<option value="47">Viper</option>
<option value="48">Luna</option>
<option value="49">Dragon Knight</option>
<option value="50">Dazzle</option>
<option value="51">Clockwerk</option>
<option value="52">Leshrac</option>
<option value="53">Nature's Prohpet</option>
<option value="54">Lifestealer</option>
<option value="55">Dark Seer</option>
<option value="56">Clinkz</option>
<option value="57">Omniknight</option>
<option value="58">Enchantress</option>
<option value="59">Huskar</option>
<option value="60">Nightstalker</option>
<option value="61">Broodmother</option>
<option value="62">Bounty Hunter</option>
<option value="63">Weaver</option>
<option value="64">Jakiro</option>
<option value="65">Batrider</option>
<option value="66">Chen</option>
<option value="67">Spectre</option>
<option value="68">Doom</option>
<option value="69">Ancient Apparition</option>
<option value="70">Ursa</option>
<option value="71">Spirit Breaker</option>
<option value="72">Gyrocopter</option>
<option value="73">Alchemist</option>
<option value="74">Invoker</option>
<option value="75">Silencer</option>
<option value="76">Outworld Devourer</option>
<option value="77">Lycan</option>
<option value="78">Brewmaster</option>
<option value="79">Shadow Demon</option>
<option value="80">Lone Druid</option>
<option value="81">Chaos Knight</option>
<option value="82">Meepo</option>
<option value="83">Treant Protector</option>
<option value="84">Ogre Magi</option>
<option value="85">Undying</option>
<option value="86">Rubick</option>
<option value="87">Disruptor</option>
<option value="88">Nyx Assassin</option>
<option value="89">Naga Siren</option>
<option value="90">Keeper of the Light</option>
<option value="91">Io</option>
<option value="92">Visage</option>
<option value="93">Slark</option>
<option value="94">Medusa</option>
<option value="95">Troll Warlord</option>
<option value="96">Centaur Warrunner</option>
<option value="97">Magnus</option>
<option value="98">Timbersaw</option>
<option value="99">Bristleback</option>
<option value="100">Tusk</option>
<option value="101">Skywrath Mage</option>
<option value="102">Abaddon</option>
<option value="103">Elder Titan</option>
<option value="104">Legion Commander</option>
<option value="105">Techies</option>
<option value="106">Ember Spirit</option>
<option value="107">Earth Spirit</option>
<option value="109">Terrorblade</option>
<option value="110">Phoenix</option>
<option value="111">Oracle</option>
</select>
<select name="EnemyHeroPick3">
<option value="0" selected="selected">Choose a hero!</option>
<option value="1">Antimage</option>
<option value="2">Axe</option>
<option value="3">Bane</option>
<option value="4">Bloodseeker</option>
<option value="5">Crystal Maiden</option>
<option value="6">Drow Ranger</option>
<option value="7">Earthshaker</option>
<option value="8">Juggernaught</option>
<option value="9">Mirana</option>
<option value="10">Morphling</option>
<option value="11">Shadow Fiend</option>
<option value="12">Phantom Lancer</option>
<option value="13">Puck</option>
<option value="14">Pudge</option>
<option value="15">Razor</option>
<option value="16">Sand King</option>
<option value="17">Storm Spirit</option>
<option value="18">Sven</option>
<option value="19">Tiny</option>
<option value="20">Vengeful Spirit</option>
<option value="21">Windrunner</option>
<option value="22">Zeus</option>
<option value="23">Kunkka</option>
<option value="25">Lina</option>
<option value="26">Lion</option>
<option value="27">Shadow Shaman</option>
<option value="28">Slardar</option>
<option value="29">Tidehunter</option>
<option value="30">Witch Doctor</option>
<option value="31">Lich</option>
<option value="32">Riki</option>
<option value="33">Enigma</option>
<option value="34">Tinker</option>
<option value="35">Sniper</option>
<option value="36">Necrophos</option>
<option value="37">Warlock</option>
<option value="38">Beastmaster</option>
<option value="39">Queen of Pain</option>
<option value="40">Venomancer</option>
<option value="41">Faceless Void</option>
<option value="42">Wraith King</option>
<option value="43">Death Prophet</option>
<option value="44">Phantom Assassin</option>
<option value="45">Pugna</option>
<option value="46">Templar Assassin</option>
<option value="47">Viper</option>
<option value="48">Luna</option>
<option value="49">Dragon Knight</option>
<option value="50">Dazzle</option>
<option value="51">Clockwerk</option>
<option value="52">Leshrac</option>
<option value="53">Nature's Prohpet</option>
<option value="54">Lifestealer</option>
<option value="55">Dark Seer</option>
<option value="56">Clinkz</option>
<option value="57">Omniknight</option>
<option value="58">Enchantress</option>
<option value="59">Huskar</option>
<option value="60">Nightstalker</option>
<option value="61">Broodmother</option>
<option value="62">Bounty Hunter</option>
<option value="63">Weaver</option>
<option value="64">Jakiro</option>
<option value="65">Batrider</option>
<option value="66">Chen</option>
<option value="67">Spectre</option>
<option value="68">Doom</option>
<option value="69">Ancient Apparition</option>
<option value="70">Ursa</option>
<option value="71">Spirit Breaker</option>
<option value="72">Gyrocopter</option>
<option value="73">Alchemist</option>
<option value="74">Invoker</option>
<option value="75">Silencer</option>
<option value="76">Outworld Devourer</option>
<option value="77">Lycan</option>
<option value="78">Brewmaster</option>
<option value="79">Shadow Demon</option>
<option value="80">Lone Druid</option>
<option value="81">Chaos Knight</option>
<option value="82">Meepo</option>
<option value="83">Treant Protector</option>
<option value="84">Ogre Magi</option>
<option value="85">Undying</option>
<option value="86">Rubick</option>
<option value="87">Disruptor</option>
<option value="88">Nyx Assassin</option>
<option value="89">Naga Siren</option>
<option value="90">Keeper of the Light</option>
<option value="91">Io</option>
<option value="92">Visage</option>
<option value="93">Slark</option>
<option value="94">Medusa</option>
<option value="95">Troll Warlord</option>
<option value="96">Centaur Warrunner</option>
<option value="97">Magnus</option>
<option value="98">Timbersaw</option>
<option value="99">Bristleback</option>
<option value="100">Tusk</option>
<option value="101">Skywrath Mage</option>
<option value="102">Abaddon</option>
<option value="103">Elder Titan</option>
<option value="104">Legion Commander</option>
<option value="105">Techies</option>
<option value="106">Ember Spirit</option>
<option value="107">Earth Spirit</option>
<option value="109">Terrorblade</option>
<option value="110">Phoenix</option>
<option value="111">Oracle</option>
</select>
<select name="EnemyHeroPick4">
<option value="0" selected="selected">Choose a hero!</option>
<option value="1">Antimage</option>
<option value="2">Axe</option>
<option value="3">Bane</option>
<option value="4">Bloodseeker</option>
<option value="5">Crystal Maiden</option>
<option value="6">Drow Ranger</option>
<option value="7">Earthshaker</option>
<option value="8">Juggernaught</option>
<option value="9">Mirana</option>
<option value="10">Morphling</option>
<option value="11">Shadow Fiend</option>
<option value="12">Phantom Lancer</option>
<option value="13">Puck</option>
<option value="14">Pudge</option>
<option value="15">Razor</option>
<option value="16">Sand King</option>
<option value="17">Storm Spirit</option>
<option value="18">Sven</option>
<option value="19">Tiny</option>
<option value="20">Vengeful Spirit</option>
<option value="21">Windrunner</option>
<option value="22">Zeus</option>
<option value="23">Kunkka</option>
<option value="25">Lina</option>
<option value="26">Lion</option>
<option value="27">Shadow Shaman</option>
<option value="28">Slardar</option>
<option value="29">Tidehunter</option>
<option value="30">Witch Doctor</option>
<option value="31">Lich</option>
<option value="32">Riki</option>
<option value="33">Enigma</option>
<option value="34">Tinker</option>
<option value="35">Sniper</option>
<option value="36">Necrophos</option>
<option value="37">Warlock</option>
<option value="38">Beastmaster</option>
<option value="39">Queen of Pain</option>
<option value="40">Venomancer</option>
<option value="41">Faceless Void</option>
<option value="42">Wraith King</option>
<option value="43">Death Prophet</option>
<option value="44">Phantom Assassin</option>
<option value="45">Pugna</option>
<option value="46">Templar Assassin</option>
<option value="47">Viper</option>
<option value="48">Luna</option>
<option value="49">Dragon Knight</option>
<option value="50">Dazzle</option>
<option value="51">Clockwerk</option>
<option value="52">Leshrac</option>
<option value="53">Nature's Prohpet</option>
<option value="54">Lifestealer</option>
<option value="55">Dark Seer</option>
<option value="56">Clinkz</option>
<option value="57">Omniknight</option>
<option value="58">Enchantress</option>
<option value="59">Huskar</option>
<option value="60">Nightstalker</option>
<option value="61">Broodmother</option>
<option value="62">Bounty Hunter</option>
<option value="63">Weaver</option>
<option value="64">Jakiro</option>
<option value="65">Batrider</option>
<option value="66">Chen</option>
<option value="67">Spectre</option>
<option value="68">Doom</option>
<option value="69">Ancient Apparition</option>
<option value="70">Ursa</option>
<option value="71">Spirit Breaker</option>
<option value="72">Gyrocopter</option>
<option value="73">Alchemist</option>
<option value="74">Invoker</option>
<option value="75">Silencer</option>
<option value="76">Outworld Devourer</option>
<option value="77">Lycan</option>
<option value="78">Brewmaster</option>
<option value="79">Shadow Demon</option>
<option value="80">Lone Druid</option>
<option value="81">Chaos Knight</option>
<option value="82">Meepo</option>
<option value="83">Treant Protector</option>
<option value="84">Ogre Magi</option>
<option value="85">Undying</option>
<option value="86">Rubick</option>
<option value="87">Disruptor</option>
<option value="88">Nyx Assassin</option>
<option value="89">Naga Siren</option>
<option value="90">Keeper of the Light</option>
<option value="91">Io</option>
<option value="92">Visage</option>
<option value="93">Slark</option>
<option value="94">Medusa</option>
<option value="95">Troll Warlord</option>
<option value="96">Centaur Warrunner</option>
<option value="97">Magnus</option>
<option value="98">Timbersaw</option>
<option value="99">Bristleback</option>
<option value="100">Tusk</option>
<option value="101">Skywrath Mage</option>
<option value="102">Abaddon</option>
<option value="103">Elder Titan</option>
<option value="104">Legion Commander</option>
<option value="105">Techies</option>
<option value="106">Ember Spirit</option>
<option value="107">Earth Spirit</option>
<option value="109">Terrorblade</option>
<option value="110">Phoenix</option>
<option value="111">Oracle</option>
</select>
<select name="EnemyHeroPick5">
<option value="0" selected="selected">Choose a hero!</option>
<option value="1">Antimage</option>
<option value="2">Axe</option>
<option value="3">Bane</option>
<option value="4">Bloodseeker</option>
<option value="5">Crystal Maiden</option>
<option value="6">Drow Ranger</option>
<option value="7">Earthshaker</option>
<option value="8">Juggernaught</option>
<option value="9">Mirana</option>
<option value="10">Morphling</option>
<option value="11">Shadow Fiend</option>
<option value="12">Phantom Lancer</option>
<option value="13">Puck</option>
<option value="14">Pudge</option>
<option value="15">Razor</option>
<option value="16">Sand King</option>
<option value="17">Storm Spirit</option>
<option value="18">Sven</option>
<option value="19">Tiny</option>
<option value="20">Vengeful Spirit</option>
<option value="21">Windrunner</option>
<option value="22">Zeus</option>
<option value="23">Kunkka</option>
<option value="25">Lina</option>
<option value="26">Lion</option>
<option value="27">Shadow Shaman</option>
<option value="28">Slardar</option>
<option value="29">Tidehunter</option>
<option value="30">Witch Doctor</option>
<option value="31">Lich</option>
<option value="32">Riki</option>
<option value="33">Enigma</option>
<option value="34">Tinker</option>
<option value="35">Sniper</option>
<option value="36">Necrophos</option>
<option value="37">Warlock</option>
<option value="38">Beastmaster</option>
<option value="39">Queen of Pain</option>
<option value="40">Venomancer</option>
<option value="41">Faceless Void</option>
<option value="42">Wraith King</option>
<option value="43">Death Prophet</option>
<option value="44">Phantom Assassin</option>
<option value="45">Pugna</option>
<option value="46">Templar Assassin</option>
<option value="47">Viper</option>
<option value="48">Luna</option>
<option value="49">Dragon Knight</option>
<option value="50">Dazzle</option>
<option value="51">Clockwerk</option>
<option value="52">Leshrac</option>
<option value="53">Nature's Prohpet</option>
<option value="54">Lifestealer</option>
<option value="55">Dark Seer</option>
<option value="56">Clinkz</option>
<option value="57">Omniknight</option>
<option value="58">Enchantress</option>
<option value="59">Huskar</option>
<option value="60">Nightstalker</option>
<option value="61">Broodmother</option>
<option value="62">Bounty Hunter</option>
<option value="63">Weaver</option>
<option value="64">Jakiro</option>
<option value="65">Batrider</option>
<option value="66">Chen</option>
<option value="67">Spectre</option>
<option value="68">Doom</option>
<option value="69">Ancient Apparition</option>
<option value="70">Ursa</option>
<option value="71">Spirit Breaker</option>
<option value="72">Gyrocopter</option>
<option value="73">Alchemist</option>
<option value="74">Invoker</option>
<option value="75">Silencer</option>
<option value="76">Outworld Devourer</option>
<option value="77">Lycan</option>
<option value="78">Brewmaster</option>
<option value="79">Shadow Demon</option>
<option value="80">Lone Druid</option>
<option value="81">Chaos Knight</option>
<option value="82">Meepo</option>
<option value="83">Treant Protector</option>
<option value="84">Ogre Magi</option>
<option value="85">Undying</option>
<option value="86">Rubick</option>
<option value="87">Disruptor</option>
<option value="88">Nyx Assassin</option>
<option value="89">Naga Siren</option>
<option value="90">Keeper of the Light</option>
<option value="91">Io</option>
<option value="92">Visage</option>
<option value="93">Slark</option>
<option value="94">Medusa</option>
<option value="95">Troll Warlord</option>
<option value="96">Centaur Warrunner</option>
<option value="97">Magnus</option>
<option value="98">Timbersaw</option>
<option value="99">Bristleback</option>
<option value="100">Tusk</option>
<option value="101">Skywrath Mage</option>
<option value="102">Abaddon</option>
<option value="103">Elder Titan</option>
<option value="104">Legion Commander</option>
<option value="105">Techies</option>
<option value="106">Ember Spirit</option>
<option value="107">Earth Spirit</option>
<option value="109">Terrorblade</option>
<option value="110">Phoenix</option>
<option value="111">Oracle</option>
</select>
<input type="submit" value="Submit">
</form>

<%
		String heroID1 = request.getParameter("EnemyHeroPick1");
		String heroID2 = request.getParameter("EnemyHeroPick2");
		String heroID3 = request.getParameter("EnemyHeroPick3");
		String heroID4 = request.getParameter("EnemyHeroPick4");
		String heroID5 = request.getParameter("EnemyHeroPick5");
		
		int[] heroes = new int[5];
		
		if (heroID1 != null){
			heroes[0] =  Integer.parseInt(heroID1);
		}
		if (heroID2 != null){
			heroes[1] =  Integer.parseInt(heroID2);
		}
		if (heroID3 != null){
			heroes[2] =  Integer.parseInt(heroID3);
		}
		if (heroID4 != null){
			heroes[3] =  Integer.parseInt(heroID4);
		}
		if (heroID5 != null){
			heroes[4] =  Integer.parseInt(heroID5);
		}
		
		double[][] result = new double[10][2];
		if(heroes[0] == 0 && heroes[1] == 0 && heroes[2] == 0 && heroes[3] == 0 && heroes[4] == 0){
			
		}
		else{
			result = (DatabaseManager.getgrouphero(heroes));		
		}
%>

<h1>Suggested heroes versus <%	if(heroID1 == null){} else{out.print(DatabaseManager.getheroname(Integer.parseInt(heroID1)));}
								if(heroID2 == null){} else{out.print(" " + DatabaseManager.getheroname(Integer.parseInt(heroID2)));}
								if(heroID3 == null){} else{out.print(" " + DatabaseManager.getheroname(Integer.parseInt(heroID3)));}
								if(heroID4 == null){} else{out.print(" " + DatabaseManager.getheroname(Integer.parseInt(heroID4)));}
								if(heroID5 == null){} else{out.print(" " + DatabaseManager.getheroname(Integer.parseInt(heroID5)));}
							%>
</h1>
<table style="width:30%" border="1">
  <tr>
    <th>Hero</th>
    <th>Win Percentage</th> 
  </tr>

  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)result[0][0])); %></td>
  	<td><% out.print(100 - result[0][1]); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)result[1][0])); %></td>
  	<td><% out.print(100 - result[1][1]); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)result[2][0])); %></td>
  	<td><% out.print(100 - result[2][1]); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)result[3][0])); %></td>
  	<td><% out.print(100 - result[3][1]); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)result[4][0])); %></td>
  	<td><% out.print(100 - result[4][1]); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)result[5][0])); %></td>
  	<td><% out.print(100 - result[5][1]); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)result[6][0])); %></td>
  	<td><% out.print(100 - result[6][1]); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)result[7][0])); %></td>
  	<td><% out.print(100 - result[7][1]); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)result[8][0])); %></td>
  	<td><% out.print(100 - result[8][1]); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)result[9][0])); %></td>
  	<td><% out.print(100 - result[9][1]); %></td>
  </tr>  
</table>
	
</body>
</html>