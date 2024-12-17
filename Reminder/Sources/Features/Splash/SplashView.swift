//
//  SplashView.swift
//  Reminder
//
//  Created by Gabi on 15/12/24.
//

import Foundation
import UIKit

class SplashView: UIView {
    
    private let logoImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Logo")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    private let titleLogoLabel: UILabel = {
        let label = UILabel()
        label.text = "Remind"
        label.textColor = .white
        label.font = Typography.logo
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        self.backgroundColor = Colors.primaryBlueBase
        
        self.addSubview(logoImageView)
        self.addSubview(titleLogoLabel)
        
        setupConstraints()
    }
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            titleLogoLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            titleLogoLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            logoImageView.trailingAnchor.constraint(equalTo: titleLogoLabel.leadingAnchor, constant: -8),
            logoImageView.centerYAnchor.constraint(equalTo: titleLogoLabel.centerYAnchor)
        ])
    }
}
