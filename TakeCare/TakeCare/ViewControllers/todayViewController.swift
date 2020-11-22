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
    
    @IBOutlet weak var moodImg: UIButton!
    @IBOutlet weak var exerciseImg: UIButton!
    @IBOutlet weak var sleepImg: UIButton!
    @IBOutlet weak var studyImg: UIButton!
    @IBOutlet weak var socialImg: UIButton!
    @IBOutlet weak var substanceImg: UIButton!
    @IBOutlet weak var journalImg: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        todayMessage.text = message
        // Do any additional setup after loading the view.
        moodImg.layer.borderColor = UIColor(red: 0.2, green: 0.6, blue: 0.7, alpha: 1.0).cgColor
        moodImg.layer.masksToBounds = true
        moodImg.contentMode = .scaleToFill
        moodImg.layer.borderWidth = 3
        
        exerciseImg.layer.borderColor = UIColor(red: 0.2, green: 0.6, blue: 0.7, alpha: 1.0).cgColor
        exerciseImg.layer.masksToBounds = true
        exerciseImg.contentMode = .scaleToFill
        exerciseImg.layer.borderWidth = 3
        
        sleepImg.layer.borderColor = UIColor(red: 0.2, green: 0.6, blue: 0.7, alpha: 1.0).cgColor
        sleepImg.layer.masksToBounds = true
        sleepImg.contentMode = .scaleToFill
        sleepImg.layer.borderWidth = 3
        
        studyImg.layer.borderColor = UIColor(red: 0.2, green: 0.6, blue: 0.7, alpha: 1.0).cgColor
        studyImg.layer.masksToBounds = true
        studyImg.contentMode = .scaleToFill
        studyImg.layer.borderWidth = 3
        
        substanceImg.layer.borderColor = UIColor(red: 0.2, green: 0.6, blue: 0.7, alpha: 1.0).cgColor
        substanceImg.layer.masksToBounds = true
        substanceImg.contentMode = .scaleToFill
        substanceImg.layer.borderWidth = 3
        
        socialImg.layer.borderColor = UIColor(red: 0.2, green: 0.6, blue: 0.7, alpha: 1.0).cgColor
        socialImg.layer.masksToBounds = true
        socialImg.contentMode = .scaleToFill
        socialImg.layer.borderWidth = 3
        
        journalImg.layer.borderColor = UIColor(red: 0.2, green: 0.6, blue: 0.7, alpha: 1.0).cgColor
        journalImg.layer.masksToBounds = true
        journalImg.contentMode = .scaleToFill
        journalImg.layer.borderWidth = 3
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
