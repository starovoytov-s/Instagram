//
//  ProfileInfoHeaderCollectionReusableView.swift
//  Instagram
//
//  Created by Stanislav Starovoytov on 21.09.2020.
//

import UIKit

class ProfileInfoHeaderCollectionReusableView: UICollectionReusableView {
        
    
    static let identifier = "ProfileInfoHeaderCollectionReusableView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBlue
        clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
