//
//  Adres.swift
//  Werkstuk1
//
//  Created by KRUF Femke (s) on 31/05/2018.
//  Copyright © 2018 KRUF Femke (s). All rights reserved.
//

import UIKit

class Adres: NSObject {
    var straat: String
    var huisnummer: Int
    var postcode: String
    var gemeente: String
    
    init(straat: String, huisnummer: Int, postcode: String, gemeente: String) {
        self.straat = straat
        self.huisnummer = huisnummer
        self.postcode = postcode
        self.gemeente = gemeente
    }
}
