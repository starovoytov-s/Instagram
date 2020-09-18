//
//  DatabaseManager.swift
//  Instagram
//
//  Created by Stanislav Starovoytov on 17.09.2020.
//

import FirebaseDatabase

public class DataBaseManager {
    
    
    static let shared = DataBaseManager()
    
    private let databse = Database.database().reference()
    
    // MARK: - Public
    
    /// Check if username and email is available
    /// - Parametrs
    ///  - email: String representing email
    ///  - username: String representing username
    public func canCreateNewUser(with email: String, username: String, completion: (Bool) -> Void) {
        completion(true)
    }
    
    
    /// Insert user data to database
    /// - Parametrs
    ///  - email: String representing email
    ///  - username: String representing username
    ///  - completion: Async callback for result if database entry succeded
    public func insertNewUser(with email: String, username: String, completion: @escaping (Bool) -> Void) {
        databse.child(email.safeDatabaseKey()).setValue(["username":username]) { error, _ in
            if error == nil {
                // success
                completion(true)
                return
            } else {
                // failed
                completion(false)
                return
            }
        }
    }
    

}

