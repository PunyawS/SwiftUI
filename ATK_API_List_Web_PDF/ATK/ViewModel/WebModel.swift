//
//  WebModel.swift
//  ATK
//
//  Created by Train2 on 13/1/2565 BE.
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
        let request = URLRequest(url: URL.init(string: path)!)
        webView.load(request)
    }
}

struct WebView2: UIViewRepresentable {
    //ประกาศ private ไว้เพราะไม่ต้องการให้ class อื่นมาใช้ด้วย
    private let wkWebview = WKWebView()
    var url:URL
    
    func makeUIView(context: Context) -> WKWebView {
        return wkWebview
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest.init(url: url))
    }
    
    func refresh() {
        wkWebview.reload()
    }
    
    func goBack(){
        //guard คือ ถ้า goback ได้ให้ goback ถ้าไม่ได้ ให้ออกมากจาก func
        guard wkWebview.canGoBack else {return}
        wkWebview.goBack()
    }
    
    func goForward(){
        guard wkWebview.canGoForward else {return}
        wkWebview.goForward()
    }
}
