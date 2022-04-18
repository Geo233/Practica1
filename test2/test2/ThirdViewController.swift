//
//  ThirdViewController.swift
//  test2
//
//  Created by George - Dorin NEGRAU on 17.04.2022.
//

import UIKit

class ThirdViewController: UIViewController {

   
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    var img = UIImage()
    var name = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblName.text = name
        imgView.image = img

    }
    

    

}
