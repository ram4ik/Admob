//
//  ContentView.swift
//  Admob
//
//  Created by ramil on 16.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI
import GoogleMobileAds

struct ContentView: View {
    var body: some View {
        AdView().frame(width: 150, height: 60)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct AdView: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<AdView>) -> GADBannerView {
        let banner =  GADBannerView(adSize: kGADAdSizeBanner)
        
        // AdMob id here
        banner.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        banner.rootViewController = UIApplication.shared.windows.first?.rootViewController
        banner.load(GADRequest())
        return banner
    }
    
    func updateUIView(_ uiView: GADBannerView, context: UIViewRepresentableContext<AdView>) {
    
    }
}
