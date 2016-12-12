//
//  ViewController.swift
//  MACOS_NSStatusBar&NSMenu
//
//  Created by sycf_ios on 2016/12/12.
//  Copyright © 2016年 sycf_ios. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    var status = NSStatusBar.system().statusItem(withLength: NSSquareStatusItemLength)
    var customMenu = NSMenu()
    override func viewDidLoad() {
        super.viewDidLoad()
        //设置点击状态图标时的响应事件
        status.target = self
        status.action = #selector(statusBarClicked(_:))
        //设置状态图标
        status.image = NSImage.init(named: "QQ")
        //设置应用图标
        NSApp.applicationIconImage = NSImage.init(named: "QQ1")
        //NSMenu
        customMenu.title = "Title"
        customMenu.addItem(withTitle: "关于我们", action: #selector(clickMenuItem(_:)), keyEquivalent: "g")
        customMenu.addItem(withTitle: "详细信息", action: #selector(clickMenuItem(_:)), keyEquivalent: "d")
        customMenu.addItem(withTitle: "退出", action: #selector(NSApp.terminate(_:)), keyEquivalent: "q")
        status.menu = customMenu
        
    }
    func statusBarClicked(_ sender:NSStatusItem){
        print("statusBarClicked")
    }
    func clickMenuItem(_ sender:NSMenuItem){
        print(sender.title)
    }
    
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    
}
