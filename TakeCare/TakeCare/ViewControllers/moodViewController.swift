//
//  moodViewController.swift
//  TakeCare
//
//  Created by Ahmed Abualsaud on 11/21/20.
//

import UIKit

class moodViewController: UIViewController {

    @IBOutlet weak var delightedImg: UIImageView!
    @IBOutlet weak var happyImg: UIImageView!
    @IBOutlet weak var mehImg: UIImageView!
    @IBOutlet weak var sadImg: UIImageView!
    @IBOutlet weak var awefulImg: UIImageView!
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        let confirmMessage = UIAlertController(title: "Confirmation", message: "Would you like to save this mood log for today?", preferredStyle: .alert)

        let yes = UIAlertAction(title: "Yes", style: .default, handler: { (action) -> Void in
            
            let confirmMessage2 = UIAlertController(title: "Confirmation", message: "Your daily mood log was successfully saved", preferredStyle: .alert)
            
            let dismiss = UIAlertAction(title: "Dismiss", style: .cancel) { (action) -> Void in
                
                self.dismiss(animated: true, completion: nil)
            }
            
            confirmMessage2.addAction(dismiss)
            
            self.present(confirmMessage2, animated: true, completion: nil)
            
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
    
    @IBAction func delightedButton(_ sender: Any) {
        delightedImg.layer.borderColor = UIColor(red: 0.2, green: 0.6, blue: 0.7, alpha: 1.0).cgColor
        delightedImg.layer.masksToBounds = true
        delightedImg.contentMode = .scaleToFill
        delightedImg.layer.borderWidth = 2

        awefulImg.layer.borderWidth = 0
        happyImg.layer.borderWidth = 0
        mehImg.layer.borderWidth = 0
        sadImg.layer.borderWidth = 0
    }
    
    @IBAction func happyButton(_ sender: Any) {
        happyImg.layer.borderColor = UIColor(red: 0.2, green: 0.6, blue: 0.7, alpha: 1.0).cgColor
        happyImg.layer.masksToBounds = true
        happyImg.contentMode = .scaleToFill
        happyImg.layer.borderWidth = 2

        delightedImg.layer.borderWidth = 0
        awefulImg.layer.borderWidth = 0
        mehImg.layer.borderWidth = 0
        sadImg.layer.borderWidth = 0
    }
    
    @IBAction func mehButton(_ sender: Any) {
        mehImg.layer.borderColor = UIColor(red: 0.2, green: 0.6, blue: 0.7, alpha: 1.0).cgColor
        mehImg.layer.masksToBounds = true
        mehImg.contentMode = .scaleToFill
        mehImg.layer.borderWidth = 2

        delightedImg.layer.borderWidth = 0
        happyImg.layer.borderWidth = 0
        awefulImg.layer.borderWidth = 0
        sadImg.layer.borderWidth = 0
    }
    
    @IBAction func sadButton(_ sender: Any) {
        sadImg.layer.borderColor = UIColor(red: 0.2, green: 0.6, blue: 0.7, alpha: 1.0).cgColor
        sadImg.layer.masksToBounds = true
        sadImg.contentMode = .scaleToFill
        sadImg.layer.borderWidth = 2

        delightedImg.layer.borderWidth = 0
        happyImg.layer.borderWidth = 0
        mehImg.layer.borderWidth = 0
        awefulImg.layer.borderWidth = 0
    }
    
    @IBAction func awefulButton(_ sender: Any) {
        awefulImg.layer.borderColor = UIColor(red: 0.2, green: 0.6, blue: 0.7, alpha: 1.0).cgColor
        awefulImg.layer.masksToBounds = true
        awefulImg.contentMode = .scaleToFill
        awefulImg.layer.borderWidth = 2

        delightedImg.layer.borderWidth = 0
        happyImg.layer.borderWidth = 0
        mehImg.layer.borderWidth = 0
        sadImg.layer.borderWidth = 0
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
