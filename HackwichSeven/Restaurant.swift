//
//  Restaurant.swift
//  HackwichSeven
//
//  Created by Ryan Muranaka on 4/4/19.
//  Copyright © 2019 Ryan Muranaka. All rights reserved.
//

import UIKit
//Need to import the mapKit framework
import MapKit

//adopt the MKAnnotation protocol
class Restaurant: NSObject, MKAnnotation {
    //A. Declare three variable that will hold data that the annotation will access
    let restaurantTitle: String?
    let restaurantType: String
    let coordinate: CLLocationCoordinate2D
    
    //B. Initialize the annotation object (MKANnotation object)
    init(title: String, type: String, coordinate: CLLocationCoordinate2D){
        self.restaurantTitle = title
        self.restaurantType = type
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String?{
        return restaurantTitle
    }
}
