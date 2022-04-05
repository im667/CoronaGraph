//
//  PieChartView.swift
//  CoronaGraph
//
//  Created by mac on 2022/04/04.
//

import Charts
import UIKit
import SnapKit

class ChartView: UIView {
    
    let chartView = PieChartView()
    
    func setupView() {
        
        chartView.backgroundColor = .blue
        self.addSubview(chartView)
     
    }
    
    
      override init(frame: CGRect) {
          super.init(frame: frame)
          setupView()
      
      
      }
      
      required init?(coder: NSCoder) {
          super.init(coder: coder)
      }
    
    
    
    
    
}
