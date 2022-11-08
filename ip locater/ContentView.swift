//
//  ContentView.swift
//  ip locater
//
//  Created by Ali Erdem Kökcik on 8.11.2022.
//

import MapKit
import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $vm.location)
                .ignoresSafeArea()
            Circle()
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(.white.opacity(0.2))
                .cornerRadius(30)
            
            VStack {
                Spacer()
                VStack(spacing: 20) {
                    Text("**IP**: \(vm.ipAddress)")
                    Text("\(vm.ipGeo.city), \(vm.ipGeo.country)")
                        .font(.footnote)
                }
                .padding()
                .frame(width: 250)
                .background(.thickMaterial)
                .cornerRadius(30)
                .padding(.vertical, 50)
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
