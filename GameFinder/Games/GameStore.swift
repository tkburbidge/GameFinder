//
//  gameStore.swift
//  GameFinder
//
//  Created by Trevor Burbidge on 8/30/18.
//  Copyright © 2018 tkburbidge. All rights reserved.
//

import UIKit
import FirebaseFirestore

class GameStore: NSObject {
    
    let collectionPath = "games"
    let firestoreRef: Firestore!
    
    override init() {
        self.firestoreRef = Firestore.firestore()
    }
 
    func save(gameModel: GameModel) {
        self.firestoreRef.collection(self.collectionPath).addDocument(data: [
            "name": gameModel.name,
            "time": gameModel.time
        ])
    }
}
