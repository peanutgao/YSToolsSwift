//
//  Tools.swift
//  TCDoctor
//
//  Created by Joseph Koh on 2019/4/29.
//  Copyright © 2019 Joseph Koh. All rights reserved.
//

import UIKit

// MARK: - UI
public let KEY_WINDOW = UIApplication.shared.keyWindow

public let SCREEN_WIDTH = Double(UIScreen.main.bounds.size.width)
public let SCREEN_HEIGHT = Double(UIScreen.main.bounds.size.height)
public let SCREEN_MAX_LENGTH = Double(max(UIScreen.main.bounds.size.width, UIScreen.main.bounds.size.height))
public let SCREEN_MIN_LENGTH = Double(min(UIScreen.main.bounds.size.width, UIScreen.main.bounds.size.height))

public let TABBAR_HEIGHT = 49.0
public let NAVBAR_HEIGHT = (UIDevice.current.userInterfaceIdiom == .phone
&& max(UIScreen.main.bounds.size.width, UIScreen.main.bounds.height) >= 812.0) ? (20.0 + 44.0 + 22.0) : (20.0 + 44.0)

/// 高宽比
public let HW_SCALE = Double(UIScreen.main.bounds.size.height/UIScreen.main.bounds.size.width)
public let LAYOUT_SCALE = UIScreen.main.bounds.size.width / 375.0

// MARK: - Device
// pod 'DeviceGuru'
public let IS_FULL_SCREEN = (UIDevice.current.userInterfaceIdiom == .phone
    && max(UIScreen.main.bounds.size.width, UIScreen.main.bounds.height) >= 812.0)

public struct DeviceType {
    static let is_iPhone = (UIDevice.current.userInterfaceIdiom == .phone)
    static let is_iPad = (UIDevice.current.userInterfaceIdiom == .pad)
    
    static let is_iPhone_5 = (UIDevice.current.userInterfaceIdiom == .phone
        && max(UIScreen.main.bounds.size.width, UIScreen.main.bounds.size.height) == 568.0)
    static let is_iPhone_6_7_8 = (UIDevice.current.userInterfaceIdiom == .phone
        && max(UIScreen.main.bounds.size.width, UIScreen.main.bounds.size.height) == 667.0)
    static let is_iPhone_PLUS = (UIDevice.current.userInterfaceIdiom == .phone
        && max(UIScreen.main.bounds.size.width, UIScreen.main.bounds.size.height) == 736.0)
    static let is_iPhone_X_XS = (UIDevice.current.userInterfaceIdiom == .phone
        && max(UIScreen.main.bounds.size.width, UIScreen.main.bounds.size.height) == 812.0)
    static let is_iPhone_XR = (UIDevice.current.userInterfaceIdiom == .phone
        && max(UIScreen.main.bounds.size.width, UIScreen.main.bounds.size.height) == 896.0)
    static let is_iPhone_XS_MAX = (UIDevice.current.userInterfaceIdiom == .phone
        && max(UIScreen.main.bounds.size.width, UIScreen.main.bounds.size.height) == 896.0)
}


public struct AppInfo {
    static let displayName = Bundle.main.infoDictionary?["CFBundleDisplayName"]
    static let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"]
    static let buildVersion = Bundle.main.infoDictionary?["CFBundleVersion"]
}


public struct SaveArea {
    static var bottom: CGFloat {
        get {
            if #available(iOS 11.0, *) {
                return UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0
            } else {
                return 0
            }
        }
        set {
            
        }
        
    }
    
    static var top: CGFloat {
        get {
            if #available(iOS 11.0, *) {
                return UIApplication.shared.keyWindow?.safeAreaInsets.top ?? 0
            } else {
                return 0
            }
        }
        set {
            
        }
        
    }

}
