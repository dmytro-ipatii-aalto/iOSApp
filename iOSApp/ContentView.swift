//
//  ContentView.swift
//  iOSApp
//
//  Created by Dmytro Ipatii on 06/02/26.
//

import SwiftUI
import KMPSharedLibrary

struct ContentView: View {
    @State var greetPlatform: String = "Hello! This is the KMP Library designed for ${platform} v.${version}"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Text(greetPlatform)
        }
        .padding()
        .onAppear {
            let platformInfo = PlatformInfo()
            let platformName = platformInfo.getPlatformName()
            let platformVersion = platformInfo.getPlatformVersion()
            
            greetPlatform = greetPlatform.replacingOccurrences(of: "${platform}", with: platformName)
            greetPlatform = greetPlatform.replacingOccurrences(of: "${version}", with: "\(platformVersion)")
            
            
        }
    }
}

#Preview {
    ContentView()
}
