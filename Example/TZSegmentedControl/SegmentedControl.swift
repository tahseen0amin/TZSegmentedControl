//
//  SegmentedControl.swift
//  TZSegmentedControl
//
//  Created by Tasin Zarkoob on 09/05/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import TZSegmentedControl

@objc protocol SegmentedControlDelegate {
    func segmentedControldidPressedAgainSelectedIndex(segmentedControl: SegmentedControl)
}

class SegmentedControl: TZSegmentedControl {
    
    @IBOutlet weak var selectionDelegate: SegmentedControlDelegate?
    
    override func postInitMethod() {
        let whitishColor = UIColor(white: 0.75, alpha: 1.0)
        self.backgroundColor = UIColor.white
        self.borderType = .none
        self.borderColor = whitishColor
        self.borderWidth = 0.5
        self.segmentWidthStyle = .dynamic
        self.verticalDividerEnabled = true
        self.verticalDividerWidth = 0.5
        self.verticalDividerColor = whitishColor
        self.selectionStyle = .fullWidth
        self.selectionIndicatorLocation = .down
        self.selectionIndicatorColor = UIColor.blue
        self.selectionIndicatorHeight = 2.0
        self.edgeInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        self.selectedTitleTextAttributes = [NSForegroundColorAttributeName:UIColor.blue]
        self.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.darkGray,
                                    NSFontAttributeName:UIFont(name: "Tahoma", size: 10.0) ?? UIFont.systemFont(ofSize: 13)]
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if self.selectionDelegate != nil {
            let location = touches.first?.location(in: self)
            if let selectedRect = self.selectedRect() {
                if selectedRect.contains(location!){
                    self.selectionDelegate?.segmentedControldidPressedAgainSelectedIndex(segmentedControl: self)
                }
            }
        }
        super.touchesEnded(touches, with: event)
    }
    
    private func selectedRect() -> CGRect?{
        if let scrollView = self.subviews.first as? UIScrollView {
            let count = self.sectionTitles.count
            if count > 0 {
                let width = scrollView.contentSize.width / CGFloat(count)
                let start = width * CGFloat(self.selectedSegmentIndex)
                var rect = CGRect(x:start, y:0, width: width, height:self.bounds.size.height)
                rect.origin.x -= scrollView.contentOffset.x
                return rect
            }
        }
        return nil
    }
}
