// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Overview welcomeFromJson(String str) => Overview.fromJson(json.decode(str));

String welcomeToJson(Overview data) => json.encode(data.toJson());

class Overview{
    Overview({
       required  this.id,
       required  this.security,
        required this.industryId,
       required  this.industry,
        required this.sectorId,
       required  this.sector,
        required this.mcap,
        required this.ev,
        required this.evDateEnd,
        required this.bookNavPerShare,
        required this.ttmpe,
        required this.ttmYearEnd,
        required this.welcomeYield,
        required this.yearEnd,
        required this.sectorSlug,
        required this.industrySlug,
        required this.securitySlug,
        required this.pegRatio,
    });

    int id;
    String security;
    int industryId;
    String industry;
    int sectorId;
    String sector;
    double mcap;
    dynamic ev;
    dynamic evDateEnd;
    double bookNavPerShare;
    double ttmpe;
    int ttmYearEnd;
    double welcomeYield;
    int yearEnd;
    String sectorSlug;
    String industrySlug;
    String securitySlug;
    double pegRatio;

    factory Overview.fromJson(Map<String, dynamic> json) => Overview(
        id: json["ID"],
        security: json["Security"],
        industryId: json["IndustryID"],
        industry: json["Industry"],
        sectorId: json["SectorID"],
        sector: json["Sector"],
        mcap: json["MCAP"].toDouble(),
        ev: json["EV"],
        evDateEnd: json["EVDateEnd"],
        bookNavPerShare: json["BookNavPerShare"].toDouble(),
        ttmpe: json["TTMPE"].toDouble(),
        ttmYearEnd: json["TTMYearEnd"],
        welcomeYield: json["Yield"].toDouble(),
        yearEnd: json["YearEnd"],
        sectorSlug: json["SectorSlug"],
        industrySlug: json["IndustrySlug"],
        securitySlug: json["SecuritySlug"],
        pegRatio: json["PEGRatio"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "ID": id,
        "Security": security,
        "IndustryID": industryId,
        "Industry": industry,
        "SectorID": sectorId,
        "Sector": sector,
        "MCAP": mcap,
        "EV": ev,
        "EVDateEnd": evDateEnd,
        "BookNavPerShare": bookNavPerShare,
        "TTMPE": ttmpe,
        "TTMYearEnd": ttmYearEnd,
        "Yield": welcomeYield,
        "YearEnd": yearEnd,
        "SectorSlug": sectorSlug,
        "IndustrySlug": industrySlug,
        "SecuritySlug": securitySlug,
        "PEGRatio": pegRatio,
    };
}
