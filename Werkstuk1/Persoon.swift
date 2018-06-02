//
//  Persoon.swift
//  Werkstuk1
//
//  Created by KRUF Femke (s) on 31/05/2018.
//  Copyright © 2018 KRUF Femke (s). All rights reserved.
//

import UIKit
import CoreLocation
import MapKit


class Persoon: NSObject, MKAnnotation{
    
    var naam: String
    var voornaam: String
    var foto: UIImage
    var adres: Adres
    var coordinate: CLLocationCoordinate2D
    var telnummer: String
    
    init(naam: String, voornaam: String, foto: UIImage, adres: Adres, coordinate: CLLocationCoordinate2D, telnummer: String) {
        self.naam = naam
        self.voornaam = voornaam
        self.foto = foto
        self.adres = adres
        self.coordinate = coordinate
        self.telnummer = telnummer
    }
    
}
