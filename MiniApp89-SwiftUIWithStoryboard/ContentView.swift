//
//  ContentView.swift
//  MiniApp89-SwiftUIWithStoryboard
//

import SwiftUI

struct ContentView: View {
    @State var isSecondViewActive = false
    @State var isThirdViewActive = false

    var body: some View {
        VStack {

            Spacer()

            Button(action: {
                self.isSecondViewActive.toggle()
            }) {
                Text("SwiftUIViewへ画面遷移")
            }.sheet(isPresented: $isSecondViewActive) {
                NextSwiftUIView()
            }.padding()

            Button(action: {
                self.isThirdViewActive.toggle()
            }) {
                Text("Storyboardへ画面遷移")
            }.sheet(isPresented: $isThirdViewActive) {
                ThrowNextStoryboardViewController()
            }.padding()

            Spacer()

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
