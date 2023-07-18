//
//  ViewController.swift
//  colltionViewApp
//
//  Created by andyhaz on 7/14/23.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var myCollectionView: NSCollectionView!

    var itemData = ["1","2","3"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}

extension ViewController: NSCollectionViewDelegate{
    
    func collectionView(_ collectionView: NSCollectionView, didSelectItemsAt indexPaths: Set<IndexPath>) {
        collectionView.deselectItems(at: indexPaths)
        print("mouse tap hello\(indexPaths)")
    }
}

extension ViewController: NSCollectionViewDataSource{
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemData.count
    }
    
    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        // Construct an 'item' --- an instance of the NSView defined in our xib.
        let item = collectionView.makeItem(withIdentifier: NSUserInterfaceItemIdentifier("myCollectionViewItem"), for: indexPath) as! myCollectionViewItem
        let itemImage = NSImage(named:"gator")!
        item.configer(with:itemImage, textLabel:itemData[indexPath[1]])

        return item
    }
}

//extension ViewController: NSCollectionViewDelegateFlowLayout{}
