//
//  TableViewController.swift
//  Werkstuk1
//
//  Created by KRUF Femke (s) on 31/05/2018.
//  Copyright © 2018 KRUF Femke (s). All rights reserved.
//

import UIKit
import CoreLocation

class TableViewController: UITableViewController {
    
    var personen = [Persoon]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let adres1 = Adres(straat: "Laerbeeklaan", huisnummer: "119", postcode: "1090", gemeente: "Jette")
        let coordinaten1 = CLLocationCoordinate2D(latitude: 50.850833, longitude: 4.346983)
        let persoon1 = Persoon(naam: "Widdow", voornaam: "Black", foto: #imageLiteral(resourceName: "bw"), adres: adres1, coordinaten: coordinaten1, telnummer: "+316 118 71 001")
        personen.append(persoon1)
        
        let adres2 = Adres(straat: "Laerbeeklaan", huisnummer: "119", postcode: "1090", gemeente: "Jette")
        let coordinaten2 = CLLocationCoordinate2D(latitude: 50.843386, longitude: 4.318870)
        let persoon2 = Persoon(naam: "Man", voornaam: "Spider", foto: #imageLiteral(resourceName: "sm"), adres: adres2, coordinaten: coordinaten2, telnummer: "+316 118 71 002")
        personen.append(persoon2)
        
        let adres3 = Adres(straat: "Laerbeeklaan", huisnummer: "119", postcode: "1090", gemeente: "Jette")
        let coordinaten3 = CLLocationCoordinate2D(latitude: 50.839668, longitude: 4.325433)
        let persoon3 = Persoon(naam: "Man", voornaam: "Iron", foto: #imageLiteral(resourceName: "im"), adres: adres3, coordinaten: coordinaten3, telnummer: "+316 118 71 003")
        personen.append(persoon3)
        
        let adres4 = Adres(straat: "Laerbeeklaan", huisnummer: "119", postcode: "1090", gemeente: "Jette")
        let coordinaten4 = CLLocationCoordinate2D(latitude: 50.844226, longitude: 4.327051)
        let persoon4 = Persoon(naam: "Odinson", voornaam: "Thor", foto: #imageLiteral(resourceName: "to"), adres: adres4, coordinaten: coordinaten4, telnummer: "+316 118 71 004")
        personen.append(persoon4)
        
        let adres5 = Adres(straat: "Laerbeeklaan", huisnummer: "119", postcode: "1090", gemeente: "Jette")
        let coordinaten5 = CLLocationCoordinate2D(latitude: 50.846049, longitude: 4.323972)
        let persoon5 = Persoon(naam: "Eye", voornaam: "Hawk", foto: #imageLiteral(resourceName: "he"), adres: adres5, coordinaten: coordinaten5, telnummer: "+316 118 71 004")
        personen.append(persoon5)
        
        let adres6 = Adres(straat: "Laerbeeklaan", huisnummer: "119", postcode: "1090", gemeente: "Jette")
        let coordinaten6 = CLLocationCoordinate2D(latitude: 50.844628, longitude: 4.322369)
        let persoon6 = Persoon(naam: "Odinson", voornaam: "Loki", foto: #imageLiteral(resourceName: "lo"), adres: adres6, coordinaten: coordinaten6, telnummer: "+316 118 71 006")
        personen.append(persoon6)
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return personen.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = self.personen[indexPath.row].voornaam + " " + self.personen[indexPath.row].naam
        cell.imageView?.image = self.personen[indexPath.row].foto
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let nextVC = segue.destination as? ViewController
        {
            let indexPath = self.tableView.indexPathForSelectedRow!
            nextVC.persoon = self.personen[indexPath.row]
            
        }
    }
    

}
