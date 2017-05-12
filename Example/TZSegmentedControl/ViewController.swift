//
//  ViewController.swift
//  TZSegmentedControl
//
//  Created by tahseen0amin@gmail.com on 05/05/2017.
//  Copyright (c) 2017 tahseen0amin@gmail.com. All rights reserved.
//

import UIKit
import TZSegmentedControl

class ViewController: UIViewController, SegmentedControlDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let cont = SegmentedControl(sectionTitles: ["TRENDING","EDITOR'S PICKS", "FOR YOU", "VIDEOS", "LANGUAGE" ])
        cont.selectionDelegate = self
        cont.frame = CGRect(x: 0, y: 50, width: self.view.frame.width, height: 50)
        cont.verticalDividerEnabled = false
        cont.indicatorWidthPercent = 0.8
        self.view.addSubview(cont)
        

        let imageCon = TZSegmentedControl(sectionImages: [UIImage(named: "1")!,
                                                          UIImage(named: "2")!,
                                                          UIImage(named: "3")!,
                                                          UIImage(named: "4")!],
                                          selectedImages: [UIImage(named: "1-selected")!,
                                                           UIImage(named: "2-selected")!,
                                                           UIImage(named: "3-selected")!,
                                                           UIImage(named: "4-selected")!])
        imageCon.frame = CGRect(x: 0, y: 120, width: self.view.frame.width, height: 50)
        imageCon.verticalDividerEnabled = false
        imageCon.indicatorWidthPercent = 0.8
        imageCon.selectionIndicatorColor = UIColor.gray
        imageCon.backgroundColor = UIColor.white
        self.view.addSubview(imageCon)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func segmentedControldidPressedAgainSelectedIndex(segmentedControl: SegmentedControl) {
        print("Hurrray ****")
    }
}

