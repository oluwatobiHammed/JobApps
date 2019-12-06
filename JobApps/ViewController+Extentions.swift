//
//  ViewController+Extentions.swift
//  JobApps
//
//  Created by user on 04/12/2019.
//  Copyright © 2019 Oladipupo Oluwatobi. All rights reserved.
//

import Foundation
import UIKit
import FlexibleSteppedProgressBar

extension ViewController: UITextViewDelegate {
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = "     Address"
            textView.textColor = UIColor.lightGray
        }
    }
    
}


extension ViewController: FlexibleSteppedProgressBarDelegate {
     // MARK: -  SetupProgressBar
       func setupProgressBar() {
           progressBar = FlexibleSteppedProgressBar()
           progressBar.translatesAutoresizingMaskIntoConstraints = false
           self.view.addSubview(progressBar)
           
           // iOS9+ auto layout code
           let horizontalConstraint = progressBar.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
           let verticalConstraint = progressBar.topAnchor.constraint(equalTo: accountLabel.topAnchor,constant: 90
           )
           let widthConstraint = progressBar.widthAnchor.constraint(equalToConstant: 320)
           let heightConstraint = progressBar.heightAnchor.constraint(equalToConstant: 150)
           NSLayoutConstraint.activate([horizontalConstraint, verticalConstraint, widthConstraint, heightConstraint])
           
           // Customise the progress bar here
           progressBar.numberOfPoints = 3
           progressBar.lineHeight = 1
           progressBar.centerLayerTextColor = .white
           progressBar.radius = 13
           progressBar.progressRadius = 13
           progressBar.progressLineHeight = 3
           progressBar.delegate = self
           progressBar.lastStateCenterColor = .gray
           progressBar.selectedBackgoundColor = .systemOrange
           progressBar.selectedOuterCircleStrokeColor = backgroundColor
           progressBar.selectedOuterCircleLineWidth = 15
           progressBar.backgroundShapeColor = .systemGray3
           progressBar.lastStateOuterCircleStrokeColor = backgroundColor
           progressBar.currentSelectedCenterColor = .systemOrange
           progressBar.stepTextColor = textColorHere
           progressBar.currentSelectedTextColor = .black
           progressBar.viewBackgroundColor = .clear
        
           //progressBar.previousSelectedTextColor = .black
           
           progressBar.currentIndex = 0
           
       }
       
       
       func progressBar(_ progressBar: FlexibleSteppedProgressBar,
                        didSelectItemAtIndex index: Int) {
           progressBar.currentIndex = index
           if index > maxIndex {
               maxIndex = index
               progressBar.completedTillIndex = maxIndex
           }
       }
       
       func progressBar(_ progressBar: FlexibleSteppedProgressBar,
                        canSelectItemAtIndex index: Int) -> Bool {
           return true
       }
       
       func progressBar(_ progressBar: FlexibleSteppedProgressBar,
                        textAtIndex index: Int, position: FlexibleSteppedProgressBarTextLocation) -> String {
    
            if progressBar == progressBar {
                      if position == FlexibleSteppedProgressBarTextLocation.bottom {
                          switch index {
                              
                          case 0: return "Personal"
                          case 1: return "Contact"
                          case 2: return "Upload"
                          default: return "Date"
                              
                          }
                      }else if position == FlexibleSteppedProgressBarTextLocation.center {
                          switch index {
                              
                          case 0: return "1"
                          case 1: return "2"
                          case 2: return "3"
                          default: return "0"
                              
                          }
                      }
                  }
           return ""
       }
}
