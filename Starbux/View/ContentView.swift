//
//  ContentView.swift
//  Starbux
//
//  Created by Michael Craun on 5/9/20.
//  Copyright © 2020 Michael Craun. All rights reserved.
//

import SwiftUI

let data = [
Food(image: "muffinOne"),
Food(image: "bready"),
Food(image: "blueberry-muffin"),
Food(image: "cakepop"),
Food(image: "smokedBacon"),
Food(image: "raspberryChoco")]

struct ContentView: View {
    @State var showCard: Bool = true
    @State var food = data
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            BackSplash()
            TopView()
            
            ZStack {
                TopCard(showTopCard: $showCard, foodData: $food)
                BottomCard(showCard: $showCard)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
