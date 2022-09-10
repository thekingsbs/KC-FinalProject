//
//  CustomTabItemStyle.swift
//  toneTryNumber4
//
//  Created by Saleh Al Sedrah on 05/09/2022.
//

import SwiftUI
import TabBar

struct CustomTabItemStyle: TabItemStyle {
    
    public func tabItem(icon: String, title: String, isSelected: Bool) -> some View {
        ZStack {
            if isSelected {
                Circle()
                    .foregroundColor(.blue)
                    .frame(width: 40.0, height: 40.0)
            }
            
            Image(systemName: icon)
                .foregroundColor(isSelected ? .white : Color("color.tab.item.foreground"))
                .frame(width: 32.0, height: 32.0)
        }
        .padding(.vertical, 8.0)
    }
    
}
