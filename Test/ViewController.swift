//
//  ViewController.swift
//  Test
//
//  Created by  Stefan Nestorov on 12/15/16.
//  Copyright © 2016 Stefan Nestorov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var stringToSend = ""

    
    @IBAction func didPressTestButton(_ sender: Any) {
        
        //Modify the text...
        stringToSend = "test string..."
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "TestSegue" ) {
            if let destinationVC = segue.destination as? SecondViewController {
                destinationVC.someString = stringToSend
            }
        }
        
    }

}

