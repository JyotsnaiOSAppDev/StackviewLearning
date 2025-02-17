//
//  ScrollView.swift
//  stackViewPrograam
//
//  Created by Jyotsna Jayanteyee Pandey on 13/02/25.
//

import UIKit

class ScrollView: UIViewController {
    var userScroll : UIScrollView?
    var enclosestack : UIStackView?
    var dataField   : UITextField?


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupUi()
    }
    
    func setupUi(){
        
                // Create a stack view
                let stackView = UIStackView()
                stackView.axis = .vertical
                stackView.spacing = 10
                stackView.translatesAutoresizingMaskIntoConstraints = false
                
                // Add the stack view to the main view
                view.addSubview(stackView)

                // Set the constraints for the stack view
                NSLayoutConstraint.activate([
                    stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                    stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                    stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                    stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
                ])

                // Create a scroll view
                let scrollView = UIScrollView()
                scrollView.translatesAutoresizingMaskIntoConstraints = false
                
                // Create a content view that will hold the scrollable content
                let contentView = UIView()
                contentView.translatesAutoresizingMaskIntoConstraints = false
                
                // Add content view to the scroll view
                scrollView.addSubview(contentView)
                
                // Set constraints for the scroll view and content view
                NSLayoutConstraint.activate([
                    contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
                    contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
                    contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
                    contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
                    contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)  // Ensures horizontal scroll
                ])
               let nameTextField = UITextField()
                nameTextField.placeholder = "Enter your name"
                nameTextField.borderStyle = .roundedRect
                nameTextField.translatesAutoresizingMaskIntoConstraints = false
                contentView.addSubview(nameTextField)
                
                // Add Date Label
                let dateLabel = UILabel()
                dateLabel.text = "Date:"
                dateLabel.translatesAutoresizingMaskIntoConstraints = false
                contentView.addSubview(dateLabel)
                
                // Add Date Picker
                let datePicker = UIDatePicker()
                datePicker.translatesAutoresizingMaskIntoConstraints = false
                contentView.addSubview(datePicker)
                
                // Add the scroll view to the stack view
                stackView.addArrangedSubview(scrollView)

                // Create some content for the scroll view
                let label = UILabel()
                label.text = "This is some long text that will be scrollable."
                label.numberOfLines = 0 // Allow the label to break into multiple lines
                label.translatesAutoresizingMaskIntoConstraints = false
                contentView.addSubview(label)

                // Set constraints for the label inside the content view
                NSLayoutConstraint.activate([
                    label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
                    label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
                    label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
                    label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20)
                ])
        // Set constraints for name label and text field
               
                
                // Set constraints for date label and date picker
                NSLayoutConstraint.activate([
                    dateLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 20),
                    dateLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
                    
                    datePicker.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 10),
                    datePicker.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
                    datePicker.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
                    datePicker.heightAnchor.constraint(equalToConstant: 200),
                    datePicker.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
                ])
        

        
//        self.userScroll.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
//        enclosestack.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
//
//
//        
//        enclosestack.alignment = .fill
//        enclosestack.spacing = 10
//        enclosestack.distribution = .fillEqually
//        enclosestack.axis = .vertical
//        enclosestack.translatesAutoresizingMaskIntoConstraints = false
        dataField?.font          = UIFont.boldSystemFont(ofSize: 20.0)
        let tfRect : CGRect             = CGRect(x: 30.0, y: 140.0, width: self.view.frame.size.width - 60.0, height: 50.0)
        dataField?.placeholder          = "Enter Name"

        dataField?.borderStyle          = UITextField.BorderStyle.roundedRect
        dataField?.keyboardType         = UIKeyboardType.namePhonePad
        dataField?.keyboardAppearance   = UIKeyboardAppearance.dark
        dataField?.returnKeyType        = UIReturnKeyType.go
        dataField?.frame = CGRect(x: 0, y: 0, width: 300, height: 50)

        let nameLBL = UITextField()
        nameLBL.text = "Jyots Name"
        nameLBL.borderStyle = .roundedRect
        nameLBL.placeholder = "Enter Name"
        nameLBL.textColor = .black
        let passLBL = UITextField()
        passLBL.text = "Jyots Name"
        passLBL.borderStyle = .roundedRect
        passLBL.placeholder = "Enter Name"
        passLBL.textColor = .black
        nameLBL.frame = CGRect(x: 0, y: 0, width: 100, height: 30)
        passLBL.frame = CGRect(x: 0, y: 0, width: 100, height: 30)
        enclosestack?.addArrangedSubview(passLBL)
        enclosestack?.addArrangedSubview(dataField!)


        enclosestack?.addArrangedSubview(nameLBL)
        
        
      //  userScroll?.addSubview(enclosestack ?? <#default value#>)
        //self.view.addSubview(userScroll ?? <#default value#>)
        
    }
    

}
