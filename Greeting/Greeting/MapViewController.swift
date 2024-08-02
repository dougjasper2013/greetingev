//
//  MapViewController.swift
//  Greeting
//
//  Created by Douglas Jasper on 2024-08-02.
//

import UIKit
import MapKit
import CoreLocation


class MapViewController: UIViewController, CLLocationManagerDelegate {
    
    let locationManager = CLLocationManager()

    @IBOutlet weak var mapView: MKMapView!
   
    // MARK: - Actions
    @IBAction func showUser() {
        let region = MKCoordinateRegion(center: mapView.userLocation.coordinate,
                                        latitudinalMeters: 1000,
                                        longitudinalMeters: 1000)
        mapView.setRegion(mapView.regionThatFits(region), animated: true)
    }
    
    @IBAction func getLocation() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        locationManager.startUpdatingLocation()
     }
    
    // MARK: - CLLocationManagerDelegate
    func locationManager(_ manager: CLLocationManager, didFailWithError error: any Error) {
        print("didFailWithError \(error.localizedDescription)")
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let newLocation = locations.last!
        print("didUpdateLocations \(newLocation)")
    }

}
