//
//  SplashView.swift
//  Reminder
//
//  Created by Gabi on 15/12/24.
//

import Foundation
import UIKit

class SplashView: UIView {
    init() {
        super.init(frame: .zero)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        self.backgroundColor = .purple
        
        setupConstraints()
    }
    private func setupConstraints(){
        
    }
}
