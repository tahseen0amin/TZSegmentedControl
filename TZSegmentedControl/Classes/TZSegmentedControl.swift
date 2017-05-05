//
//  TZSegmentedControl.swift
//  Pods
//
//  Created by Tasin Zarkoob on 05/05/17.
//
//

import UIKit

/// Selection Style for the Segmented control
///
/// - parameter textWidth : Indicator width will only be as big as the text width
/// - parameter fullWidth : Indicator width will fill the whole segment
/// - parameter box : A rectangle that covers the whole segment
/// - parameter arrow : An arrow in the middle of the segment pointing up or down depending
///                     on `TZSegmentedControlSelectionIndicatorLocation`
///
enum TZSegmentedControlSelectionStyle {
    case textWidth
    case fullWidth
    case box
    case arrow
}

enum TZSegmentedControlSelectionIndicatorLocation{
    case up
    case down
    case none // No selection indicator
}

enum TZSegmentedControlSegmentWidthStyle {
    case fixed      // Segment width is fixed
    case dynamic    // Segment width will only be as big as the text width (including inset)
}

enum TZSegmentedControlBorderType {
    case none   // 0
    case top    // (1 << 0)
    case left   // (1 << 1)
    case bottom // (1 << 2)
    case right  // (1 << 3)
}

enum TZSegmentedControlType {
    case text
    case images
    case textImages
}

typealias IndexChangeBlock = ((Int) -> Void)
typealias TZTitleFormatterBlock = ((_ segmentedControl: TZSegmentedControl, _ title: String, _ index: Int, _ selected: Bool) -> NSAttributedString)

class TZSegmentedControl: UIControl {

    var sectionTitles : [String]?
    var sectionImages: [UIImage]?
    var sectionSelectedImages : [UIImage]?
    
    /// Provide a block to be executed when selected index is changed.
    /// Alternativly, you could use `addTarget:action:forControlEvents:`
    var indexChangeBlock : IndexChangeBlock?
    
    /// Used to apply custom text styling to titles when set.
    /// When this block is set, no additional styling is applied to the `NSAttributedString` object
    /// returned from this block.
    var titleFormatter : TZTitleFormatterBlock?
    
    /// Text attributes to apply to item title text.
    dynamic var titleTextAttributes: [String: Any]?
    
    /// Text attributes to apply to selected item title text.
    /// Attributes not set in this dictionary are inherited from `titleTextAttributes`.
    dynamic var selectedTitleTextAttributes: [String: Any]?
    
    /// Segmented control background color.
    /// Default is `[UIColor whiteColor]`
    dynamic override var backgroundColor: UIColor! {
        set {self.backgroundColor = newValue}
        get {return self.backgroundColor}
    }
    
    /// Color for the selection indicator stripe
    /// Default is `R:52, G:181, B:229`
    dynamic var selectionIndicatorColor : UIColor!;
    
    /// Color for the selection indicator box
    /// Default is selectionIndicatorColor
    dynamic var selectionIndicatorBoxColor : UIColor!;
    
    /// Color for the vertical divider between segments.
    /// Default is `[UIColor blackColor]`
    dynamic var verticalDividerColor : UIColor!;
    
    //TODO Add other visual apperance properities
    
    /// Specifies the style of the control
    /// Default is `text`
    var type: TZSegmentedControlType = .text
    
    /// Specifies the style of the selection indicator.
    /// Default is `textWidth`
    var selectionStyle: TZSegmentedControlSelectionStyle = .textWidth
    
    /// Specifies the style of the segment's width.
    /// Default is `fixed`
    var segmentWidthStyle: TZSegmentedControlSegmentWidthStyle = .fixed
    
    /// Specifies the location of the selection indicator.
    /// Default is `up`
    var selectionIndicatorLocation: TZSegmentedControlSelectionIndicatorLocation = .up
    
    /// Specifies the border type.
    /// Default is `none`
    var borderType: TZSegmentedControlBorderType = .none
    
    /// Specifies the border color.
    /// Default is `black`
    var borderColor = UIColor.black
    
    /// Specifies the border width.
    /// Default is `1.0f`
    var borderWidth: CGFloat = 1.0
    
    
    /// Default is NO. Set to YES to show a vertical divider between the segments.
    var verticalDividerEnabled = false
    
    /// Index of the currently selected segment.
    var selectedSegmentIndex: Int = -1
    
    ///MARK: Private variable
    /*
     @property (nonatomic, strong) CALayer *selectionIndicatorStripLayer;
     @property (nonatomic, strong) CALayer *selectionIndicatorBoxLayer;
     @property (nonatomic, strong) CALayer *selectionIndicatorArrowLayer;
     @property (nonatomic, readwrite) CGFloat segmentWidth;
     @property (nonatomic, readwrite) NSArray<NSNumber *> *segmentWidthsArray;
     @property (nonatomic, strong) HMScrollView *scrollView;
     */
    
    
    

}
