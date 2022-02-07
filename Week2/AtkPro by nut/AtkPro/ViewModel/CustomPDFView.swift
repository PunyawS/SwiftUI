//
//  CustomPDFView.swift
//  OpenPDF
//
//  Created by Macbook16 on 13/1/2565 BE.
//

import SwiftUI
import PDFKit

struct CustomPDFView: UIViewRepresentable {
    private let pdf:PDFView = PDFView()
    var url: URL
    
    func makeUIView(context: Context) -> PDFView {
        return pdf
    }
    
    func updateUIView(_ uiView: PDFView, context: Context) {
        pdf.document = PDFDocument.init(url: url)
        pdf.autoScales = true
    }
}

