//
//  TopCard.swift
//  Starbux
//
//  Created by Michael Craun on 5/9/20.
//  Copyright © 2020 Michael Craun. All rights reserved.
//

import SwiftUI

struct TopCard: View {
    @Binding var showTopCard: Bool
    @Binding var foodData: [Food]
    
    var body: some View {
        ZStack {
            Spacer()
            RoundedRectangle(cornerRadius: 45)
                .frame(width: 380, height: 270)
                .foregroundColor(.creamWhite)
                .offset(x: -17)
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 100, height: 180)
                .offset(x: -165, y: 100)
                .foregroundColor(.creamWhite)
            
            HStack {
                Image("frappuccino")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 150, height: 150)
                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(foodData) { item in
                                FoodItem(data: item)
                            }
                        }
                    }
                    Text("Caramel Cream Frappucino")
                        .fontWeight(.heavy)
                        .font(.title)
                        .foregroundColor(.darkGreen)
                        .frame(maxWidth: 210, maxHeight: 100, alignment: .leading)
                        .lineLimit(nil)
                        .padding(EdgeInsets(top: 0, leading: -40, bottom: 0, trailing: -40))
                }.frame(width: 240)
                    .padding(.trailing, 50)
            }.padding(.trailing, 10)
        }.animation(.spring())
            .offset(x: showTopCard ? 0 : -300)
            .onTapGesture {
                self.showTopCard.toggle()
        }
    }
}

//struct TopCard_Previews: PreviewProvider {
//    static var previews: some View {
//        TopCard()
//    }
//}
