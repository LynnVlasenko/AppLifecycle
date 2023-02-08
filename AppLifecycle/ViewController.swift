//
//  ViewController.swift
//  AppLifecycle
//
//  Created by Алина Власенко on 29.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var appTitle = UILabel()
    private lazy var appDescription = UILabel()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }

    // MARK: - private
    
    private func setup() {
        setupStyle()
        setupHierarchy()
        setupLayout()
    }
    
    private func setupHierarchy() {
        view.addSubview(appTitle)
        view.addSubview(appDescription)
    }
    
    private func setupStyle() {
        setupAppTitle()
        setupAppDescription()
    }
    
    private func setupLayout() {
        appTitle.translatesAutoresizingMaskIntoConstraints = false
        appDescription.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            appTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            appTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            appDescription.topAnchor.constraint(equalTo: appTitle.bottomAnchor, constant: 80),
            appDescription.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            appDescription.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

    private func setupAppTitle() {
        appTitle.text = "App Lifecycle"
        appTitle.font = UIFont.systemFont(ofSize: 34, weight: .bold)
        appTitle.textColor = .orange
    }
    
    private func setupAppDescription() {
        appDescription.text = "Проект, який друкує повідомлення у консоль: \n - (“app goes to background”) коли додаток був згорнутий; \n - (“app becomes active”) коли розгорнутий."
        appDescription.font = UIFont(name: "GillSans-Light", size: 21)
        //appDescription.textColor = .black
        appDescription.textAlignment = .justified
        appDescription.numberOfLines = 6
        //appDescription.lineHeight = CGFloat(87) //- не працює..
        //appDescription.letterSpacing = 7
        //appDescription.font.lineHeight = 80
    }
}

