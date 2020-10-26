//
//  HourlyCollectionViewCell.swift
//  WeatherGift
//
//  Created by John Pappas on 10/26/20.
//  Copyright © 2020 John Pappas. All rights reserved.
//

import UIKit

class HourlyCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var hourlyTemperature: UILabel!
    
    var hourlyWeather: HourlyWeather! {
        didSet {
            hourLabel.text = hourlyWeather.hour
            iconImageView.image = UIImage(systemName: hourlyWeather.hourlyIcon)
            hourlyTemperature.text = "\(hourlyWeather.hourlyTemperature)°"
        }
    }
}
