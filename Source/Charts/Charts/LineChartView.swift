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
@objc open class LineChartView: BarLineChartViewBase, LineChartDataProvider
{
    internal override func initialize()
    {
        super.initialize()
        
        renderer = LineChartRenderer(dataProvider: self, animator: _animator, viewPortHandler: _viewPortHandler)
    }

   @objc open var nativescriptData: LineChartData?
   @objc open func assignnativescriptData() {
     NSLog("Assigning data")
     self.data = self.nativescriptData;
   }

   open func setNewestData(lineData: LineChartData) {
           self.data = lineData
   }

   open func setNData(_ lineData: LineChartData) {
            self.data = lineData
    }


   @objc open func setNewerData(lineData: LineChartData) {
        self.data = lineData
   }


   @objc open func setNewData(_ lineData: LineChartData) {
        self.data = lineData
   }

    // MARK: - LineChartDataProvider
    
    @objc open var lineData: LineChartData? {
            get {
                return _data as? LineChartData
            }
            set {
                 NSLog("NativeScriptData set from LineData")
                 self.data = newValue
            }
    }
}
