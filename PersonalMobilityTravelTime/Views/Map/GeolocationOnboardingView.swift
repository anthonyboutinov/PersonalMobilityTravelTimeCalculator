//
//  GeolocationOnboardingView.swift
//  PersonalMobilityTravelTime
//
//  Created by Anthony Boutinov on 26.07.2021.
//

import SwiftUI

struct GeolocationOnboardingView: View {
    
    @EnvironmentObject var map: MapTabModel
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "location.circle")
                .resizable()
                .frame(width:75, height: 75, alignment: .center)
                .foregroundColor(Constants.Colors.graphite)
                .padding(.bottom, 18)
            
            Text("Please allow geolocation tracking to use map features.")
                .font(.title2)
                .bold()
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button(action: {
                // Request for geolocation permission
                map.requestGeolocationPermission()
            }, label: {
                Text("Allow Location Services")
            })
            .buttonStyle(PlainLikeButtonStyle(.primary))
        }
        .padding(.horizontal, Constants.UI.horizontalSectionSpacing)
        .padding(.vertical, Constants.UI.verticalSectionSpacing)
    }
}

struct GeolocationOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        GeolocationOnboardingView().environmentObject(ContentModel())
    }
}
