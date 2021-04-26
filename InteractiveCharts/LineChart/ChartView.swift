//
//  ChartView.swift
//  InteractiveCharts
//
//  Created by Dennis Concepción Martín on 26/4/21.
//

import SwiftUI

struct ChartView: View {
    var data: [Double]
    var dates: [String]?
    var hours: [String]?
    
    @State private var showingIndicators = false
    @State private var indexPosition = Int()
    
    var body: some View {
        VStack {
            ChartLabel(data: data, dates: dates, hours: hours, indexPosition: $indexPosition)
                .opacity(showingIndicators ? 1: 0)
                .padding(.vertical)

            LineView(data: data, showingIndicators: $showingIndicators, indexPosition: $indexPosition)
        }
    }
}
