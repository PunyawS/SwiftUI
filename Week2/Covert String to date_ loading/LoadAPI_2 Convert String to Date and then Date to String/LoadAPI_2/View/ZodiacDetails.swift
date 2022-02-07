//
//  ZodiacDetails.swift
//  LoadAPI_2
//
//  Created by Train2 on 12/1/2565 BE.
//

import SwiftUI
import WebKit

struct ZodiacDetails: UIViewRepresentable{
    var zodiac: Zodiac
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ webView: WKWebView, context: Context) {
        let path = "https://www.google.com/search?q=\(zodiac.zodiac_id ?? "")"
        let request = URLRequest(url: URL.init(string: path)!)
        webView.load(request)
    }
}
