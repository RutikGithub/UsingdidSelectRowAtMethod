//
//  SecondViewController.swift
//  ClickIOnRowToShowDataTwentyEightPractical
//
//  Created by Mac on 28/04/23.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    var container:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        joinData()

    }
    
func joinData()
    {
        
        descriptionTextView.text = container
    }
}
