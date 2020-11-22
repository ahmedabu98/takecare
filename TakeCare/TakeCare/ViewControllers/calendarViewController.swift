//
//  calendarViewController.swift
//  TakeCare
//
//  Created by Ramon Novo Aragon on 11/13/20.
//

import UIKit

enum MyTheme {
    case light
    case dark
}

class calendarViewController: /*UIViewController,*/ UINavigationController, CalenderViewDelegate {
    
    var theme = MyTheme.dark
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Past Logs"
        self.navigationController?.navigationBar.isTranslucent=false
        self.view.backgroundColor=Style.bgColor
        
        view.addSubview(calenderView)
        calenderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive=true
        calenderView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -12).isActive=true
        calenderView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 12).isActive=true
        calenderView.heightAnchor.constraint(equalToConstant: 365).isActive=true
        calenderView.storyboard = storyboard
        calenderView.navController = navigationController
        
        let rightBarBtn = UIBarButtonItem(title: "Light", style: .plain, target: self, action: #selector(rightBarBtnAction))
        self.navigationItem.rightBarButtonItem = rightBarBtn
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        calenderView.myCollectionView.collectionViewLayout.invalidateLayout()
    }
    
    @objc func rightBarBtnAction(sender: UIBarButtonItem) {
        if theme == .dark {
            sender.title = "Dark"
            theme = .light
            Style.themeLight()
        } else {
            sender.title = "Light"
            theme = .dark
            Style.themeDark()
        }
        self.view.backgroundColor=Style.bgColor
        calenderView.changeTheme()
    }
    
    let calenderView: CalenderView = {
        // calenderView.storyboard = storyboard
        let v=CalenderView(theme: MyTheme.dark)
        v.translatesAutoresizingMaskIntoConstraints=false
        //v.storyboard = storyboard
        return v
    }()
    
    func performCustomSegue(){
//        let destView = storyboard?.instantiateViewController(identifier: identifier)
//        self.navigationController?.pushViewController(destView!, animated: true)
        print("ABOUT TO PUSH THE NEW VIEW CONTROLLER")
        print("ABOUT TO PUSH THE NEW VIEW CONTROLLER")
        print("ABOUT TO PUSH THE NEW VIEW CONTROLLER")
        let vc = storyboard?.instantiateViewController(identifier: "DetailLogViewController")
        self.navigationController?.pushViewController(vc!, animated: true)
        // self.present(vc!, animated: true, completion: nil)
        // performSegue(withIdentifier: "DetailLogViewController", sender: nil)
    }
    
}
