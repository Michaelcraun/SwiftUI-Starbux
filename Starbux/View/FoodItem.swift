//
//  FoodItem.swift
//  Starbux
//
//  Created by Michael Craun on 5/9/20.
//  Copyright © 2020 Michael Craun. All rights reserved.
//

import SwiftUI

struct FoodItem: View {
    var data: Food
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 90, height: 90)
                .foregroundColor(.creamDark)
            Image(data.image)
                .resizable()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
                .overlay(Circle()
                    .stroke(Color.creamWhite, lineWidth: 1))
        }
    }
}

struct FoodItem_Previews: PreviewProvider {
    static var previews: some View {
        FoodItem(data: Food())
    }
}
