//
//  AuthManager.swift
//  Instagram
//
//  Created by Stanislav Starovoytov on 17.09.2020.
//

import FirebaseAuth

public class AuthManager {
    
    
    static let shared = AuthManager()
    // MARK: - Public
    
    public func registerNewUser(username: String, email: String, password: String, completion: @escaping (Bool) -> Void) {
        
        //username is available
        //email is available
        //create account
        //insertn account to database
        
        
        DataBaseManager.shared.canCreateNewUser(with: email, username: username) { canCreate in
            if canCreate {
                //create account
                //insertn account to database
                
                Auth.auth().createUser(withEmail: email, password: password) { result, error in
                    guard error == nil, result != nil else {
                        // Firebase auth could not create an account
                        completion(false)
                        return
                    }
                    //insert to database
                    DataBaseManager.shared.insertNewUser(with: email, username: username) { inserted in
                        if inserted {
                            completion(true)
                            return
                        } else {
                            //failed to insert to database
                            completion(false)
                            return
                        }
                    }
                    
                }
            }
            
            else {
                // username or email does not exist
                completion(false)
                
            }
            
        }
        
        
    }
    
    public func loginUser(username: String?, email: String?, password: String, completion: @escaping (Bool) -> Void) {
        if let email = email {
            //email login
            
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                guard authResult != nil, error == nil else {
                    completion(false)
                    return
                }
                
                completion(true)
            }
        }
        
        else if let username = username {
             //username login
            print(username)
        }
        
    }
    
    
}
