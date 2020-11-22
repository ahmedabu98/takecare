//
//  shareTableViewController.swift
//  TakeCare
//
//  Created by Ramon Novo Aragon on 11/18/20.
//

import UIKit

class shareTableViewController: UITableViewController {
    
    var Week: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    var index: Int = 0
    
    @IBAction func shareAll_Pressed(_ sender: Any) {
        print("SHARE ALL PRESSED")
        print("SHARE ALL PRESSED")
        print("SHARE ALL PRESSED")
        let confirmMessage = UIAlertController(title: "Confirmation", message: "You are about to share all your logs with your provider. Are you sure about this?", preferredStyle: .alert)
            
            // Create OK button with action handler
            let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                //print("Ok button tapped")
//                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "userVC")
//
//                self.present(vc, animated: true, completion: nil)
                    let confirmMessage2 = UIAlertController(title: "Confirmation", message: "Your weekly logs were successfully shared with your provider", preferredStyle: .alert)
                    
                    let dismiss = UIAlertAction(title: "Dismiss", style: .cancel) { (action) -> Void in
                        
                        self.dismiss(animated: true, completion: nil)
                    }
                    
                    confirmMessage2.addAction(dismiss)
                    
                    self.present(confirmMessage2, animated: true, completion: nil)

        //            self.dismiss(animated: true, completion: nil)
                })
              //  self.dismiss(animated: true, completion: nil)
                
           // })
            
            // Create Cancel button with action handlder
            let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) -> Void in
                print("Cancel button tapped")
            }
            
            //Add OK and Cancel button to dialog message
            confirmMessage.addAction(ok)
            confirmMessage.addAction(cancel)
            self.present(confirmMessage, animated: true, completion: nil)


    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        tableView.rowHeight = 250
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 7
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "shareCell", for: indexPath) as! shareTableViewCell

        // Configure the cell...
        cell.dayLabel.text = Week[indexPath.row]
//        index = index+1
        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
