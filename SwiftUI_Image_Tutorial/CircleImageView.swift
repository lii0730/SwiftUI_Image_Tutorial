//
//  CircleImageView.swift
//  SwiftUI_Image_Tutorial
//
//  Created by LeeHsss on 2021/07/27.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
//        Image(systemName: "bolt.circle")
//            .font(.system(size: 200))
//            .foregroundColor(.yellow)
//            .shadow(color: .gray, radius: 2, x: 2, y: 10)
        
        Image("MyImage")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .shadow(color: .gray, radius: 10, x: 5, y: 10)
            .overlay(
                Circle()
                    .foregroundColor(.black)
                    .opacity(0.7)
            )
            .overlay(Circle().stroke(Color.red, lineWidth: 10).padding())
            .overlay(Circle().stroke(Color.yellow, lineWidth: 10).padding(30))
            .overlay(Circle().stroke(Color.blue, lineWidth: 10))
            .overlay(
                Text("Hello World")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
                    .fontWeight(.bold))
//            .aspectRatio(contentMode: .fill)
//            .frame(width: 200, height: 300)
//            .clipped()
//            .edgesIgnoringSafeArea(.all)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
