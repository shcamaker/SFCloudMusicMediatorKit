//
//  DiscoverMediator.swift
//  SFCloudMusicMediatorKit_Example
//
//  Created by Alex.Shen on 2/27/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import CTMediator

private let discoverKitName = "SFCloudMusicDiscoverKit"
private let discoverTargetName = "Discover"
private let discoverViewControllerActionName = "discoverViewController"

public struct DiscoverMediator {
    
   static func discoverViewController() -> UIViewController? {
         let params = [kCTMediatorParamsKeySwiftTargetModuleName:discoverKitName] as [AnyHashable:Any]
         let mediator = CTMediator.sharedInstance()
         let viewController = mediator?.performTarget(discoverTargetName, action: discoverViewControllerActionName, params: params, shouldCacheTarget: false) as? UIViewController
        return viewController
    }
    
}

