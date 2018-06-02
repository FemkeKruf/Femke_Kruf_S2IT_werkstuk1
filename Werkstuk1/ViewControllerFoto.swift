//
//  ViewControllerFoto.swift
//  Werkstuk1
//
//  Created by student on 31/05/2018.
//  Copyright © 2018 KRUF Femke (s). All rights reserved.
//

import UIKit

class ViewControllerFoto: UIViewController {

    var foto: UIImage?
    
    @IBOutlet weak var fotoView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.fotoView.image = self.foto
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
