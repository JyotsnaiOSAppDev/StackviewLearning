
import UIKit

class DemoVC: UIViewController {
    var history: UIStackView!
        var scrollView: UIScrollView!
    lazy var scrollViews: UIScrollView = {
            let s = UIScrollView()
            s.contentMode = .scaleToFill
            s.backgroundColor = .gray
            s.accessibilityIdentifier = "scroll_view"
            s.translatesAutoresizingMaskIntoConstraints = false
            return s
        }()

        lazy var stackView: UIStackView = {
            let s = UIStackView()
            s.axis = .vertical
            s.alignment = .fill
            s.distribution = .equalSpacing
            s.spacing = 10
            s.contentMode = .scaleToFill
            s.accessibilityIdentifier = "stack_view"
            return s
        }()
    // See helper method at bottom
        lazy var textField1 = self.createTextField(placeholder: "Textfield 1")
        lazy var textField2 = self.createTextField(placeholder: "Textfield 2")
        lazy var textField3 = self.createTextField(placeholder: "Textfield 3")
        lazy var textField4 = self.createTextField(placeholder: "Textfield 4")
        lazy var textField5 = self.createTextField(placeholder: "Textfield 5")
        lazy var textField6 = self.createTextField(placeholder: "Textfield 6")
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
      //  self.setupUi()
        self.setData()
        
        //        // Create a stack view
        //        let stackView = UIStackView()
        //        stackView.axis = .vertical
        //        stackView.spacing = 10
        //        stackView.translatesAutoresizingMaskIntoConstraints = false
        //
        //        // Add the stack view to the main view
        //        view.addSubview(stackView)
        //
        //        // Set the constraints for the stack view
        //        NSLayoutConstraint.activate([
        //            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
        //            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        //            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        //            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        //        ])
        //
        //        // Create a scroll view
        //        let scrollView = UIScrollView()
        //        scrollView.translatesAutoresizingMaskIntoConstraints = false
        //
        //        // Create a content view that will hold the scrollable content
        //        let contentView = UIView()
        //        contentView.translatesAutoresizingMaskIntoConstraints = false
        //
        //        // Add content view to the scroll view
        //        scrollView.addSubview(contentView)
        //
        //        // Set constraints for the scroll view and content view
        //        NSLayoutConstraint.activate([
        //            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
        //            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
        //            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
        //            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
        //            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)  // Ensures horizontal scroll
        //        ])
        //        //stackView.frame.height = 500
        //        //scrollView.frame.height = 500
        //        // Add the scroll view to the stack view
        //        stackView.addArrangedSubview(scrollView)
        //
        //        // Add Name Label
        //        let nameLabel = UILabel()
        //        nameLabel.text = "Name:"
        //        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        //        contentView.addSubview(nameLabel)
        //
        //        // Add Name Text Field
        //        let nameTextField = UITextField()
        //        nameTextField.placeholder = "Enter your name"
        //        nameTextField.borderStyle = .roundedRect
        //        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        //        contentView.addSubview(nameTextField)
        //
        //        // Add Date Label
        //        let dateLabel = UILabel()
        //        dateLabel.text = "Date:"
        //        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        //        contentView.addSubview(dateLabel)
        //
        //        // Add Date Picker
        //        let datePicker = UIDatePicker()
        //        datePicker.translatesAutoresizingMaskIntoConstraints = false
        //        contentView.addSubview(datePicker)
        //
        //        // Set constraints for name label and text field
        //        NSLayoutConstraint.activate([
        //            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
        //            nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
        //
        //            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
        //            nameTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
        //            nameTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
        //            nameTextField.heightAnchor.constraint(equalToConstant: 40),
        //        ])
        //
        //        // Set constraints for date label and date picker
        //        NSLayoutConstraint.activate([
        //            dateLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 20),
        //            dateLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
        //
        //            datePicker.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 10),
        //            datePicker.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
        //            datePicker.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
        //            datePicker.heightAnchor.constraint(equalToConstant: 200),
        //            datePicker.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
        //        ])
        //    }
        //}
        
    }
    func setupUi() {
            history = UIStackView()
                // vertical stack
                history.axis = .vertical
                // arranged subviews fill the width
                history.alignment = .fill
                // distribution
                history.distribution = .fill
                // spacing
                history.spacing = 12
                let label = UILabel(frame: CGRect.init())
                label.text = "Label"
             // label.backgroundColor = .red
             //  history.addArrangedSubview(label)
                
                scrollView = UIScrollView()
                // so we can see it
                scrollView.backgroundColor = .cyan
                
                // we're using auto-layout constraints
                scrollView.translatesAutoresizingMaskIntoConstraints = false
                history.translatesAutoresizingMaskIntoConstraints = false

                // add the stack view to the scroll view
                scrollView.addSubview(history)
                history.backgroundColor = .green
                
                // add the scroll view to the view
                view.addSubview(scrollView)
        // let's add 30 labels to the stack view
                for i in 1...30 {
                    let label = UILabel()
                    label.text = "Label: \(i)"
                    // so we can see the label frames
                    label.backgroundColor = .red
                    history.addArrangedSubview(label)
                }

                // no no no... let auto-layout handle it
                //scrollView.contentSize = CGSize(width: view.bounds.width, height: view.bounds.height)
                
        
    }
    override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            //scrollView.contentSize = stackView.frame.size
        }

        func createTextField(placeholder: String) -> UITextField {
            let t = UITextField()
            t.translatesAutoresizingMaskIntoConstraints = false
            t.borderStyle = .roundedRect
            t.clearButtonMode = .whileEditing
            t.text = placeholder
            t.placeholder = placeholder
            t.accessibilityIdentifier = placeholder
            return t
        }
    
    func setData() {
        let label = UILabel(frame: CGRect.init())
        label.text = "Label"
        let scrollView = UIScrollView()
        let stackView = UIStackView()

        scrollView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false

        scrollView.addSubview(stackView)
        view.addSubview(scrollView)

        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor),

            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            stackView.leftAnchor.constraint(equalTo: scrollView.leftAnchor),
            stackView.rightAnchor.constraint(equalTo: scrollView.rightAnchor),

            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
        for i in 1...30 {
            let label = UILabel()
            label.text = "Label: \(i)"
            // so we can see the label frames
            label.backgroundColor = .red
            stackView.addArrangedSubview(label)
        }


    }
    }
