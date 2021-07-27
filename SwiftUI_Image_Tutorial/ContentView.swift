//
//  ContentView.swift
//  SwiftUI_Image_Tutorial
//
//  Created by LeeHsss on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                CircleImageView()
                HStack {
                    NavigationLink(destination: MyWebView(urlToLoad: "https://unsplash.com")) {
                        Text("다운하러 가기")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(20)
                            .edgesIgnoringSafeArea(.all)
                    }
                    NavigationLink(destination: MyWebView(urlToLoad: "https://github.com")) {
                        Text("깃허브로 가기")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(20)
                            .edgesIgnoringSafeArea(.all)
                    }
                } // HStack
                .padding(40)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
