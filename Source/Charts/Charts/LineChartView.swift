//
//  LineChartView.swift
//  Charts
//
//  Copyright 2015 Daniel Cohen Gindi & Philipp Jahoda
//  A port of MPAndroidChart for iOS
//  Licensed under Apache License 2.0
//
//  https://github.com/danielgindi/Charts
//

import Foundation
import CoreGraphics

/// Chart that draws lines, surfaces, circles, ...
open class LineChartView: BarLineChartViewBase, LineChartDataProvider
{
    internal override func initialize()
    {
        super.initialize()
        
        renderer = LineChartRenderer(dataProvider: self, animator: _animator, viewPortHandler: _viewPortHandler)
    }

   @objc open func setNewData(_ lineData: LineChartData) {
        data = lineData
   }

    // MARK: - LineChartDataProvider
    
    open var lineData: LineChartData? {
            get {
                return _data as? LineChartData
            }
            set {
                 NSLog("NativeScriptData set from LineData")
                 data = newValue
            }
    }
}
