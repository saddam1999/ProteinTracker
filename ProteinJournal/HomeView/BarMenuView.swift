//
//  BarMenuView.swift
//  ProteinJournal
//
//  Created by Gamaliel Tellez on 5/5/20.
//  Copyright © 2020 GamaTellez. All rights reserved.
//

import SwiftUI

struct BarMenuView : View {
    @Binding var settingsViewPresented : Bool
    @Binding var analyticsViewPresented : Bool
    
    var body : some View {
        HStack {
            BarButton(imageName: "settings", function: {
                self.settingsViewPresented.toggle()
                
            }, side: .leading, paddingSize: 10)
            .sheet(isPresented: $settingsViewPresented) { SettingsView()
            }
            Spacer()
            DayText(text:"Monday March 20th")
            Spacer()
            BarButton(imageName: "analytics", function: { self.analyticsViewPresented.toggle()
            }, side: .trailing, paddingSize: 10)
        }
        .frame(minWidth: nil, idealWidth: nil, maxWidth: .infinity, minHeight: 50, idealHeight: nil, maxHeight: 50, alignment: .leading)
        .background(Color.black)
        .padding(.top, 38)
    }
}
