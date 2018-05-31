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

class ViewController: UIViewController {

    var persoon = Persoon()
    
    @IBOutlet weak var naam: UILabel!
    @IBOutlet weak var adres: UILabel!
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var telnummer: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.naam.text = persoon.voornaam + " " + persoon.naam
        self.adres.text = persoon.adres.straat + " " + persoon.adres.huisnummer + ", " + persoon.adres.postcode + " " + persoon.adres.gemeente
        self.foto.image = persoon.foto
        self.telnummer.text = persoon.telnummer
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

