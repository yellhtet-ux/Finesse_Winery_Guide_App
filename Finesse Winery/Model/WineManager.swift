//
//  WineManager.swift
//  Finesse Winery
//
//  Created by Timmy Cole on 4/21/23.
//

import Foundation
import UIKit

struct WineManager  {
    
    var image : UIImage?
    var text : String?
    
    typealias NetworkingResultData = (WineData) -> Void
    
    //MARK - Fetching Wines Data Process
    
    mutating func fetchWineData (completion: @escaping NetworkingResultData) {
        guard let searchText = text else {return}
        let mainURL = "https://api.spoonacular.com/food/wine/recommendation?apiKey=\(K.apiKey)&wine=\(searchText)"
        guard let url = URL(string: mainURL) else {return}
        let session = URLSession.shared;
        let task = session.dataTask(with: url) { (data, response, error) in
            // Handle any errors
            guard error == nil else {
                print("Error fetching data: \(error!)")
                return
            }
            
            // Check the response status code
            guard let httpResponse = response as? HTTPURLResponse,
                  (200...299).contains(httpResponse.statusCode) else {
                print("Invalid response")
                return
            }
            
            // Check if the data is not nil
            guard let jsonData = data else {
                print("No data received")
                return
            }
            
            // Decode the JSON data using a JSONDecoder
            do {
                let decodedData = try JSONDecoder().decode(WineData.self, from: jsonData)
                // Handle the decoded data
                completion(decodedData)
            } catch let error {
                print("Error decoding data: \(error)")
            }
        }
        
        // Start the data task
        task.resume()
        
    }
    
}

extension UIImageView {
    func load(url: String) {
        guard let url = URL(string: url) else { return }
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}

