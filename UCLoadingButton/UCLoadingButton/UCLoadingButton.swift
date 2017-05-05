//
//  UCLoadingButton.swift
//  UCLoadingButton
//
//  Created by Mohamed on 5/05/17.
//  Copyright © 2017 B&D. All rights reserved.
//

import UIKit

class UCLoadingButton: UIButton {
    
    
    //MARK: Propertie
    
    var originalButtonText: String?
    var activityIndicator: UIActivityIndicatorView!
    var isLoading:Bool = false
    
    //MARK: Functions
    
    func showLoading() {
        originalButtonText = self.titleLabel?.text
        self.setTitle("", for: UIControlState.normal)
        
        if (activityIndicator == nil) {
            activityIndicator = createActivityIndicator()
        }
        isLoading = true
        showSpinning()
    }
    
    func hideLoading() {
        self.setTitle(originalButtonText, for: UIControlState.normal)
        isLoading = false
        activityIndicator.stopAnimating()
    }
    
    //MARK: Private functions
    
    fileprivate func createActivityIndicator() -> UIActivityIndicatorView {
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.hidesWhenStopped = true
        activityIndicator.color = UIColor.white
        return activityIndicator
    }
    
    fileprivate func showSpinning() {
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(activityIndicator)
        centerActivityIndicatorInButton()
        activityIndicator.startAnimating()
    }
    
    fileprivate func centerActivityIndicatorInButton() {
        let xCenterConstraint = NSLayoutConstraint(item: self, attribute: .centerX, relatedBy: .equal, toItem: activityIndicator, attribute: .centerX, multiplier: 1, constant: 0)
        self.addConstraint(xCenterConstraint)
        
        let yCenterConstraint = NSLayoutConstraint(item: self, attribute: .centerY, relatedBy: .equal, toItem: activityIndicator, attribute: .centerY, multiplier: 1, constant: 0)
        self.addConstraint(yCenterConstraint)
    }
    
}

