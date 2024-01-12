//
//  CustomButton.swift
//  SwiftCityForecast5
//
//  Created by Sergio Herrera on 1/11/24.
//

import SwiftUI

struct CustomButton: View {
    let action: () -> Void
    let text: String
    
    var body: some View {
        Button(action: action, label: {
            Text(text)
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .frame(width: 280, height: 55)
                .background(.blue)
                .clipShape(
                    RoundedRectangle(cornerRadius: 10)
                )
        })
    }
}

#Preview {
    CustomButton(action: {}, text: "Button text")
}
