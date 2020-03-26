//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Лев Ильин on 26.03.2020.
//  Copyright © 2020 LevIlin. All rights reserved.
//

import Foundation

struct Place {
    
    var name: String
    var location: String
    var type: String
    var image: String
    
    static let restaurantNames = ["Burger King",
                               "Каравелла",
                               "Ширван",
                               "MacDonald's",
                               "Охотничий рай",
                               "Вилка",
                               "Ронни",
                               "У Гуссейна",
                               "Туран"]
    
    // метод для заполнения массива places из массива restaurantNames
    static func  getPlaces () -> [Place] {
        
        var places = [Place]()
        
        
        for place in restaurantNames {
            places.append(Place(name: place, location: "Ижевск", type: "Ресторан", image: place))
        }
        return places
    }
}
