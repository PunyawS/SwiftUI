//
//  WebModel.swift
//  Week2_Test_ATK
//
//  Created by Train2 on 14/1/2565 BE.
//

import SwiftUI
import WebKit

struct webModel: UIViewRepresentable{
    var atkWeblink: ATK
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ webView: WKWebView, context: Context) {
        let path = atkWeblink.link
        let request = URLRequest(url: URL.init(string: path ?? "")!)
        webView.load(request)
    }
}
