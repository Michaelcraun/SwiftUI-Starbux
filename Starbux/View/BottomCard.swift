//
//  BottomCard.swift
//  Starbux
//
//  Created by Michael Craun on 5/9/20.
//  Copyright © 2020 Michael Craun. All rights reserved.
//

import SwiftUI

struct BottomCard: View {
    @Binding var showCard: Bool
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 80)
                .frame(width: 380, height: 270)
                .offset(x: -25, y: 270)
                .foregroundColor(.lightGreen)
            
            ZStack(alignment: .bottomLeading) {
                RoundedRectangle(cornerRadius: 80)
                    .frame(width: 550, height: 400)
                    .offset(x: 100, y: 390)
                    .foregroundColor(.darkGreen)
                
                ZStack(alignment: .leading) {
                    VStack {
                        Text("Customize Your Drink")
                            .foregroundColor(.creamWhite)
                            .font(.headline)
                            .padding(.bottom, 12)
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Add Toppings")
                                .foregroundColor(.lightGreen)
                                .font(.headline)
                                .bold()
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("White Mocha")
                                        .foregroundColor(.lightGreen)
                                        .font(.headline)
                                        .bold()
                                        .padding(.trailing, 120)
                                    Image(systemName: "checkmark.square")
                                        .foregroundColor(.orange)
                                }
                                HStack {
                                    Text("Raspberry Syrup")
                                        .foregroundColor(.lightGreen)
                                        .font(.headline)
                                        .bold()
                                        .padding(.trailing, 90)
                                    Image(systemName: "square")
                                        .foregroundColor(.orange)
                                }
                            }
                            Button(action: {
                                
                            }) {
                                Text("PROCEED")
                                    .bold()
                                    .foregroundColor(.darkGreen)
                                    .background(RoundedRectangle(cornerRadius: 20)
                                        .frame(width: 300, height: 50)
                                        .foregroundColor(.creamWhite))
                                    .padding(.top, 90)
                                    .padding(.leading, 120)
                            }
                        }
                    }.offset(x: (UIScreen.main.bounds.width / 2) - 60, y: (UIScreen.main.bounds.height / 2) - 100)
                }
            }
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 100, height: 100)
                .offset(x: 230, y: 200)
                .foregroundColor(.darkGreen)
            
            RoundedRectangle(cornerRadius: 87)
                .frame(width: 360, height: 54)
                .offset(x: 29, y: 163)
                .foregroundColor(.lightGreen)
        }.animation(.interactiveSpring())
            .blur(radius: showCard ? 0 : 1)
    }
}

//struct BottomCard_Previews: PreviewProvider {
//    static var previews: some View {
//        BottomCard()
//    }
//}
