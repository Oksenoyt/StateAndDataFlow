//
//  NameCounter.swift
//  StateAndDataFlow
//
//  Created by Elenka on 16.09.2022.
//

import Foundation

class NameCounter: ObservableObject {
//    var nameCount = 0
//    var currentName = ""

//    init(currentName: String = "") {
//        self.currentName = currentName
//    }
    
    func count(item: String) -> Int {
        let count = item.count
        return count
    }
}
