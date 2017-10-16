//
//  ViewController.swift
//  WebApp2
//
//  Created by ST1 on 16.10.2017.
//  Copyright © 2017 Kugim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var goBtnOutlet: UIButton!
    @IBOutlet weak var urlTextFieldOutlet: UITextField!
    
    @IBAction func goBtnAction(_ sender: UIButton) {
      let url = goOrSearchURL(urlTextFieldOutlet.text!)
      print(url)
    }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

