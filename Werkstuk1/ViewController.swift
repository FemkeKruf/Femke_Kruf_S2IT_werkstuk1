//
//  ViewController.swift
//  Werkstuk1
//
//  Created by KRUF Femke (s) on 31/05/2018.
//  Copyright © 2018 KRUF Femke (s). All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    var persoon = Persoon()
    
    @IBOutlet weak var naam: UILabel!
    @IBOutlet weak var adres: UILabel!
    @IBOutlet weak var postcode: UILabel!
    @IBOutlet weak var gemeente: UILabel!
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var telnummer: UILabel!
    
    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
        
        self.naam.text = persoon.voornaam + " " + persoon.naam
        self.adres.text = persoon.adres.straat + " " + persoon.adres.huisnummer
        self.postcode.text = persoon.adres.postcode
        self.gemeente.text = persoon.adres.gemeente
        self.foto.image = persoon.foto
        self.telnummer.text = persoon.telnummer
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(_mapView: MKMapView, didUpdate userlocation: MKUserLocation) {
        let center = persoon.coordinaten
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        mapView.setRegion(region, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let nextVC = segue.destination as? ViewControllerFoto
        {
            nextVC.foto = self.persoon.foto
            
        }
    }

}

