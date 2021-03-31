//
//  ViewController.swift
//  HighChartDemo
//
//  Created by xminds on 31/03/21.
//

import UIKit
import Highcharts

class ViewController: UIViewController {
    
    @IBOutlet var chartView: HIChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let options = HIOptions()
        
        let chart = HIChart()
        chart.type = "pie"
        
        chart.plotShadow = HICSSObject()
        chart.plotShadow.width = 0
        options.chart = chart
        
        
        let title = HITitle()
        title.text = "Browser"
        title.align = "center"
        title.verticalAlign = "middle"
        options.title = title
        
        //            let tooltip = HITooltip()
        //            tooltip.pointFormat = "{series.name}: <b>{point.percentage:.1f}%</b>"
        //            options.tooltip = tooltip
        
        let accessibility = HIAccessibility()
        accessibility.point = HIPoint()
        accessibility.point.valueSuffix = "%"
        options.accessibility = accessibility
        
        let colors = [
            HIColor(radialGradient: ["cx": 0.5, "cy": 0.3,"r": 0.9],
                    stops: [[ 0, "#7cb5ec" ],[1, "rgb(248,248,248)"]]),
            HIColor(radialGradient: ["cx": 0.5, "cy": 0.3,"r": 0.9],
                    stops: [[ 0, "#434348" ],[1, "rgb(248,248,248)"]])!,
            HIColor(radialGradient: ["cx": 0.5, "cy": 0.3,"r": 0.9],
                    stops: [[ 0, "#90ed7d" ],[1, "rgb(248,248,248)"]]),
            HIColor(radialGradient: ["cx": 0.5, "cy": 0.3,"r": 0.9],
                    stops: [[ 0, "#f7a35c" ],[1, "rgb(248,248,248)"]]),
            HIColor(radialGradient: ["cx": 0.5, "cy": 0.3,"r": 0.9],
                    stops: [[ 0, "#8085e9" ],[1, "rgb(248,248,248)"]]),
            HIColor(radialGradient: ["cx": 0.5, "cy": 0.3,"r": 0.9],
                    stops: [[ 0, "#f15c80" ],[1, "rgb(248,248,248)"]]),
            HIColor(radialGradient: ["cx": 0.5, "cy": 0.3,"r": 0.9],
                    stops: [[ 0, "#e4d354" ],[1, "rgb(248,248,248)"]]),
            HIColor(radialGradient: ["cx": 0.5, "cy": 0.3,"r": 0.9],
                    stops: [[ 0, "#2b908f" ],[1, "rgb(248,248,248)"]]),
            HIColor(radialGradient: ["cx": 0.5, "cy": 0.3,"r": 0.9],
                    stops: [[ 0, "#f45b5b" ],[1, "rgb(248,248,248)"]]),
            HIColor(radialGradient: ["cx": 0.5, "cy": 0.3,"r": 0.9],
                    stops: [[ 0, "#91e8e1" ],[1, "rgb(248,248,248)"]])
        ]
        
        let plotOptions = HIPlotOptions()
        plotOptions.pie = HIPie()
        plotOptions.pie.colors = colors as? [HIColor]
        plotOptions.pie.allowPointSelect = true
        plotOptions.pie.cursor = "pointer"
        let dataLabels = HIDataLabels()
        dataLabels.enabled = true
        dataLabels.distance = -50
        //            dataLabels.format = "<b>{point.name}</b>: {point.percentage:.1f} %"
        plotOptions.pie.dataLabels = [dataLabels]
        //            plotOptions.pie.center = [50, 50]
        //        plotOptions.pie.size = 100
        dataLabels.position = "center"
        dataLabels.align = "center"
        dataLabels.verticalAlign = "middle"
        options.plotOptions = plotOptions
        
        let brands = HIPie()
        brands.name = "Brands"
        brands.innerSize = 80
        // brands.colorByPoint = true
        
        let data1 = HIData()
        data1.name = "Chrome"
        data1.y = 61.41
        
        let data2 = HIData()
        data2.name = "Internet Explorer"
        data2.y =  11.84
        
        let data3 = HIData()
        data3.name = "Firefox"
        data3.y = 10.85
        
        let data4 = HIData()
        data4.name = "Edge"
        data4.y = 4.67
        
        let data5 = HIData()
        data5.name = "Safari"
        data5.y = 4.18
        
        brands.data = [data1, data2, data3, data4, data5]
        options.series = [brands]
        chartView.options = options
        
        self.view.addSubview(chartView)
    }
}

