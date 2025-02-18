//
//  LoginVC.swift
//  stackViewPrograam
//
//  Created by Jyotsna Jayanteyee Pandey on 17/02/25.
//

import UIKit

class LoginVC: UIViewController {
    lazy var loginstack : UIStackView = {
        let logins = UIStackView()
        let email = UITextField()
        let name = UITextField()
        email.placeholder = "Email"
        name.placeholder = "Name"
        email.translatesAutoresizingMaskIntoConstraints = false
        name.translatesAutoresizingMaskIntoConstraints = false
        name.borderStyle = .roundedRect
        name.clearButtonMode = .whileEditing
        email.borderStyle = .roundedRect
        email.clearButtonMode = .whileEditing
        email.accessibilityIdentifier = "email"
        logins.axis = .vertical
        logins.distribution = .fillEqually
        logins.addArrangedSubview(email)
        logins.addArrangedSubview(name)
        return logins
    }()
    lazy var loginScrollView : UIScrollView = {
        let lg = UIScrollView()
        loginScrollView.addSubview(lg)
        return loginScrollView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
       // self.view.addSubview(loginScrollView)
        self.loginScrollView.addSubview(loginstack)
        NSLayoutConstraint.activate([loginScrollView.topAnchor.constraint(equalTo: view.topAnchor),loginScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),loginScrollView.leftAnchor.constraint(equalTo: view.leftAnchor),loginScrollView.rightAnchor.constraint(equalTo: view.rightAnchor)])
        loginstack.translatesAutoresizingMaskIntoConstraints = false
        loginScrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([loginScrollView.topAnchor.constraint(equalTo: view.topAnchor),loginScrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),loginScrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),loginScrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)])
        // Do any additional setup after loading the view.
    }
    func seetupUI(){
        
    }
    

    

}
