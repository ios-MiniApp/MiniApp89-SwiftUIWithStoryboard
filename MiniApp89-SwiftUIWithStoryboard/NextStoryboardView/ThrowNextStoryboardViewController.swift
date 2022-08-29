//
//  SecondView.swift
//  MiniApp89-SwiftUIWithStoryboard
//
//  Created by 前田航汰 on 2022/08/29.
//

import SwiftUI

struct ThrowNextStoryboardViewController: View {
    var body: some View {
        NextStoryboardViewControllerWrapper{
            Text("Hello, World!")
        }
    }
}

struct NextStoryboardViewControllerWrapper<Content: View>: UIViewControllerRepresentable {

    typealias UIViewControllerType = NextStoryboardViewController
    var content: () -> Content

    func makeUIViewController(context: Context) -> NextStoryboardViewController {
        let viewControllerWithStoryboard = NextStoryboardViewController()
        return viewControllerWithStoryboard
    }

    func updateUIViewController(_ uiviewController: NextStoryboardViewController, context: Context) {
    }

}
