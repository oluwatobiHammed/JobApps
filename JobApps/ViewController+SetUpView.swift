//
//  ViewController+SetUpView.swift
//  JobApps
//
//  Created by user on 04/12/2019.
//  Copyright © 2019 Oladipupo Oluwatobi. All rights reserved.
//

import Foundation
import UIKit

extension ViewController {
    
    // MARK: - Constrains
        func  setUpLayout(){
           
            // MARK: - AccountLabel Constrains
           accountLabel.topAnchor.constraint(equalTo: self.containerView.topAnchor, constant: 0).isActive = true
           accountLabel.leadingAnchor.constraint(equalTo: self.containerView.leadingAnchor, constant: 25).isActive = true
           accountLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
           accountLabel.heightAnchor.constraint(equalToConstant: 200).isActive = true
           
           
           // MARK: - EmailLabel Constrains
           let verticalConstraint = emailText.topAnchor.constraint(equalTo: containerView.topAnchor,constant: 190)
           let horizontalConstraint = emailText.centerXAnchor.constraint(equalTo: self.containerView.centerXAnchor)
           let widthConstraint = emailText.widthAnchor.constraint(equalToConstant: 325)
           let heightConstraint = emailText.heightAnchor.constraint(equalToConstant: 100)
           NSLayoutConstraint.activate([horizontalConstraint,verticalConstraint, widthConstraint, heightConstraint])
           
           // MARK: - PhoneLabel Constrains
           let verticalConstraint3 = phoneText.topAnchor.constraint(equalTo: containerView.topAnchor,constant: 285)
           let horizontalConstraint3 = phoneText.centerXAnchor.constraint(equalTo: self.containerView.centerXAnchor)
           let widthConstraint3 = phoneText.widthAnchor.constraint(equalToConstant: 325)
           let heightConstraint3 = phoneText.heightAnchor.constraint(equalToConstant: 100)
           NSLayoutConstraint.activate([horizontalConstraint3,verticalConstraint3, widthConstraint3, heightConstraint3])
           
           
            // MARK: - StateLabel Constrains
           let verticalConstraint5 = stateText.topAnchor.constraint(equalTo: containerView.topAnchor,constant: 385)
           let horizontalConstraint5 = stateText.centerXAnchor.constraint(equalTo: self.containerView.centerXAnchor)
           let widthConstraint5 = stateText.widthAnchor.constraint(equalToConstant: 325)
           let heightConstraint5 = stateText.heightAnchor.constraint(equalToConstant: 100)
           NSLayoutConstraint.activate([horizontalConstraint5,verticalConstraint5, widthConstraint5, heightConstraint5])
           
           
            // MARK: - CityLabel Constrains
           let verticalConstraint7 = cityText.topAnchor.constraint(equalTo: containerView.topAnchor,constant: 485)
           let horizontalConstraint7 = cityText.centerXAnchor.constraint(equalTo: self.containerView.centerXAnchor)
           let widthConstraint7 = cityText.widthAnchor.constraint(equalToConstant: 325)
           let heightConstraint7 = cityText.heightAnchor.constraint(equalToConstant: 100)
           NSLayoutConstraint.activate([horizontalConstraint7,verticalConstraint7, widthConstraint7, heightConstraint7])
           
           // MARK: - BranchLabel Constrains
           let verticalConstraint11 = branchText.topAnchor.constraint(equalTo: containerView.topAnchor,constant: 775)
           let horizontalConstraint11 = branchText.centerXAnchor.constraint(equalTo: self.containerView.centerXAnchor)
           let widthConstraint11 = branchText.widthAnchor.constraint(equalToConstant: 325)
           let heightConstraint11 = branchText.heightAnchor.constraint(equalToConstant: 100)
           NSLayoutConstraint.activate([horizontalConstraint11,verticalConstraint11, widthConstraint11, heightConstraint11])
           
           
           // MARK: - AddressLabel Constrains
           let verticalConstraint8 = addressText.topAnchor.constraint(equalTo: containerView.topAnchor,constant: 580)
           let horizontalConstraint8 = addressText.centerXAnchor.constraint(equalTo: self.containerView.centerXAnchor)
           let widthConstraint8 = addressText.widthAnchor.constraint(equalToConstant: 325)
           let heightConstraint8 = addressText.heightAnchor.constraint(equalToConstant: 100)
           NSLayoutConstraint.activate([horizontalConstraint8,verticalConstraint8, widthConstraint8, heightConstraint8])
           
            // MARK: - EmailTextField Constrains
            let horizontalConstraint1 = emailTextField.centerXAnchor.constraint(equalTo: self.containerView.centerXAnchor)
            let verticalConstraint1 = emailTextField.topAnchor.constraint(equalTo: accountLabel.topAnchor,constant: 255)
            let widthConstraint1 = emailTextField.widthAnchor.constraint(equalToConstant: 330)
            let heightConstraint1 = emailTextField.heightAnchor.constraint(equalToConstant: 60)
            NSLayoutConstraint.activate([horizontalConstraint1, verticalConstraint1, widthConstraint1, heightConstraint1])
           
           
            // MARK: - PhoneTextField Constrains
            let horizontalConstraint2 = phoneTextField.centerXAnchor.constraint(equalTo: self.containerView.centerXAnchor)
            let verticalConstraint2 = phoneTextField.topAnchor.constraint(equalTo: accountLabel.topAnchor,constant: 350)
            let widthConstraint2 = phoneTextField.widthAnchor.constraint(equalToConstant: 330)
            let heightConstraint2 = phoneTextField.heightAnchor.constraint(equalToConstant: 60)
            NSLayoutConstraint.activate([horizontalConstraint2, verticalConstraint2, widthConstraint2, heightConstraint2])
           
             // MARK: - AddressTextField Constrains
           let horizontalConstraint9 = addressTextField.centerXAnchor.constraint(equalTo:self.containerView.centerXAnchor)
             let verticalConstraint9 = addressTextField.topAnchor.constraint(equalTo:accountLabel.topAnchor,constant: 645)
             let widthConstraint9 = addressTextField.widthAnchor.constraint(equalToConstant: 330)
             let heightConstraint9 = addressTextField.heightAnchor.constraint(equalToConstant: 150)
             NSLayoutConstraint.activate([horizontalConstraint9, verticalConstraint9, widthConstraint9, heightConstraint9])
           
           // MARK: - BranchTextField Constrains
           let horizontalConstraint12 = branchTextField.centerXAnchor.constraint(equalTo: self.containerView.centerXAnchor)
           let verticalConstraint12 = branchTextField.topAnchor.constraint(equalTo: accountLabel.topAnchor,constant: 840)
           let widthConstraint12 = branchTextField.widthAnchor.constraint(equalToConstant: 330)
           let heightConstraint12 = branchTextField.heightAnchor.constraint(equalToConstant: 60)
       NSLayoutConstraint.activate([horizontalConstraint12, verticalConstraint12, widthConstraint12,heightConstraint12])
           
           // MARK: - DropDown Constrains
           let horizontalConstraint4 = dropDown.centerXAnchor.constraint(equalTo: self.containerView.centerXAnchor)
           let verticalConstraint4 = dropDown.topAnchor.constraint(equalTo: accountLabel.topAnchor,constant: 450)
           let widthConstraint4 = dropDown.widthAnchor.constraint(equalToConstant: 330)
           let heightConstraint4 = dropDown.heightAnchor.constraint(equalToConstant: 60)
           NSLayoutConstraint.activate([horizontalConstraint4, verticalConstraint4, widthConstraint4, heightConstraint4])
           
           // MARK: - CityDropDown Constrains
            let horizontalConstraint6 = cityDropDown.centerXAnchor.constraint(equalTo: self.containerView.centerXAnchor)
            let verticalConstraint6 = cityDropDown.topAnchor.constraint(equalTo: accountLabel.topAnchor,constant: 550)
            let widthConstraint6 = cityDropDown.widthAnchor.constraint(equalToConstant: 330)
            let heightConstraint6 = cityDropDown.heightAnchor.constraint(equalToConstant: 60)
            NSLayoutConstraint.activate([horizontalConstraint6, verticalConstraint6, widthConstraint6, heightConstraint6])
            
            // MARK: - SupportButton Constrains

            let verticalConstraint14 = supportButton.topAnchor.constraint(equalTo: self.branchTextField.bottomAnchor,constant: 30)
             supportButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30).isActive = true
             let widthConstraint14 = supportButton.widthAnchor.constraint(equalToConstant: 55)
             let heightConstraint14 = supportButton.heightAnchor.constraint(equalToConstant: 55)
             NSLayoutConstraint.activate([verticalConstraint14, widthConstraint14, heightConstraint14])
            
            
            // MARK: - NextButton Constrains
            let horizontalConstraint15 = nextButton.centerXAnchor.constraint(equalTo: self.containerView.centerXAnchor)
            let verticalConstraint15 = nextButton.topAnchor.constraint(equalTo: branchTextField.topAnchor,constant: 190)
            let widthConstraint15 = nextButton.widthAnchor.constraint(equalToConstant: 330)
            let heightConstraint15 = nextButton.heightAnchor.constraint(equalToConstant: 50)
            NSLayoutConstraint.activate([horizontalConstraint15, verticalConstraint15, widthConstraint15, heightConstraint15])
            
       }
       
}
