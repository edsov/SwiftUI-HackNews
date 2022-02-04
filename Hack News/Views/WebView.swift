//
//  WebView.swift
//  Hack News
//
//  Created by Edgar Solis on 02/02/22.
//
import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
 
    var urlString: String?
 
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
 
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
