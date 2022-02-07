//
//  WebView.swift
//  AtkPro
//
//  Created by Train1 on 13/1/2565 BE.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    var atkWeblink: Atk
        
    func makeUIView(context: Context) ->  WKWebView {
        return WKWebView()
    }
    func updateUIView(_ webView: WKWebView, context: Context) {
        let path = atkWeblink.link
        let request = URLRequest(url: URL.init(string: path)!)
        webView.load(request)
        
    }
}
struct WebView2: UIViewRepresentable{
    let wkWebView = WKWebView()
    var atkWeblink: Atk
    
    func makeUIView(context: Context) ->  WKWebView {
        return wkWebView
    }
    func updateUIView(_ webView: WKWebView, context: Context) {
        let path = atkWeblink.link
        let request = URLRequest(url: URL.init(string: path)!)
        webView.load(request)
        
    }
    
    func refresh(){
        wkWebView.reload()
    }
    
    func goBack(){
        guard wkWebView.canGoBack else { return }
        wkWebView.goBack()
    }
    
    func goForward(){
        guard wkWebView.canGoForward else { return }
        wkWebView.goForward()
    }
    
}





