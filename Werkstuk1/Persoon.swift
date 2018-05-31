//
//  Persoon.swift
//  Werkstuk1
//
//  Created by KRUF Femke (s) on 31/05/2018.
//  Copyright © 2018 KRUF Femke (s). All rights reserved.
//

import UIKit
import CoreLocation

class Persoon: NSObject {
    var naam: String = ""
    var voornaam: String = ""
    var foto: UIImage
    var adres: Adres
    var coordinaten: CLLocationCoordinate2D
    var telnummer: String = ""
    

    
    init(naam: String, voornaam: String, foto: UIImage, adres: Adres, coordinaten: CLLocationCoordinate2D, telnummer: String) {
        self.naam = naam
        self.voornaam = voornaam
        self.foto = foto
        self.adres = adres
        self.coordinaten = coordinaten
        self.telnummer = telnummer
    }
    
}
