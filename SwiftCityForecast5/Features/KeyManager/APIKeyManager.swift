//
//  APIKeyManager.swift
//  SwiftCityForecast5
//
//  Created by Sergio Herrera on 1/22/24.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

class APIKeyManager {
    private let apiCollection = Firestore.firestore().collection("api_keys")
    
    func fetchKey(completion: @escaping (String) -> Void) {
        let weatherDocRef = apiCollection.document("weather")
        
        weatherDocRef.getDocument { document, error in
            if let document = document, document.exists {
                let data = document.data()

                // Use optional binding to safely unwrap and cast to String
                if let apiKey = data?["api_key"] as? String {
                    completion(apiKey)
                } else {
                    print("api_key is not a String or is nil")
                }
            } else {
                print("Document doesn't exist")
            }
        }
    }
}
