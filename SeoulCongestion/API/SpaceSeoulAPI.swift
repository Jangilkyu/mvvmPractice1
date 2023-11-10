//
//  SpaceSeoulAPI.swift
//  SeoulCongestion
//
//  Created by jangilkyu on 2023/10/29.
//

import Foundation

import Moya


enum SpaceSeoulAPI {
    case seoulCitiesData
    case search
}

extension SpaceSeoulAPI: TargetType {
    var baseURL: URL {
        return URL(string: "https://zeroganseoul-server.onrender.com/api/v1/")!
    }
    
    var path: String {
        switch self {
        case .seoulCitiesData:
            return "seoulCitiesData"
        case .search:
            return "citiesRouter"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .seoulCitiesData:
            return .get
        case .search:
            return .get
        }
    }
    
    var task: Moya.Task {
        switch self {
        case .seoulCitiesData:
            return .requestPlain
        case .search:
            return .requestPlain
        }
    }
    
    var validationType: ValidationType {
        return .successCodes
    }
    
    var headers: [String : String]? {
        return [:]
    }
}
