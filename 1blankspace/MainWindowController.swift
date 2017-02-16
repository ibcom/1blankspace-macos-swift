//
//  MainWindowController.swift
//  1blankspace
//
//  Created by Matthew Spear on 07/12/2016.
//  Copyright © 2016 Matthew Spear. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController
{
    override func windowDidLoad()
    {
        super.windowDidLoad()
        
        if let window = window
        {
            window.titleVisibility = .hidden
        }
    }
    
    @IBAction func searchAction(_ sender: NSSearchField)
    {
        if let mainVC = self.contentViewController as? MainViewController
        {
            mainVC.searchAction(value: sender.stringValue)
        }
    }
}
