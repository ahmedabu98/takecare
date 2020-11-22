//
//  todayViewController.swift
//  TakeCare
//
//  Created by Ramon Novo Aragon on 11/20/20.
//

import UIKit

class todayViewController: UIViewController {
    var message: String = "Hello! Are you ready to enter your daily logs?"
    @IBOutlet weak var todayMessage: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        todayMessage.text = message
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
