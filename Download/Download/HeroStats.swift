//
//  HeroStats.swift
//  Download
//
//  Created by George - Dorin NEGRAU on 30.04.2022.
//

import Foundation


struct HeroStats:Decodable {
    
    let localized_name: String
    let primary_attr: String
    let attack_type: String
    let legs: Int
    let img: String
}

