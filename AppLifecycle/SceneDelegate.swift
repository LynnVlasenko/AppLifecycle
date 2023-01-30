//
//  SceneDelegate.swift
//  AppLifecycle
//
//  Created by Алина Власенко on 29.01.2023.


import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    //друкує повідомлення у консоль, коли додаток був розгорнутий (“app becomes active”)
    func sceneDidBecomeActive(_ scene: UIScene) {
        print("app becomes active")
    }

    //друкує повідомлення у консоль, коли додаток був згорнутий (“app goes to background”)
    func sceneDidEnterBackground(_ scene: UIScene) {
        print("app goes to background")
    }


}

