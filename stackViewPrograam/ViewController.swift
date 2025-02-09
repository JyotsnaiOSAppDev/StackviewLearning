//
//  ViewController.swift
//  stackViewPrograam
//
//  Created by Jyotsna Jayanteyee Pandey on 08/02/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // self.demoCode()
        self.setupLoginScreen()
        
    }
  func basicsetup() {
      var label1 = UILabel()
      label1.text = "Hello, World!"
      label1.backgroundColor = UIColor.lightGray
      let label2 = UILabel()
      label2.text = "Second Label"
      label2.backgroundColor = .lightGray
      let label3 = UILabel()
      label3.text = "Third Label"
      label3.backgroundColor = .lightGray
      let stackView = UIStackView(arrangedSubviews: [label1, label2, label3])
      stackView.axis = .vertical  // Vertical axis (can be .horizontal for horizontal stack)
      stackView.distribution = .fillEqually // Equal distribution of space
      stackView.alignment = .fill  // Align all subviews to fill the stack view
      stackView.spacing = 10  // Space between the items in the stack view
      
      // Add the stack view to the view hierarchy
      stackView.translatesAutoresizingMaskIntoConstraints = false  // Enable Auto Layout
      
      self.view.addSubview(stackView)
      NSLayoutConstraint.activate([
          stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
          stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
          stackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
          stackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20)
      ])
        
    }
    func setupLoginScreen1() {
        view.backgroundColor = .white
        let usernameTextField = UITextField()

        usernameTextField.placeholder = "Username"
        usernameTextField.borderStyle = .roundedRect
        usernameTextField.autocapitalizationType = .none
        usernameTextField.translatesAutoresizingMaskIntoConstraints = false

        let loginStack = UIStackView()
        let emailTextField = UITextField()
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.placeholder = "Email"
        emailTextField.borderStyle = .roundedRect
        emailTextField.autocapitalizationType = .none
        let passwordTextField = UITextField()
        emailTextField.backgroundColor = .lightGray

        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.placeholder = "Password"
        passwordTextField.backgroundColor = .lightGray

        let loginButton = UIButton()
       
       
        loginStack.axis = .vertical
        loginStack.alignment = .fill
        loginStack.distribution = .fillEqually
        loginStack.translatesAutoresizingMaskIntoConstraints = false
        loginStack.spacing = 20             // Space between elements
        loginButton.setTitle("Login", for: .normal)
        loginButton.backgroundColor = .systemBlue
        loginButton.layer.cornerRadius = 5
        loginButton.translatesAutoresizingMaskIntoConstraints = false


        loginStack.addArrangedSubview(emailTextField)
        loginStack.addArrangedSubview(passwordTextField)
        loginStack.addArrangedSubview(loginButton)
        view.addSubview(loginStack)
        NSLayoutConstraint.activate([loginStack.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),loginStack.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),loginStack.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 40),loginStack.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -40)])
        emailTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
            
        
    }
    
    func setupLoginScreen() {


            // Create UI elements
            let usernameTextField = UITextField()
            let passwordTextField = UITextField()
            let loginButton = UIButton()


                
                // Setup the view's background color
                view.backgroundColor = .white
                
                // Configure usernameTextField
                usernameTextField.placeholder = "Username"
                usernameTextField.borderStyle = .roundedRect
                usernameTextField.autocapitalizationType = .none
                usernameTextField.translatesAutoresizingMaskIntoConstraints = false
                
                // Configure passwordTextField
                passwordTextField.placeholder = "Password"
                passwordTextField.borderStyle = .roundedRect
                passwordTextField.isSecureTextEntry = true
                passwordTextField.translatesAutoresizingMaskIntoConstraints = false
                
                // Configure loginButton
                loginButton.setTitle("Login", for: .normal)
                loginButton.backgroundColor = .systemBlue
                loginButton.layer.cornerRadius = 5
                loginButton.translatesAutoresizingMaskIntoConstraints = false
                
                // Create stack view to arrange elements
                let stackView = UIStackView(arrangedSubviews: [usernameTextField, passwordTextField, loginButton])
                stackView.axis = .vertical         // Stack them vertically
                stackView.spacing = 20             // Space between elements
                stackView.alignment = .fill        // Fill horizontally
                stackView.distribution = .fillEqually  // Equally distribute space
                stackView.translatesAutoresizingMaskIntoConstraints = false
                
                // Add stack view to the main view
                view.addSubview(stackView)
                
                // Set Auto Layout constraints for stack view
                NSLayoutConstraint.activate([
                    stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                    stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
                    stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
                ])
                
                // Set Auto Layout constraints for text fields (optional)
                usernameTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
                passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
                loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
            }
        

    

}

