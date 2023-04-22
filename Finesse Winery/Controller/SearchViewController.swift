//
//  SearchViewController.swift
//  Finesse Winery
//
//  Created by Timmy Cole on 4/21/23.
//

import UIKit
import FirebaseAuth
import FirebaseCore
//import FirebaseAnalytics

class SearchViewController: UIViewController {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var searchTextField: UITextField!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var descriptionTextView: UITextView!
    @IBOutlet var imageView: UIImageView!
    
    var wineManager = WineManager();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true;
        imageView.contentMode = .scaleAspectFit;
    }
    
    
    @IBAction func searchButtonPressed(_ sender: UIButton) {
        guard let searchText = searchTextField.text else {return}
        wineManager.text = searchText;
        wineManager.fetchWineData { wineData in
            DispatchQueue.main.sync {
                self.titleLabel.text = "Wine Name : \(wineData.recommendedWines[0].title)"
                self.priceLabel.text = "Wine Price : \(wineData.recommendedWines[0].price)"
                self.descriptionTextView.text = "\(wineData.recommendedWines[0].description)"
                self.imageView.load(url: "\(wineData.recommendedWines[0].imageUrl)")
            }
        }
    }
    
    @IBAction func homeButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: K.seagueIdentifier, sender: nil)
    }
    
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
