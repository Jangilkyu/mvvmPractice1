//
//  MainSectionModel.swift
//  SeoulCongestion
//
//  Created by jangilkyu on 2023/10/29.
//

import Foundation
import RxDataSources

struct MainSectionModel {
    
    var items: [Item]
}


extension MainSectionModel: SectionModelType {
  typealias Item = [Cities]

   init(original: MainSectionModel, items: [Item]) {
    self = original
    self.items = items
  }
}
