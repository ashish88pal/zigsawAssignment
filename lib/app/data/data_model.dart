class ApiRes {
  ApiRes({
    required this.status,
    required this.response,
    required this.etag,
    required this.modified,
    required this.datetime,
    required this.apiVersion,
  });
  late final String status;
  late final ResponseData response;
  late final String etag;
  late final String modified;
  late final String datetime;
  late final String apiVersion;

  ApiRes.fromJson(Map<String, dynamic> json){
    status = json['status'];
    response = ResponseData.fromJson(json['response']);
    etag = json['etag'];
    modified = json['modified'];
    datetime = json['datetime'];
    apiVersion = json['api_version'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['status'] = status;
    data['response'] = response.toJson();
    data['etag'] = etag;
    data['modified'] = modified;
    data['datetime'] = datetime;
    data['api_version'] = apiVersion;
    return data;
  }
}

class ResponseData {
  ResponseData({
    required this.innings,
    required this.teams,
    required this.players,
  });
  late final List<Innings> innings;
  late final List<Teams> teams;
  late final List<Players> players;

  ResponseData.fromJson(Map<String, dynamic> json){
    innings = List.from(json['innings']).map((e)=>Innings.fromJson(e)).toList();
    teams = List.from(json['teams']).map((e)=>Teams.fromJson(e)).toList();
    players = List.from(json['players']).map((e)=>Players.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['innings'] = innings.map((e)=>e.toJson()).toList();
    data['teams'] = teams.map((e)=>e.toJson()).toList();
    data['players'] = players.map((e)=>e.toJson()).toList();
    return data;
  }
}

class Innings {
  Innings({
    required this.inningId,
    required this.number,
    required this.name,
    required this.runs,
    required this.overs,
    required this.wickets,
    required this.status,
    required this.result,
    required this.battingTeamId,
    required this.fieldingTeamId,
    required this.fows,
    required this.statistics,
  });
  late final int inningId;
  late final int number;
  late final String name;
  late final int runs;
  late final String overs;
  late final int wickets;
  late final int status;
  late final int result;
  late final int battingTeamId;
  late final int fieldingTeamId;
  late final List<Fows> fows;
  late final Statistics statistics;

  Innings.fromJson(Map<String, dynamic> json){
    inningId = json['inning_id'];
    number = json['number'];
    name = json['name'];
    runs = json['runs'];
    overs = json['overs'];
    wickets = json['wickets'];
    status = json['status'];
    result = json['result'];
    battingTeamId = json['batting_team_id'];
    fieldingTeamId = json['fielding_team_id'];
    fows = List.from(json['fows']).map((e)=>Fows.fromJson(e)).toList();
    statistics = Statistics.fromJson(json['statistics']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['inning_id'] = inningId;
    data['number'] = number;
    data['name'] = name;
    data['runs'] = runs;
    data['overs'] = overs;
    data['wickets'] = wickets;
    data['status'] = status;
    data['result'] = result;
    data['batting_team_id'] = battingTeamId;
    data['fielding_team_id'] = fieldingTeamId;
    data['fows'] = fows.map((e)=>e.toJson()).toList();
    data['statistics'] = statistics.toJson();
    return data;
  }
}

class Fows {
  Fows({
    required this.batsmanId,
    required this.runs,
    required this.ballsFaced,
    required this.howOut,
    required this.scoreAtDismissal,
    required this.oversAtDismissal,
    required this.order,
  });
  late final int batsmanId;
  late final int runs;
  late final int ballsFaced;
  late final String howOut;
  late final int scoreAtDismissal;
  late final double oversAtDismissal;
  late final int order;

  Fows.fromJson(Map<String, dynamic> json){
    batsmanId = json['batsman_id'];
    runs = json['runs'];
    ballsFaced = json['balls_faced'];
    howOut = json['how_out'];
    scoreAtDismissal = json['score_at_dismissal'];
    oversAtDismissal = json['overs_at_dismissal'];
    order = json['order'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['batsman_id'] = batsmanId;
    data['runs'] = runs;
    data['balls_faced'] = ballsFaced;
    data['how_out'] = howOut;
    data['score_at_dismissal'] = scoreAtDismissal;
    data['overs_at_dismissal'] = oversAtDismissal;
    data['order'] = order;
    return data;
  }
}

class Statistics {
  Statistics({
    required this.manhattan,
    required this.worm,
    required this.runrates,
    required this.partnership,
    required this.runtypes,
    required this.wickets,
    required this.p2p,
    required this.extras,
  });
  late final List<Manhattan> manhattan;
  late final List<Worm> worm;
  late final List<Runrates> runrates;
  late final List<Partnership> partnership;
  late final List<Runtypes> runtypes;
  late final List<Wickets> wickets;
  late final List<P2p> p2p;
  late final List<Extras> extras;

  Statistics.fromJson(Map<String, dynamic> json){
    manhattan = List.from(json['manhattan']).map((e)=>Manhattan.fromJson(e)).toList();
    worm = List.from(json['worm']).map((e)=>Worm.fromJson(e)).toList();
    runrates = List.from(json['runrates']).map((e)=>Runrates.fromJson(e)).toList();
    partnership = List.from(json['partnership']).map((e)=>Partnership.fromJson(e)).toList();
    runtypes = List.from(json['runtypes']).map((e)=>Runtypes.fromJson(e)).toList();
    wickets = List.from(json['wickets']).map((e)=>Wickets.fromJson(e)).toList();
    p2p = List.from(json['p2p']).map((e)=>P2p.fromJson(e)).toList();
    extras = List.from(json['extras']).map((e)=>Extras.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['manhattan'] = manhattan.map((e)=>e.toJson()).toList();
    data['worm'] = worm.map((e)=>e.toJson()).toList();
    data['runrates'] = runrates.map((e)=>e.toJson()).toList();
    data['partnership'] = partnership.map((e)=>e.toJson()).toList();
    data['runtypes'] = runtypes.map((e)=>e.toJson()).toList();
    data['wickets'] = wickets.map((e)=>e.toJson()).toList();
    data['p2p'] = p2p.map((e)=>e.toJson()).toList();
    data['extras'] = extras.map((e)=>e.toJson()).toList();
    return data;
  }
}

class Manhattan {
  Manhattan({
    required this.over,
    required this.runs,
  });
  late final int over;
  late final int runs;

  Manhattan.fromJson(Map<String, dynamic> json){
    over = json['over'];
    runs = json['runs'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['over'] = over;
    data['runs'] = runs;
    return data;
  }
}

class Worm {
  Worm({
    required this.over,
    required this.runs,
  });
  late final int over;
  late final int runs;

  Worm.fromJson(Map<String, dynamic> json){
    over = json['over'];
    runs = json['runs'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['over'] = over;
    data['runs'] = runs;
    return data;
  }
}

class Runrates {
  Runrates({
    required this.over,
    required this.runrate,
  });
  late final int over;
  late final num? runrate;

  Runrates.fromJson(Map<String, dynamic> json){
    over = json['over'];
    runrate = json['runrate'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['over'] = over;
    data['runrate'] = runrate;
    return data;
  }
}

class Partnership {
  Partnership({
    required this.batsmen,
    required this.ballsFaced,
    required this.runs,
    required this.order,
  });
  late final List<Batsmen> batsmen;
  late final int ballsFaced;
  late final int runs;
  late final int order;

  Partnership.fromJson(Map<String, dynamic> json){
    batsmen = List.from(json['batsmen']).map((e)=>Batsmen.fromJson(e)).toList();
    ballsFaced = json['balls_faced'];
    runs = json['runs'];
    order = json['order'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['batsmen'] = batsmen.map((e)=>e.toJson()).toList();
    data['balls_faced'] = ballsFaced;
    data['runs'] = runs;
    data['order'] = order;
    return data;
  }
}

class Batsmen {
  Batsmen({
    required this.batsmanId,
    required this.ballsFaced,
    required this.runs,
    required this.fours,
    required this.sixes,
  });
  late final int batsmanId;
  late final int ballsFaced;
  late final int runs;
  late final int fours;
  late final int sixes;

  Batsmen.fromJson(Map<String, dynamic> json){
    batsmanId = json['batsman_id'];
    ballsFaced = json['balls_faced'];
    runs = json['runs'];
    fours = json['fours'];
    sixes = json['sixes'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['batsman_id'] = batsmanId;
    data['balls_faced'] = ballsFaced;
    data['runs'] = runs;
    data['fours'] = fours;
    data['sixes'] = sixes;
    return data;
  }
}

class Runtypes {
  Runtypes({
    required this.key,
    required this.name,
    required this.value,
  });
  late final String key;
  late final String name;
  late final int value;

  Runtypes.fromJson(Map<String, dynamic> json){
    key = json['key'];
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['key'] = key;
    data['name'] = name;
    data['value'] = value;
    return data;
  }
}

class Wickets {
  Wickets({
    required this.key,
    required this.name,
    required this.value,
  });
  late final String key;
  late final String name;
  late final int value;

  Wickets.fromJson(Map<String, dynamic> json){
    key = json['key'];
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['key'] = key;
    data['name'] = name;
    data['value'] = value;
    return data;
  }
}

class P2p {
  P2p({
    required this.batsmanId,
    required this.bowlerId,
    required this.balls,
    required this.runs,
    required this.run0,
    required this.run1,
    required this.run2,
    required this.run3,
    required this.run4,
    required this.run5,
    required this.run6,
    required this.run6p,
  });
  late final String batsmanId;
  late final String bowlerId;
  late final String balls;
  late final String runs;
  late final String run0;
  late final String run1;
  late final String run2;
  late final String run3;
  late final String run4;
  late final String run5;
  late final String run6;
  late final String run6p;

  P2p.fromJson(Map<String, dynamic> json){
    batsmanId = json['batsman_id'];
    bowlerId = json['bowler_id'];
    balls = json['balls'];
    runs = json['runs'];
    run0 = json['run0'];
    run1 = json['run1'];
    run2 = json['run2'];
    run3 = json['run3'];
    run4 = json['run4'];
    run5 = json['run5'];
    run6 = json['run6'];
    run6p = json['run6p'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['batsman_id'] = batsmanId;
    data['bowler_id'] = bowlerId;
    data['balls'] = balls;
    data['runs'] = runs;
    data['run0'] = run0;
    data['run1'] = run1;
    data['run2'] = run2;
    data['run3'] = run3;
    data['run4'] = run4;
    data['run5'] = run5;
    data['run6'] = run6;
    data['run6p'] = run6p;
    return data;
  }
}

class Extras {
  Extras({
    required this.key,
    required this.name,
    required this.value,
  });
  late final String key;
  late final String name;
  late final int value;

  Extras.fromJson(Map<String, dynamic> json){
    key = json['key'];
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['key'] = key;
    data['name'] = name;
    data['value'] = value;
    return data;
  }
}

class Teams {
  Teams({
    required this.teamId,
    required this.name,
    required this.shortName,
    required this.countryIso,
    required this.type,
    required this.logoUrl,
  });
  late final int teamId;
  late final String name;
  late final String shortName;
  late final String countryIso;
  late final String type;
  late final String logoUrl;

  Teams.fromJson(Map<String, dynamic> json){
    teamId = json['team_id'];
    name = json['name'];
    shortName = json['short_name'];
    countryIso = json['country_iso'];
    type = json['type'];
    logoUrl = json['logo_url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['team_id'] = teamId;
    data['name'] = name;
    data['short_name'] = shortName;
    data['country_iso'] = countryIso;
    data['type'] = type;
    data['logo_url'] = logoUrl;
    return data;
  }
}

class Players {
  Players({
    required this.playerId,
    required this.name,
    required this.shortName,
    required this.countryIso,
    required this.logoUrl,
  });
  late final int playerId;
  late final String name;
  late final String shortName;
  late final String countryIso;
  late final String logoUrl;

  Players.fromJson(Map<String, dynamic> json){
    playerId = json['player_id'];
    name = json['name'];
    shortName = json['short_name'];
    countryIso = json['country_iso'];
    logoUrl = json['logo_url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['player_id'] = playerId;
    data['name'] = name;
    data['short_name'] = shortName;
    data['country_iso'] = countryIso;
    data['logo_url'] = logoUrl;
    return data;
  }
}