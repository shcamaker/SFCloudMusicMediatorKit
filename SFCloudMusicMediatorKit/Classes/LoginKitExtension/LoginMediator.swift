//
//  LoginMediator.swift
//  SFCloudMusicMediatorKit_Example
//
//  Created by Alex.Shen on 2/27/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import CTMediator

private let loginKitName = "SFCloudMusicLoginKit"
private let loginTargetName = "Login"
private let loginViewControllerActionName = "loginViewController"

public struct LoginMediator {
    func loginViewController(loginBlock: Any) -> UIViewController? {
        let params = ["callback" : loginBlock,
        kCTMediatorParamsKeySwiftTargetModuleName:loginKitName] as [AnyHashable:Any]
        let mediator = CTMediator.sharedInstance()
        let viewController = mediator?.performTarget(loginTargetName, action: loginViewControllerActionName, params: params, shouldCacheTarget: false) as? UIViewController
        return viewController
    }
}

