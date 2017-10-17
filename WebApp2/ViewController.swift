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
    
     func goBtnAction(_ sender: UIButton) {
        
        let urlCheck = goOrSearchURL(
            checkURL: urlTextFieldOutlet.text!,
            searchURLField: searchURL,
            isSearchable: searchIsOn)
     print(urlCheck.url)
    //print(urlCheck.isGoing)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

