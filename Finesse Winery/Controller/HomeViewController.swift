//
//  HomeViewController.swift
//  Finesse Winery
//
//  Created by Timmy Cole on 4/22/23.
//

import UIKit
import FirebaseAuth
import FirebaseCore

class HomeViewController: UIViewController {
    
    let wineList = WineList();

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Wine Lists";
        navigationItem.hidesBackButton = true;
        tableView.dataSource = self
        tableView.separatorColor = .black;
        tableView.separatorStyle = .singleLine;
    }
    
    //MARK - Heading to the Search Page
    @IBAction func searchButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: K.seagueIdentifier, sender: nil)
    }
    
    //MARK - Log Out Your Account
    @IBAction func logOutButtonPressed(_ sender: UIButton) {
        let firebaseAuth = Auth.auth()
        do {
          try firebaseAuth.signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
    }
    
    
}

//MARK - Table View Setting 
extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return wineList.main_List.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath)
        myCell.textLabel?.text = wineList.main_List[indexPath.row];
        return myCell
    }
}
