//
//  ViewController.swift
//  UCLoadingButton
//
//  Created by Mohamed on 5/05/17.
//  Copyright © 2017 B&D. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loadingButton: UCLoadingButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func click(_ sender: Any) {
        self.loadingButton.isLoading ? self.loadingButton.hideLoading() : self.loadingButton.showLoading()
    }

}

