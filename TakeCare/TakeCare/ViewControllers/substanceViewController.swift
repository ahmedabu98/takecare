//
//  substanceViewController.swift
//  TakeCare
//
//  Created by Ahmed Abualsaud on 11/21/20.
//

import UIKit

class substanceViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var substances = [String]()
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveButton(_ sender: Any) {
        let confirmMessage = UIAlertController(title: "Confirmation", message: "Would you like to save this substance log for today?", preferredStyle: .alert)

        let yes = UIAlertAction(title: "Yes", style: .default, handler: { (action) -> Void in
//            let vc = self.storyboard?.instantiateViewController(identifier: "DetailLogViewController") as! todayViewController
//            vc.message = "Mood log for the day successfully saved!"
            self.dismiss(animated: true, completion: nil)
        })

        let no = UIAlertAction(title: "No", style: .cancel) { (action) -> Void in
        }

        //Add OK and Cancel button to dialog message
        confirmMessage.addAction(yes)
        confirmMessage.addAction(no)
        //            self.dismiss(animated: true, completion: nil)
        self.present(confirmMessage, animated: true, completion: nil)
    }
    
    @IBAction func onAddTapped(_ sender: Any) {
        let alert = UIAlertController(title: "Add substance", message: nil, preferredStyle: .alert)
        alert.addTextField { (substanceTF) in
            substanceTF.placeholder = "Enter Substance"
        }
        
        let action = UIAlertAction(title: "Add", style: .default) { (_) in
            guard let substance = alert.textFields?.first?.text else {return}
            print(substance)
            self.add(substance)
        }
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    func add(_ substance: String) {
        let index = 0
        substances.insert(substance, at: index)
        
        let indexPath = IndexPath(row: index, section: 0)
        
        tableView.insertRows(at: [indexPath], with: .left)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension substanceViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return substances.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let substance = substances[indexPath.row]
        cell.textLabel?.text = substance
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        guard editingStyle == .delete else {return}
        substances.remove(at: indexPath.row)
        
        tableView.deleteRows(at: [indexPath], with: .automatic)
    }

}
