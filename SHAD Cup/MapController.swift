//
//  MapController.swift
//  SHAD Cup
//
//  Created by Ibrahim Irfan on 2017-07-22.
//  Copyright © 2017 Ibrahim Irfan. All rights reserved.
//

import UIKit
import MapKit

class MapController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var phantomButton: UIButton!
    let locationManager = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Map");
        self.view.backgroundColor = UIColor(red: 142.0/255.0, green: 198.0/255.0, blue: 63.0/255.0, alpha: 1.0)
        phantomButton.layer.cornerRadius = 15

        mapView.delegate = self
        mapView.showsPointsOfInterest = true
        mapView.showsTraffic = true
        mapView.showsUserLocation = true
        
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled(){
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
        }
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = CLLocationCoordinate2D(latitude: 3.4634799,longitude: -79.7041529)
        annotation.title = "Approved DriveBud Garage"
        mapView.addAnnotation(annotation)
        
        let sourceCoord = locationManager.location?.coordinate
        let dest = CLLocationCoordinate2DMake(43.437111,-79.7059447)
        
        let sourcePlacemark = MKPlacemark(coordinate: sourceCoord!)
        let destPlacemark = MKPlacemark(coordinate: dest)
        
        
        let sourceItem = MKMapItem(placemark: sourcePlacemark)
        let destItem = MKMapItem(placemark: destPlacemark)
        
        let directionRequest = MKDirectionsRequest()
        directionRequest.source = sourceItem
        directionRequest.destination = destItem
        directionRequest.transportType = .automobile
        
        let directions = MKDirections(request: directionRequest)
        
        directions.calculate(completionHandler: {
            response, error in
            
            let route = response?.routes[0]
            self.mapView.add((route?.polyline)!, level: .aboveRoads)
            
            let rekt =  route?.polyline.boundingMapRect
            self.mapView.setRegion(MKCoordinateRegionForMapRect(rekt!), animated: true)
        
        })
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let renderer = MKPolylineRenderer(overlay: overlay)
        renderer.strokeColor = UIColor.blue
        
        renderer.lineWidth = 5.0
        return renderer
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        // Better to make this class property
        let annotationIdentifier = "AnnotationIdentifier"
        
        var annotationView: MKAnnotationView?
        if let dequeuedAnnotationView = mapView.dequeueReusableAnnotationView(withIdentifier: annotationIdentifier) {
            annotationView = dequeuedAnnotationView
            annotationView?.annotation = annotation
        }
        else {
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: annotationIdentifier)
            annotationView?.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
        }
        
        if let annotationView = annotationView {
            // Configure your annotation view here
            annotationView.canShowCallout = true
            annotationView.image = UIImage(named: "Wrench")
        }
        
        return annotationView
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
