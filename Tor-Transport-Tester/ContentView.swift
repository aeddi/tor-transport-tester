//
//  ContentView.swift
//  Tor-Transport-Tester
//
//  Created by Antoine Eddi on 10/6/20.
//  Copyright © 2020 Antoine Eddi. All rights reserved.
//

import SwiftUI
import TorTransportTester

struct ContentView: View {
    @State var result = ""
    var body: some View {
        VStack {
            Button(action: {
                self.result = "Loading..."
                let startTime = CFAbsoluteTimeGetCurrent()
                let testResult = TorDo()
                let timeElapsed = Double(round(1000*(CFAbsoluteTimeGetCurrent() - startTime))/1000)
                self.result = "Time elapsed: \(timeElapsed) s.\nResult: \(testResult)"

            }) {
                HStack {
                    Image(systemName: "speedometer")
                        .font(.title)
                    Text("Test")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(40)
            }
            Text(result)
            .padding(33)
        }
        .padding(.top, 100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
