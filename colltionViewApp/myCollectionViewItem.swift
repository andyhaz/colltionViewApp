//
//  myCollectionViewItem.swift
//  colltionViewApp
//
//  Created by andyhaz on 7/14/23.
//

import Cocoa

class myCollectionViewItem: NSCollectionViewItem {

    @IBOutlet var myImageView: NSImageView?
    @IBOutlet var myLabel: NSTextField?
    
    static let identifier = "myCollectionViewItem"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        view.wantsLayer = true
        view.layer?.backgroundColor = NSColor.lightGray.cgColor
    }
    
    public func configer(with image:NSImage, textLabel:String){
      //  imageView.image = image
        myImageView?.image = image
        myLabel?.stringValue = textLabel
        print("show image")
    }//end
}
