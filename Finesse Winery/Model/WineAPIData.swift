//
//  WineAPIData.swift
//  Finesse Winery
//
//  Created by Timmy Cole on 4/21/23.
//

import Foundation

struct WineData : Codable {
    var recommendedWines : [Wines];
}

struct Wines : Codable {
    let title : String
    let description : String;
    let price: String;
    let imageUrl : String;
}

struct WineList {
    
    let main_List = ["white_wine","dry_white_wine","assyrtiko","pinot_blanc","cortese","roussanne","moschofilero","muscadet","viognier","verdicchio","greco","marsanne","white_burgundy","chardonnay","gruener_veltliner","white_rioja","frascati","gavi","trebbiano","sauvignon_blanc","albarino","arneis","verdejo","vermentino","soave","pinot_grigio","dry_riesling","torrontes","mueller_thurgau","grechetto","gewurztraminer","chenin_blanc","semillon","riesling","sauternes","sylvaner","red_wine","dry_red_wine","petite_sirah","zweigelt","bonarda","cabernet_franc","bairrada","barbera_wine","primitivo","pinot_noir","nebbiolo","dolcetto","tannat","negroamaro","corvina","rioja","cotes_du_rhone","grenache","malbec","zinfandel","sangiovese","carignan","carmenere","cabernet_sauvignon","aglianico","tempranillo","shiraz","mourvedre","merlot","nero_d_avola","bordeaux","port","gamay","dornfelder","concord_wine","sparkling_red_wine","pinotage","agiorgitiko","dessert_wine","pedro_ximenez","moscato","late_harvest","ice_wine","madeira","port","rose_wine","sparkling_rose","sparkling_wine","cava","cremant","champagne"]
    
//    let white_Wine_List = ["white_wine","dry_white_wine","assyrtiko","pinot_blanc","cortese","roussanne","moschofilero","muscadet","viognier","verdicchio","greco","marsanne","white_burgundy","chardonnay","gruener_veltliner","white_rioja","frascati","gavi","trebbiano","sauvignon_blanc","albarino","arneis","verdejo","vermentino","soave","pinot_grigio","dry_riesling","torrontes","mueller_thurgau","grechetto","gewurztraminer","chenin_blanc","semillon","riesling","sauternes","sylvaner"];
//    let red_Wine_List = ["red_wine","dry_red_wine","petite_sirah","zweigelt","bonarda","cabernet_franc","bairrada","barbera_wine","primitivo","pinot_noir","nebbiolo","dolcetto","tannat","negroamaro","corvina","rioja","cotes_du_rhone","grenache","malbec","zinfandel","sangiovese","carignan","carmenere","cabernet_sauvignon","aglianico","tempranillo","shiraz","mourvedre","merlot","nero_d_avola","bordeaux","port","gamay","dornfelder","concord_wine","sparkling_red_wine","pinotage","agiorgitiko"];
//    let desert_Wine_List = ["dessert_wine","pedro_ximenez","moscato","late_harvest","ice_wine","madeira","port"];
//    let rose_Wine_List = ["rose_wine","sparkling_rose"];
//    let sparkling_Wine_List = ["sparkling_wine","cava","cremant","champagne"];
}

