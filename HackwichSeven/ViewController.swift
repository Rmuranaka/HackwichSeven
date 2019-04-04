//
//  ViewController.swift
//  HackwichSeven
//
//  Created by Ryan Muranaka on 4/4/19.
//  Copyright © 2019 Ryan Muranaka. All rights reserved.
//

import UIKit
import MapKit
//In order to set our map to view West Oahu, we need to import the CoreLocation Framework
import CoreLocation

class ViewController: UIViewController {
//Create an IBOutlet and name it mapView
    //Recieve error; need to import the Mapkit framework
    @IBOutlet var mapView: MKMapView!
    
    //Declare a constant "intialLocation" - which is a CLLocation and assign it to the latitude and longitude corrdinates for the UHWO campus
    let initialLocation = CLLocation(latitude: 21.346470, longitude: -158.080098)
    //Declqre a constant "regionRadius" - which represents the radius in meters that the map will display from "initalLocation" (UHWO location)
    let regionRadius: CLLocationDistance = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Need to call the centerMapOnLocation function to display the map when it first opens
        centerMapOnLocation(location: initialLocation)
        
        //Create an Restaurant object and set all the arguments to each of the three paramters in Restaurant.swift
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.361888, longitude: -158.055725))
        mapView.addAnnotation(restaurantOne)
    }
    
    //This function centers the map around the CLLocation by setting the coordinate region and map region
    func centerMapOnLocation(location: CLLocation){
        
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate,latitudinalMeters: regionRadius,longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }

}

