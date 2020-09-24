//
//  ProfileTabsCollectionReusableView.swift
//  Instagram
//
//  Created by Stanislav Starovoytov on 21.09.2020.
//

import UIKit

class ProfileTabsCollectionReusableView: UICollectionReusableView {
        
    
    static let identifier = "ProfileTabsCollectionReusableView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
