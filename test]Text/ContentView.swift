//
//  ContentView.swift
//  test]Text
//
//  Created by nao on 2023/03/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            Spacer().frame(height: 200)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(alignment: .top, spacing: 8) {
                    ForEach(0..<8, id: \.self) { index in
                        Text("Hello, world!")
                            .frame(height: 50)
                            .foregroundColor(.white)
                            .background(.red)
                            .shadow(color: .black, radius: 10, x: 0, y: 3)
                            .id(index)
                    }
                }
            }
        }
    }
}

import UIKit

extension UIScrollView {
  open override var clipsToBounds: Bool {
    get { false }
    set { }
  }
}
