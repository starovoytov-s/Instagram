//
//  StorageManager.swift
//  Instagram
//
//  Created by Stanislav Starovoytov on 17.09.2020.
//

import FirebaseStorage

public class StorageManager {
    
    
    static let shared = StorageManager()

    private let bucket = Storage.storage().reference()
    
    public enum IGStorageManagerErorr: Error {
        case failedToDownload
    }
    
    
    // MARK: - Public
    
    public func uploadUserPost(model: UserPost, completion: @escaping (Result<URL, Error>) -> Void) {
        
    }
    
    
    public func downloadImage(with reference: String, completion: @escaping (Result<URL, IGStorageManagerErorr>) -> Void) {
        bucket.child(reference).downloadURL(completion: { url, error in
            guard let url = url, error == nil else {
                completion(.failure(.failedToDownload))
                return
            }
            
            completion(.success(url))
        })
    }
    
}


