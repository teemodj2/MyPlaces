//
//   StorageManager.swift
//  MyPlaces
//
//  Created by Лев Ильин on 28.03.2020.
//  Copyright © 2020 LevIlin. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class storageManager {
    static func saveObject(_ place: Place) {
        try! realm.write {
            realm.add(place)
        }
    }
}
