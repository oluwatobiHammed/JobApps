//
//  ViewController.swift
//  JobApps
//
//  Created by user on 02/12/2019.
//  Copyright © 2019 Oladipupo Oluwatobi. All rights reserved.
//

import UIKit
import FlexibleSteppedProgressBar

class ViewController: UIViewController {
     // MARK: - Properties
    lazy var contentViewSize = CGSize(width: self.view.frame.width, height: self.view.frame.height + 500)
    
     // MARK: - Views
    lazy var scrollView: UIScrollView = {
        let view = UIScrollView(frame: .zero)
        view.backgroundColor = .systemGray6
        view.frame = self.view.bounds
        view.contentSize = contentViewSize
        return view
    }()
    
    lazy var containerView: UIScrollView = {
        let view = UIScrollView(frame: .zero)
        view.backgroundColor = .systemGray6
        view.frame.size = contentViewSize
        return view
    }()
    
    
    // MARK: - Properties
    // let's avoid polluting viewDidload
    // {} referred to as closure, or anon. functions
    let accountLabel: UILabel = {
        let openAccount = UILabel()
        openAccount.text =  "Open New Account"
        openAccount.textAlignment = .left
        openAccount.font = UIFont(name: openAccount.font.fontName, size: 16)
        openAccount.font = UIFont.boldSystemFont(ofSize: 20)
        openAccount.translatesAutoresizingMaskIntoConstraints = false
        return openAccount
    }()
    
    let emailText: UILabel = {
        let email = UILabel()
        email.text =  "Email"
        email.textAlignment = .left
        email.font = UIFont(name: email.font!.fontName, size: 10)
        email.font = UIFont.boldSystemFont(ofSize: 12)
        email.textColor = .some(.lightGray)
        email.translatesAutoresizingMaskIntoConstraints = false
        return email
    }()
    
    let phoneText: UILabel = {
        let phone = UILabel()
        phone.text =  "Phone"
        phone.textAlignment = .left
        phone.font = UIFont(name: phone.font!.fontName, size: 10)
        phone.font = UIFont.boldSystemFont(ofSize: 12)
        phone.textColor = .some(.lightGray)
        phone.translatesAutoresizingMaskIntoConstraints = false
        return phone
    }()
    
    let stateText: UILabel = {
        let state = UILabel()
        state.text =  "State"
        state.textAlignment = .left
        state.font = UIFont(name: state.font!.fontName, size: 10)
        state.font = UIFont.boldSystemFont(ofSize: 12)
        state.textColor = .some(.lightGray)
        state.translatesAutoresizingMaskIntoConstraints = false
        return state
    }()
    
    let cityText: UILabel = {
        let city = UILabel()
        city.text =  "City"
        city.textAlignment = .left
        city.font = UIFont(name: city.font!.fontName, size: 10)
        city.font = UIFont.boldSystemFont(ofSize: 12)
        city.textColor = .some(.lightGray)
        city.translatesAutoresizingMaskIntoConstraints = false
        return city
    }()
    
    let addressText: UILabel = {
        let address = UILabel()
        address.text =  "Address"
        address.textAlignment = .left
        address.font = UIFont(name: address.font!.fontName, size: 10)
        address.font = UIFont.boldSystemFont(ofSize: 12)
        address.textColor = .some(.lightGray)
        address.translatesAutoresizingMaskIntoConstraints = false
        return address
    }()
    
    let branchText: UILabel = {
        let branch = UILabel()
        branch.text =  "Select Preferred Branch"
        branch.textAlignment = .left
        branch.font = UIFont(name: branch.font!.fontName, size: 10)
        branch.font = UIFont.boldSystemFont(ofSize: 12)
        branch.textColor = .some(.lightGray)
        branch.translatesAutoresizingMaskIntoConstraints = false
        return branch
    }()
    
    let emailTextField: UITextFieldX = {
        let emailtext = UITextFieldX()
        emailtext.placeholder = "Email"
        emailtext.leftImage = UIImage(named: "message")
        emailtext.textAlignment = .left
        emailtext.font = UIFont(name: emailtext.font!.fontName, size: 10)
        emailtext.font = UIFont.boldSystemFont(ofSize: 12)
        emailtext.textColor = .some(.lightGray)
        emailtext.borderStyle = .roundedRect
        emailtext.translatesAutoresizingMaskIntoConstraints = false

        return emailtext
    }()
    
    let phoneTextField: UITextFieldX = {
        let phoneText = UITextFieldX()
        phoneText.placeholder = "+234   |   Phone"
        phoneText.leftImage = UIImage(named: "phone")
        phoneText.textAlignment = .left
        phoneText.font = UIFont(name: phoneText.font!.fontName, size: 10)
        phoneText.font = UIFont.boldSystemFont(ofSize: 12)
        phoneText.textColor = .some(.lightGray)
        phoneText.borderStyle = .roundedRect
        phoneText.translatesAutoresizingMaskIntoConstraints = false

        return phoneText
    }()
    
    
    let branchTextField: UITextFieldX = {
        let branchText = UITextFieldX()
        branchText.placeholder = "Type in branch name"
        branchText.rightImage = UIImage(named: "map-icon")
        branchText.rightPadding = CGFloat(7)
        branchText.leftPadding = CGFloat(20)
        branchText.textAlignment = .left
        branchText.font = UIFont(name: branchText.font!.fontName, size: 10)
        branchText.font = UIFont.boldSystemFont(ofSize: 12)
        branchText.textColor = .some(.lightGray)
        branchText.borderStyle = .roundedRect
        branchText.translatesAutoresizingMaskIntoConstraints = false

        return branchText
    }()
    let addressTextField: UITextView = {
          let addressText = UITextView()
          addressText.text = "   Address"
          addressText.textAlignment = .left
          addressText.font = UIFont(name: addressText.font!.fontName, size: 10)
          addressText.font = UIFont.boldSystemFont(ofSize: 12)
          addressText.textColor = .some(.lightGray)
          addressText.translatesAutoresizingMaskIntoConstraints = false
          return addressText
      }()
    let dropDown: dropDownBtn = {
        let dropDownText = dropDownBtn()
        dropDownText.dropView.dropDownOptions = ["Abuja", "Lagos", "Ogun", "CrossRivers", "Kogi", "Sokoto","Yobe","Ekiti","Delta","Oyo","Oshogbo"]
        dropDownText.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        dropDownText.translatesAutoresizingMaskIntoConstraints = false
        dropDownText.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        return dropDownText
    }()
    
    
    let cityDropDown: dropDownBtn = {
        let dropDownText = dropDownBtn()
        dropDownText.dropView.dropDownOptions = ["Marwa"]
        dropDownText.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        dropDownText.translatesAutoresizingMaskIntoConstraints = false
        dropDownText.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        return dropDownText
    }()
    
    let supportButton: UIButton = {
        let support = UIButton()
      
        support.imageView?.contentMode = .scaleToFill
        support.contentVerticalAlignment = .fill
        support.contentHorizontalAlignment = .fill
        support.imageEdgeInsets = UIEdgeInsets(top: 13, left: 13, bottom: 13, right: 13)
        support.setImage(UIImage(named: "comment"), for: .normal)
        support.layer.borderWidth = 0.8
        support.layer.cornerRadius = 25
        
        support.layer.shadowColor = .some(.init(srgbRed: 169, green: 169, blue: 169, alpha: 1))
        support.layer.borderColor = .some(.init(srgbRed: 255, green: 240, blue: 245, alpha: 1))
        support.layer.shadowOpacity = 0.9
        support.layer.shadowRadius = 15
        support.layer.shadowOffset = CGSize(width: 1, height: 1)
        support.backgroundColor = .white
        support.translatesAutoresizingMaskIntoConstraints = false
        return support
    }()
    
    let nextButton: UIButton = {
        let next = UIButton()
        next.setTitle("Next", for: .normal)
        next.setTitleColor(.white, for: .normal)
        next.backgroundColor = .some(.purple)
        next.layer.cornerRadius = 5
        next.translatesAutoresizingMaskIntoConstraints = false
        return next
    }()
    
    var progressBar: FlexibleSteppedProgressBar = {
        let bar = FlexibleSteppedProgressBar()
        bar.translatesAutoresizingMaskIntoConstraints = false
        return bar
    }()
    
    var backgroundColor = UIColor(red: 254.0 / 255.0, green: 216.0 / 255.0, blue: 177.0 / 255.0, alpha: 1.0)
    var progressColor = UIColor(red: 53.0 / 255.0, green: 226.0 / 255.0, blue: 195.0 / 255.0, alpha: 1.0)
    var textColorHere = UIColor(red: 153.0 / 255.0, green: 153.0 / 255.0, blue: 153.0 / 255.0, alpha: 1.0)
    
    var maxIndex = -1
    
    
    override func viewDidLayoutSubviews() {
        view.layoutIfNeeded()
        dropDown.disclosureButton(baseColor: .black)
        cityDropDown.disclosureButton(baseColor: .black)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
        addressTextField.delegate = self
        setUpViews()
        setUpLayout()
        setupProgressBar()

    }
       
    
    private func setUpViews(){
        self.view.addSubview(scrollView)
        scrollView.addSubview(containerView)
        scrollView.addSubview(accountLabel)
        containerView.addSubview(progressBar)
        containerView.addSubview(emailText)
        containerView.addSubview(emailTextField)
        containerView.addSubview(phoneTextField)
        containerView.addSubview(phoneText)
        containerView.addSubview(dropDown)
        containerView.addSubview(stateText)
        containerView.addSubview(cityDropDown)
        containerView.addSubview(cityText)
        containerView.addSubview(addressText)
        containerView.addSubview(addressTextField)
        containerView.addSubview(branchText)
        containerView.addSubview(branchTextField)
        containerView.addSubview(supportButton)
        containerView.addSubview(nextButton)
    }
   
}



