//
//  RecordViewController.swift
//  Walkie
//
//  Created by Patrick Samuel Owen Saritua Sinaga on 24/05/23.
//

import CoreLocation
import MapKit
import UIKit


class RecordViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet var imageButtonStart: UIImageView!
    @IBOutlet var mapView: MKMapView!
    
    @IBOutlet var kmLabel: UILabel!
    let manager = CLLocationManager()
    private var startLocation: CLLocation?
    private var prevLocation: CLLocation?
    private let regionInMeter:Double = 10000
    var totalDistance : Double = 0
    
//    private let distanceSubject = PublishSubject<CLLocationDistance>()

//    private var distanceSubjectObservables: Observable<CLLocationDistance>{
//        return distanceSubject.asObservable()
//    }
    
    
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        imageButtonStart.isUserInteractionEnabled = true
        imageButtonStart.addGestureRecognizer(tapGestureRecognizer)
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.delegate = self
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }
    
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        if let location = locations.first {
//            manager.stopUpdatingLocation()
        guard let location = locations.last else {return}
        
        let prevvLocation = prevLocation ?? location
        let distance = location.distance(from: prevvLocation)
        
//        if startLocation == nil {
//            startLocation = nil
//        }
        
//        let endLocation = location
        
//        let distance = (pre?.distance(from: endLocation)) ?? 10 / 1000
            render(location)
        //}
        
        kmLabel.text = "\(distance)"
        
        
    }
    
    func render (_ location: CLLocation) {
        
        let coordinate = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        mapView.setRegion(region, animated: true)
        
        let pin = MKPointAnnotation()
        pin.coordinate = coordinate
        mapView.addAnnotation(pin)
        
    }
    
    
    
    @IBAction func startButton(_ sender: Any) {
        
        manager.startUpdatingLocation()
        
        
    }
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        
//        manager.startUpdatingLocation()
        
    }
}
