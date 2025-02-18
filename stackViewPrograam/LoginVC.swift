//
//  LoginVC.swift
//  stackViewPrograam
//
//  Created by Jyotsna Jayanteyee Pandey on 17/02/25.
//

import UIKit

class LoginVC: UIViewController {
    let iconDoct = UIImage(systemName: "iphone.homebutton")
    let icon = UIImageView()
    let age = UILabel()
    let ageValue = UISlider()

    
    let ageSlider = UISlider()
    let serviceLbl = UILabel()
    let appTitle = UILabel()
    let serviceRating = UILabel()
    let satisfactionLbl = UILabel()
    let satisfaction = UILabel()
    let fetchBtn = UIButton()
    let saveBtn = UIButton()
    let nameField = UITextField()
    let emailField = UITextField()
    let agePicker = UIDatePicker()
    var titleStack      : UIStackView           = UIStackView()
    var ageStack        : UIStackView           = UIStackView()
    var serviceStack    : UIStackView           = UIStackView()
    var satisfactionStk : UIStackView           = UIStackView()
    var buttonStk       : UIStackView           = UIStackView()
    var enclosingStack  : UIStackView           = UIStackView()
    var stackSpacing    : CGFloat               = 30.0
    var enclosingStacks  : UIStackView = UIStackView()
 
    override func viewDidLoad() {
        super.viewDidLoad()
         self.navigationItem.title               = "Feedback"
          //  self.configureUIElements()
            self.configureStacks()
            self.apply_constraints()
     
    }
    //Arun training practice
    func seetupUI(){
        
        
        
    }
    func configureStacks()
    {
        
       
        emailField.widthAnchor.constraint(greaterThanOrEqualToConstant: 100).isActive = true
        ageValue.widthAnchor.constraint(greaterThanOrEqualToConstant: 100).isActive = true

        age.text = "Age"
        nameField.placeholder = "Name"
        emailField.placeholder = "email"
       // ageValue.text = "25"
        serviceLbl.text = "servie"
        serviceRating.text = "0.5"
        satisfaction.text = "Satisfied"
        satisfactionLbl.text = "Satisfaction"
     
        saveBtn.setTitle("save", for: .normal)
        fetchBtn.setTitle("fetch", for: .normal)
     
        saveBtn.tintColor = UIColor.black
        fetchBtn.tintColor = UIColor.black
      
        ageSlider.frame.origin.y = 100
        ageSlider.minimumValue = 0
        ageSlider.maximumValue = 100
        ageSlider.tintColor = UIColor.green
        ageSlider.addTarget(self, action: #selector(self.sliderValueDidChange(_:)), for: .valueChanged)


        
        nameField.borderStyle = UITextField.BorderStyle.roundedRect
        emailField.borderStyle = UITextField.BorderStyle.roundedRect
        enclosingStacks.axis = NSLayoutConstraint.Axis.vertical
        enclosingStacks.distribution = UIStackView.Distribution.fill
        enclosingStacks.alignment = UIStackView.Alignment.fill
        enclosingStacks.spacing = stackSpacing
        enclosingStacks.addArrangedSubview(titleStack)
        enclosingStacks.addArrangedSubview(nameField)
        enclosingStacks.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(enclosingStacks)
        appTitle.text = "First stackview POC via cdoes"
              
         
             //4. Customise the view attributes
        icon.image         = iconDoct
        icon.contentMode   = UIView.ContentMode.scaleAspectFit
         
        
       // icon.addSubview(iconDoct)
        titleStack.axis                                             = NSLayoutConstraint.Axis.horizontal
        titleStack.distribution                                     = UIStackView.Distribution.fill
        titleStack.alignment                                        = UIStackView.Alignment.fill
        titleStack.spacing                                          = stackSpacing
        titleStack.translatesAutoresizingMaskIntoConstraints        = false
        titleStack.addArrangedSubview(icon)
        titleStack.addArrangedSubview(appTitle)
        
        //Age
        ageStack.axis                                               = NSLayoutConstraint.Axis.horizontal
        ageStack.distribution                                       = UIStackView.Distribution.fill
        ageStack.alignment                                          = UIStackView.Alignment.fill
        ageStack.spacing                                            = stackSpacing
        ageStack.translatesAutoresizingMaskIntoConstraints          = false
        ageStack.addArrangedSubview(age)
        ageStack.addArrangedSubview(ageSlider)
        //Service
        serviceStack.axis                                           = NSLayoutConstraint.Axis.horizontal
        serviceStack.distribution                                   = UIStackView.Distribution.fillProportionally
        serviceStack.alignment                                      = UIStackView.Alignment.fill
        serviceStack.spacing                                        = stackSpacing
        serviceStack.translatesAutoresizingMaskIntoConstraints      = false
        serviceStack.addArrangedSubview(serviceLbl)
        serviceStack.addArrangedSubview(serviceRating)
        
        //Satisfaction
        satisfactionStk.axis                                        = NSLayoutConstraint.Axis.horizontal
        satisfactionStk.distribution                                = UIStackView.Distribution.fillProportionally
        satisfactionStk.alignment                                   = UIStackView.Alignment.fill
        satisfactionStk.spacing                                     = stackSpacing
        satisfactionStk.translatesAutoresizingMaskIntoConstraints = false
        satisfactionStk.addArrangedSubview(satisfactionLbl)
        satisfactionStk.addArrangedSubview(satisfaction)
        
        //Buttons
        buttonStk.axis                                              = NSLayoutConstraint.Axis.horizontal
        buttonStk.distribution                                      = UIStackView.Distribution.fillEqually
        buttonStk.alignment                                         = UIStackView.Alignment.fill
        buttonStk.spacing                                           = stackSpacing
        buttonStk.translatesAutoresizingMaskIntoConstraints         = false
        buttonStk.addArrangedSubview(saveBtn)
        buttonStk.addArrangedSubview(fetchBtn)
        
        //Enclosing stack
        enclosingStack.axis                                         = NSLayoutConstraint.Axis.vertical
        enclosingStack.distribution                                 = UIStackView.Distribution.fill
        enclosingStack.alignment                                    = UIStackView.Alignment.fill
        enclosingStack.spacing                                      = stackSpacing
        enclosingStack.addArrangedSubview(titleStack)
        enclosingStack.addArrangedSubview(nameField)
        enclosingStack.addArrangedSubview(emailField)
        enclosingStack.addArrangedSubview(ageStack)
        enclosingStack.addArrangedSubview(agePicker)
        enclosingStack.addArrangedSubview(serviceStack)
        enclosingStack.addArrangedSubview(satisfactionStk)
        enclosingStack.addArrangedSubview(buttonStk)
        enclosingStack.translatesAutoresizingMaskIntoConstraints    = false
        self.view.addSubview(enclosingStack)
    }
    func apply_constraints_to_title() {
        icon.widthAnchor.constraint(greaterThanOrEqualToConstant: 50).isActive                                = true
        appTitle.widthAnchor.constraint(greaterThanOrEqualTo: icon.widthAnchor, multiplier: 4.0).isActive = true


        appTitle.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        icon.setContentCompressionResistancePriority(.defaultLow, for: .vertical)
        icon.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        appTitle.widthAnchor.constraint(greaterThanOrEqualToConstant:200).isActive = true
        
    }
    func apply_constraints_to_fields()
    {
        nameField.widthAnchor.constraint(greaterThanOrEqualToConstant: 100).isActive                                = true
        emailField.widthAnchor.constraint(greaterThanOrEqualToConstant: 100).isActive                               = true
        nameField.widthAnchor.constraint(equalTo: emailField.widthAnchor, multiplier: 1.0).isActive                 = true
    }
    @objc func sliderValueDidChange(_ sender:UISlider!)
    {
        print("Slider value changed")
        
        // Use this code below only if you want UISlider to snap to values step by step
       
    }
     
    func apply_constraints_to_age()
    
    {
        print(ageValue.widthAnchor)
        age.widthAnchor.constraint(equalToConstant: 50.0).isActive                                             = true
        ageSlider.widthAnchor.constraint(greaterThanOrEqualToConstant: 150.0).isActive                              = true
//        age.widthAnchor.constraint(equalTo: ageValue.widthAnchor, multiplier: 1.0).isActive                         = true

    }
     
    func apply_constraints_to_service()
    {
        serviceRating.widthAnchor.constraint(greaterThanOrEqualTo: serviceLbl.widthAnchor, constant: 1.5).isActive  = true
        serviceLbl.widthAnchor.constraint(greaterThanOrEqualToConstant: 100.0).isActive                             = true
        serviceLbl.setContentCompressionResistancePriority(UILayoutPriority.defaultHigh, for: NSLayoutConstraint.Axis.horizontal)
    }
     
    func apply_constraints_to_satisfaction()
    {
        satisfaction.widthAnchor.constraint(equalTo: satisfactionLbl.widthAnchor, constant: 1.5).isActive           = true
        satisfactionLbl.widthAnchor.constraint(greaterThanOrEqualToConstant: 100.0).isActive                        = true
        satisfactionLbl.setContentCompressionResistancePriority(UILayoutPriority.defaultHigh, for: NSLayoutConstraint.Axis.horizontal)
    }
     
    func apply_constraints_to_buttons()
    {
        saveBtn.widthAnchor.constraint(equalTo: fetchBtn.widthAnchor, multiplier: 1.0).isActive                     = true
    }
     
    func apply_constraints_to_all_Stacks()
    {
        titleStack.widthAnchor.constraint(greaterThanOrEqualToConstant: 100.0).isActive                             = true
        titleStack.setContentHuggingPriority(UILayoutPriority.defaultLow, for: NSLayoutConstraint.Axis.horizontal)
        ageStack.widthAnchor.constraint(greaterThanOrEqualToConstant: 100.0).isActive                               = true
        serviceStack.widthAnchor.constraint(greaterThanOrEqualToConstant: 100.0).isActive                           = true
        satisfactionStk.widthAnchor.constraint(greaterThanOrEqualToConstant: 100.0).isActive                        = true
        buttonStk.widthAnchor.constraint(greaterThanOrEqualToConstant: 100.0).isActive                              = true
     
        serviceStack.heightAnchor.constraint(equalTo: satisfactionStk.heightAnchor, multiplier: 1.0).isActive       = true
        satisfactionStk.heightAnchor.constraint(equalTo: buttonStk.heightAnchor, multiplier: 1.0).isActive          = true
        buttonStk.heightAnchor.constraint(greaterThanOrEqualToConstant: 30.0).isActive                              = true
        ageStack.heightAnchor.constraint(equalTo: buttonStk.heightAnchor, multiplier: 1.0).isActive                 = true
        titleStack.heightAnchor.constraint(equalTo: ageStack.heightAnchor, multiplier: 2.0).isActive                = true
     
        agePicker.setContentHuggingPriority(UILayoutPriority.defaultLow, for: NSLayoutConstraint.Axis.vertical)
        nameField.setContentHuggingPriority(UILayoutPriority.defaultHigh, for: NSLayoutConstraint.Axis.vertical)
        emailField.setContentHuggingPriority(UILayoutPriority.defaultHigh, for: NSLayoutConstraint.Axis.vertical)
    }
     
    func apply_constraints_to_enclosing_stack()
    {
        enclosingStack.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10.0).isActive          = true
        enclosingStack.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10.0).isActive       = true
        enclosingStack.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -30.0).isActive           = true
        enclosingStack.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 170.0).isActive                 = true
    }
    func apply_constraints()
    {
        self.apply_constraints_to_title()
        self.apply_constraints_to_fields()
      self.apply_constraints_to_age()
      self.apply_constraints_to_service()
       self.apply_constraints_to_satisfaction()
        self.apply_constraints_to_buttons()
        self.apply_constraints_to_all_Stacks()
      self.apply_constraints_to_enclosing_stack()
    }
    

    

}
