//
//  Temperature+Icon.swift
//  Weather
//
//  Created by Jesus Rivera on 10/02/23.
//

import SwiftUI

struct TemperatureIcon: View {
    var iconName: String
    var temperature: Int
    var spacing: CGFloat = 10
    var frame: (width: CGFloat, height: CGFloat) = (180,180)
    var fontSize: CGFloat = 70
    
    var body: some View {
        VStack(spacing: spacing) {
            Image(systemName: iconName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: frame.width, height: frame.height)
            
            Text("\(temperature)°")
                .font(.system(size: fontSize, weight: .medium))
                .foregroundColor(.white)
        }
    }
    
    
}

