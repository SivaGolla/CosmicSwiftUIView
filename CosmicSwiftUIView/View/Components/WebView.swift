//
//  WebView.swift
//  CosmicSwiftUIView
//
//  Created by Venkata Sivannarayana Golla on 07/09/24.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    let request: URLRequest
    
    func makeUIView(context: UIViewRepresentableContext<WebView>) -> WKWebView {
        let webView = WKWebView()
        
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        uiView.load(request)
    }
}

#Preview {
    WebView(request: .init(url: URL(string: "https://www.youtube.com")!))
}
