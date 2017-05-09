//
//  ViewController.swift
//  TZSegmentedControl
//
//  Created by tahseen0amin@gmail.com on 05/05/2017.
//  Copyright (c) 2017 tahseen0amin@gmail.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SegmentedControlDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let cont = SegmentedControl(sectionTitles: ["Section 1","Section 2","Section 3","Section 4","Section 5","Section 3","Section 4","Section 5"])
        cont.selectionDelegate = self
        cont.frame = CGRect(x: 0, y: 20, width: self.view.frame.width, height: 50)
        self.view.addSubview(cont)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func segmentedControldidPressedAgainSelectedIndex(segmentedControl: SegmentedControl) {
        print("Hurrray ****")
    }
}

