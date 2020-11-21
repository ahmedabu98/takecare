//
//  dailyLogViewController.swift
//  TakeCare
//
//  Created by Ramon Novo Aragon on 11/20/20.
//

import UIKit

class dailyLogViewController: UIViewController {
    
    @IBAction func dailyLog_entered(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "todayEntry") as todayViewController
        // vc.accessibilityRespondsToUserInteraction = true
        vc.modalPresentationStyle = .fullScreen
        vc.message = "Your Daily Log has been entered"
        self.present(vc, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
