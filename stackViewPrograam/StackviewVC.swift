//
//  StackviewVC.swift
//  stackViewPrograam
//
//  Created by Jyotsna Jayanteyee Pandey on 10/02/25.
//

import UIKit

class StackviewVC: UIViewController {
    var titleStack      : UIStackView           = UIStackView()
    var ageStack        : UIStackView           = UIStackView()
    var serviceStack    : UIStackView           = UIStackView()
    var satisfactionStk : UIStackView           = UIStackView()
    var buttonStk       : UIStackView           = UIStackView()
    var enclosingStack  : UIStackView           = UIStackView()
    var stackSpacing    : CGFloat               = 30.0
    var labelDemo   : UILabel?
    var imageDemo   : UIImageView?
    var buttonDemo  : UIButton = UIButton(type: UIButton.ButtonType.roundedRect)
    var dataField   : UITextField?
    var nameField   : UITextField?

    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        //Enclosing stack
        self.setupdata()
       
        
        
        
        
    }
    func setupdata(){
        let labelRect : CGRect   = CGRect(x: 100.0, y: 50.0, width: self.view.frame.size.width - 130.0, height: 60.0)
       let iconlbl = UILabel()
        iconlbl.text = "anchor test"
        iconlbl.widthAnchor.constraint(equalToConstant: 50).isActive = true
    
        //2. Create the view object
        labelDemo                = UILabel(frame: labelRect)
    
        //3. Customise the view attributes
        labelDemo?.text          = "This is my first Programmatic App."
        labelDemo?.textColor     = UIColor.yellow
        labelDemo?.textAlignment = NSTextAlignment.left
        labelDemo?.numberOfLines = 0
        labelDemo?.font          = UIFont.boldSystemFont(ofSize: 20.0)
        let tfRect : CGRect             = CGRect(x: 30.0, y: 140.0, width: self.view.frame.size.width - 60.0, height: 50.0)
        
        //2. Create the view object
        dataField                       = UITextField(frame: tfRect)
        nameField                       = UITextField(frame: tfRect)
        nameField?.borderStyle          = UITextField.BorderStyle.roundedRect
        
        //3. Customise the attributes of the view
        dataField?.placeholder          = "Enter Name"
        dataField?.borderStyle          = UITextField.BorderStyle.roundedRect
        dataField?.keyboardType         = UIKeyboardType.namePhonePad
        dataField?.keyboardAppearance   = UIKeyboardAppearance.dark
        dataField?.returnKeyType        = UIReturnKeyType.go
        nameField?.frame = CGRect(x: 0, y: 0, width: 300, height: 50)
        nameField?.placeholder = "enter your name"
        
        titleStack.axis              = NSLayoutConstraint.Axis.horizontal
        titleStack.distribution      = UIStackView.Distribution.fillEqually
        titleStack.alignment = .center
        titleStack.spacing = stackSpacing
        titleStack.translatesAutoresizingMaskIntoConstraints = false
        enclosingStack.axis = NSLayoutConstraint.Axis.vertical
        enclosingStack.distribution = UIStackView.Distribution.fill
        enclosingStack.alignment = UIStackView.Alignment.fill
        enclosingStack.spacing = stackSpacing
        titleStack.addArrangedSubview(nameField!)
        titleStack.addArrangedSubview(iconlbl)

        enclosingStack.addArrangedSubview(nameField!)
        enclosingStack.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(enclosingStack)
        // test from xcode
        
    }
    
    

   

}
