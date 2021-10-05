//
//  ContentView.swift
//  LottieDemo
//
//  Created by kai wen chen on 2021/10/5.
//

import SwiftUI

struct ContentView: View {
    
    @State var scaleOnOff = false
    
    var body: some View {
        ZStack {
            
            LottieView(name: "robot", loopMode: .loop)
                .frame(width: scaleOnOff ? 250 : 500, height: scaleOnOff ? 250 : 500)
                .offset(x: scaleOnOff ? 100 : 0)
                .animation(.spring())
            
            HStack {
                Button {
                    scaleOnOff.toggle()
                } label: {
                    Text("放大縮小")
                }
                
                Button {
                    scaleOnOff.toggle()
                } label: {
                    Text("旋轉")
                }
            }
            .padding(.top,500)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
