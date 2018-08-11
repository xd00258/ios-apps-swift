//
//  ViewController.swift
//  Finding User Location
//
//  Created by Victor Vuong on 2017-05-03.
//  Copyright © 2017 Victor Vuong. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    @IBOutlet var map: MKMapView!
    
    var locationManager = CLLocationManager()

    @IBAction func removeButton(_ sender: Any) {
        let allAnnotations = map.annotations
        map.removeAnnotations(allAnnotations)
    }
    @IBAction func goButton(_ sender: Any) {
      locationManager.stopUpdatingLocation()
    }
    
    @IBAction func startButton(_ sender: Any) {
       locationManager.startUpdatingLocation()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest   //best accuracy of user
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        let uilpgr = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.longpress(gestureRecognizer:)))
        
        uilpgr.minimumPressDuration = 2
        
        map.addGestureRecognizer(uilpgr)
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func longpress(gestureRecognizer: UIGestureRecognizer) {
        
        if gestureRecognizer.state == UIGestureRecognizerState.began {
        
            let touchPoint = gestureRecognizer.location(in: self.map)
        
            let coordinate = map.convert(touchPoint, toCoordinateFrom: self.map)
        
            let annotation = MKPointAnnotation()
        
            annotation.coordinate = coordinate
            annotation.title = "Destination"
            annotation.subtitle = ""
        
            map.addAnnotation(annotation)
        
        }
    }


    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let userLocation: CLLocation = locations[0]
        
        let latitude = userLocation.coordinate.latitude
        
        let longitude = userLocation.coordinate.longitude
        
        let latDelta: CLLocationDegrees = 0.05
        let lonDelta: CLLocationDegrees = 0.05
        
        let span = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
        
        let location = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        let region = MKCoordinateRegion(center: location, span: span)
       
       self.map.setRegion(region, animated: true)                  //FOLLOWS THE USER
        
        self.map.showsUserLocation = true
        
        let user = CLLocation(latitude: latitude, longitude: longitude)
        
        //THIS WORKS TOO!!!!!!!!!
        for annotation in map.annotations as [MKAnnotation] {
            let latitude2 = annotation.coordinate.latitude
            let longitude2 = annotation.coordinate.longitude
            let anotherLocation = CLLocation(latitude: latitude2, longitude: longitude2)
            let distance = user.distance(from:anotherLocation)
        
            print(distance)
        }
        
        
        //THIS WORKS!!!!!
//        let latitude2 = 1
//        let longitude2 = 1
//        let anotherLocation = CLLocation(latitude: CLLocationDegrees(latitude2), longitude: CLLocationDegrees(longitude2))
//        let distance = user.distance(from:anotherLocation)
//        
//        print(distance)
        
    }
    
}

