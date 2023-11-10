//
//  SpaceSeoul.swift
//  SeoulCongestion
//
//  Created by jangilkyu on 2023/10/29.
//

import Foundation
import Moya

class SpaceSeoul {
    static let shared = SpaceSeoul() // 싱글턴 인스턴스
    
    let provider: MoyaProvider<SpaceSeoulAPI>
    
    private init() {
        provider = MoyaProvider<SpaceSeoulAPI>()
    }
}

extension SpaceSeoul {
    func getCity() {
        self.provider.request(.seoulCitiesData) { result in
            switch result {
            case .success(let res):
                print(res)
            case .failure(let error):
                print(error)
            }
        }
    }
}
