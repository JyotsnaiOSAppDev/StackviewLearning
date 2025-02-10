//
//  MainVC.swift
//  stackViewPrograam
//
//  Created by Jyotsna Jayanteyee Pandey on 10/02/25.
//

import UIKit

class MainVC: UIViewController {
    
    
    //UI Variables
    var labelDemo   : UILabel?
    var imageDemo   : UIImageView?
    var buttonDemo  : UIButton = UIButton(type: UIButton.ButtonType.roundedRect)
    var dataField   : UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.createLabel()
    }
    func createLabel()
    {
         //1. Specify the dimensions
         let labelRect : CGRect   = CGRect(x: 100.0, y: 50.0, width: self.view.frame.size.width - 130.0, height: 60.0)
     
         //2. Create the view object
         labelDemo                = UILabel(frame: labelRect)
     
         //3. Customise the view attributes
         labelDemo?.text          = "This is my first Programmatic App."
         labelDemo?.textColor     = UIColor.yellow
         labelDemo?.textAlignment = NSTextAlignment.left
         labelDemo?.numberOfLines = 0
         labelDemo?.font          = UIFont.boldSystemFont(ofSize: 20.0)
     
         //4. Add the view to the subview
         self.view.addSubview(labelDemo!)
        let labelRect1 : CGRect = CGRect(x: 100.0, y: 50.0, width: self.view.frame.size.width - 130.0, height: 60.0)
        labelDemo = UILabel(frame: labelRect1)
        labelDemo?.text          = "This is my first Programmatic App."
        labelDemo?.textColor     = UIColor.yellow
        labelDemo?.textAlignment = NSTextAlignment.center
        labelDemo?.numberOfLines = 0
        labelDemo?.font          = UIFont.boldSystemFont(ofSize: 20.0)
        self.view.addSubview(labelDemo!)
    }
    func createImage()
    {
         //1. Specify the dimensions
         let imageRect  : CGRect  = CGRect(x: 30.0, y: 50.0, width: 60.0, height: 60.0)
     
         //2. Create the image model
         let imageModel : UIImage = UIImage(named: "logo.png")!
     
         //3. Create the view object
         imageDemo                = UIImageView(frame: imageRect)
     
         //4. Customise the view attributes
         imageDemo?.image         = imageModel
         imageDemo?.contentMode   = UIView.ContentMode.scaleAspectFit
     
         //5. Add the view to the subview
         self.view.addSubview(imageDemo!)
    }
    

   

}
