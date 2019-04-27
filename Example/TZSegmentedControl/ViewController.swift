//
//  ViewController.swift
//  TZSegmentedControl
//
//  Created by tahseen0amin@gmail.com on 05/05/2017.
//  Copyright (c) 2017 tahseen0amin@gmail.com. All rights reserved.
//

import UIKit
import TZSegmentedControl

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let titleCont = TZSegmentedControl(sectionTitles: ["SEGMENT","ALIGNMENT", "FEATURE" ])
        titleCont.frame = CGRect(x: 0, y: 50, width: self.view.frame.width, height: 50)
        titleCont.indicatorWidthPercent = 0.8
        let whitishColor = UIColor(white: 0.75, alpha: 1.0)
        titleCont.backgroundColor = UIColor.white
        titleCont.borderType = .none
        titleCont.borderColor = whitishColor
        titleCont.borderWidth = 0.5
        titleCont.segmentAlignment = .center
        titleCont.segmentWidthStyle = .dynamic
        titleCont.verticalDividerEnabled = false
        titleCont.verticalDividerWidth = 0.5
        titleCont.verticalDividerColor = whitishColor
        titleCont.selectionStyle = .fullWidth
        titleCont.selectionIndicatorLocation = .down
        titleCont.selectionIndicatorColor = UIColor.blue
        titleCont.selectionIndicatorHeight = 2.0
        titleCont.edgeInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        titleCont.selectedTitleTextAttributes = [NSAttributedString.Key.foregroundColor :UIColor.blue]
        titleCont.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.darkGray,
                                    NSAttributedString.Key.font:UIFont(name: "Tahoma", size: 10.0) ?? UIFont.systemFont(ofSize: 13)]
        self.view.addSubview(titleCont)

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
        
        let imageCon2 = TZSegmentedControl(sectionTitles: ["TRENDING","EDITOR'S PICKS", "FOR YOU", "VIDEOS", "LANGUAGE"], sectionImages: [UIImage(named: "1")!,
                                                          UIImage(named: "2")!,
                                                          UIImage(named: "3")!,
                                                          UIImage(named: "4")!,
                                                          UIImage(named: "3")!],
                                          selectedImages: [UIImage(named: "1-selected")!,
                                                           UIImage(named: "2-selected")!,
                                                           UIImage(named: "3-selected")!,
                                                           UIImage(named: "4-selected")!,
                                                           UIImage(named: "3-selected")!])
        imageCon2.frame = CGRect(x: 0, y: 180, width: self.view.frame.width, height: 90)
        imageCon2.verticalDividerEnabled = false
        imageCon2.indicatorWidthPercent = 0.8
        imageCon2.selectionIndicatorColor = UIColor.gray
        imageCon2.backgroundColor = UIColor.white
        imageCon2.selectedTitleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.blue]
        imageCon2.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.darkGray,
                                         NSAttributedString.Key.font:UIFont(name: "Tahoma", size: 10.0) ?? UIFont.systemFont(ofSize: 13)]
        imageCon2.indicatorWidthPercent = 0.0
        self.view.addSubview(imageCon2)
        
        let titleCont1 = TZSegmentedControl(sectionTitles: ["TRENDING","EDITOR'S PICKS", "FOR YOU", "VIDEOS", "LANGUAGE" ])
        titleCont1.frame = CGRect(x: 0, y: 280, width: self.view.frame.width, height: 50)
        titleCont1.indicatorWidthPercent = 0.0
        titleCont1.backgroundColor = UIColor.white
        titleCont1.borderColor = whitishColor
        titleCont1.borderWidth = 0.5
        titleCont1.segmentWidthStyle = .dynamic
        titleCont1.verticalDividerEnabled = true
        titleCont1.verticalDividerWidth = 0.5
        titleCont1.verticalDividerColor = whitishColor
        titleCont1.selectionStyle = .box
        titleCont1.selectionIndicatorLocation = .down
        titleCont1.selectionIndicatorColor = UIColor.green
        titleCont1.selectionIndicatorHeight = 2.0
        titleCont1.borderType = .top
        titleCont1.edgeInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        titleCont1.selectedTitleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        titleCont1.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.darkGray,
                                          NSAttributedString.Key.font:UIFont(name: "Tahoma", size: 10.0) ?? UIFont.systemFont(ofSize: 13)]
        self.view.addSubview(titleCont1)
        
        self.view.backgroundColor = UIColor(red: 0.3, green: 0.4, blue: 0.7, alpha: 0.7)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.init(uptimeNanoseconds: 30000)) {
            self.segControlFromNib!.sectionTitles = ["TRENDING","EDITOR'S PICKS", "FOR YOU", "VIDEOS", "LANGUAGE" ]
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var segControlFromNib : TZSegmentedControl!

}

