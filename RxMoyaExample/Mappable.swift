//
//  Mappable.swift
//  RxMoyaExample
//
//  Created by ninjaKID on 5/26/18.
//  Copyright © 2018 ninjaKID. All rights reserved.
//

import Mapper

struct Repository: Mappable {
    
    let identifier: Int
    let language: String
    let name: String
    let fullName: String
    
    init(map: Mapper) throws {
        try identifier = map.from("id")
        try language = map.from("language")
        try name = map.from("name")
        try fullName = map.from("full_name")
    }
    
}
