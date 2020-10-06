//
//  ContentView.swift
//  ColorPicker
//
//  Created by Maxim Macari on 07/10/2020.
//

import SwiftUI

struct ContentView: View {
    @State var colors = UIColor.green
    
    
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color.init(colors))
                .edgesIgnoringSafeArea(.all)
            
            
            ColorsPicker(colors: self.$colors)
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
