//
//  checkAllPastLogsViewController.swift
//  TakeCare
//
//  Created by Ramon Novo Aragon on 11/20/20.
//

import UIKit

class checkAllPastLogsViewController: UIViewController {
    var text: String = ""
    
    @IBOutlet weak var dateLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateLabel?.text = text

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
