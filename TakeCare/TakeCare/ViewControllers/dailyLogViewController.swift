//
//  dailyLogViewController.swift
//  TakeCare
//
//  Created by Ramon Novo Aragon on 11/20/20.
//

import UIKit

class dailyLogViewController: UIViewController {
    
    @IBAction func backPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func dailyLog_entered(_ sender: Any) {
//        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "userVC") as todayViewController
//        // vc.accessibilityRespondsToUserInteraction = true
//        vc.modalPresentationStyle = .fullScreen
//        vc.message = "Your Daily Log has been entered"
//        self.present(vc, animated: true, completion: nil)
        
        let confirmMessage = UIAlertController(title: "Confirmation", message: "Would you like to save this journal log for today?", preferredStyle: .alert)

        let yes = UIAlertAction(title: "Yes", style: .default, handler: { (action) -> Void in
            
            let confirmMessage2 = UIAlertController(title: "Confirmation", message: "Your daily journal log was successfully saved", preferredStyle: .alert)
            
            let dismiss = UIAlertAction(title: "Dismiss", style: .cancel) { (action) -> Void in
                
                self.dismiss(animated: true, completion: nil)
            }
            
            confirmMessage2.addAction(dismiss)
            
            self.present(confirmMessage2, animated: true, completion: nil)
//
//            self.dismiss(animated: true, completion: nil)
        })

        let no = UIAlertAction(title: "No", style: .cancel) { (action) -> Void in
        }

        //Add OK and Cancel button to dialog message
        confirmMessage.addAction(yes)
        confirmMessage.addAction(no)
        //            self.dismiss(animated: true, completion: nil)
        self.present(confirmMessage, animated: true, completion: nil)
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
