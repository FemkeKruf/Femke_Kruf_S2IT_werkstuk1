//
//  ViewControllerMap.swift
//  Werkstuk1
//
//  Created by student on 31/05/2018.
//  Copyright © 2018 KRUF Femke (s). All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewControllerMap: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    var locationManager = CLLocationManager()
    var personen = [Persoon]()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        tabBarItem = UITabBarItem(title: "Map", image: UIImage(), tag: 1 )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let adres1 = Adres(straat: "Laerbeeklaan", huisnummer: "119", postcode: "1090", gemeente: "Jette")
        let coordinaten1 = CLLocationCoordinate2D(latitude: 50.850833, longitude: 4.346983)
        let persoon1 = Persoon(naam: "Widow", voornaam: "Black", foto: #imageLiteral(resourceName: "bw"), adres: adres1, coordinate: coordinaten1, telnummer: "+316 118 71 001")
        personen.append(persoon1)
        
        let adres2 = Adres(straat: "Laerbeeklaan", huisnummer: "119", postcode: "1090", gemeente: "Jette")
        let coordinaten2 = CLLocationCoordinate2D(latitude: 50.843386, longitude: 4.318870)
        let persoon2 = Persoon(naam: "Man", voornaam: "Spider", foto: #imageLiteral(resourceName: "sm"), adres: adres2, coordinate: coordinaten2, telnummer: "+316 118 71 002")
        personen.append(persoon2)
        
        let adres3 = Adres(straat: "Laerbeeklaan", huisnummer: "119", postcode: "1090", gemeente: "Jette")
        let coordinaten3 = CLLocationCoordinate2D(latitude: 50.839668, longitude: 4.325433)
        let persoon3 = Persoon(naam: "Man", voornaam: "Iron", foto: #imageLiteral(resourceName: "im"), adres: adres3, coordinate: coordinaten3, telnummer: "+316 118 71 003")
        personen.append(persoon3)
        
        let adres4 = Adres(straat: "Laerbeeklaan", huisnummer: "119", postcode: "1090", gemeente: "Jette")
        let coordinaten4 = CLLocationCoordinate2D(latitude: 50.844226, longitude: 4.327051)
        let persoon4 = Persoon(naam: "Odinson", voornaam: "Thor", foto: #imageLiteral(resourceName: "to"), adres: adres4, coordinate: coordinaten4, telnummer: "+316 118 71 004")
        personen.append(persoon4)
        
        let adres5 = Adres(straat: "Laerbeeklaan", huisnummer: "119", postcode: "1090", gemeente: "Jette")
        let coordinaten5 = CLLocationCoordinate2D(latitude: 50.846049, longitude: 4.323972)
        let persoon5 = Persoon(naam: "Eye", voornaam: "Hawk", foto: #imageLiteral(resourceName: "he"), adres: adres5, coordinate: coordinaten5, telnummer: "+316 118 71 004")
        personen.append(persoon5)
        
        let adres6 = Adres(straat: "Laerbeeklaan", huisnummer: "119", postcode: "1090", gemeente: "Jette")
        let coordinaten6 = CLLocationCoordinate2D(latitude: 50.844628, longitude: 4.322369)
        let persoon6 = Persoon(naam: "Odinson", voornaam: "Loki", foto: #imageLiteral(resourceName: "lo"), adres: adres6, coordinate: coordinaten6, telnummer: "+316 118 71 006")
        personen.append(persoon6)
        
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
        
        for persoon in personen {
            self.mapView.addAnnotation(persoon)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        mapView.setRegion(region, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
