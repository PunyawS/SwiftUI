//
//  MapView.swift
//  MapView
//
//  Created by Macbook16 on 20/1/2565 BE.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    var locationManager = CLLocationManager() // CLLocationManager สำคัญ

    func makeUIView(context: Context) -> MKMapView {
        setupManager() // ขอ permission
        let mapView = MKMapView(frame: UIScreen.main.bounds) // UIScreen.main.bounds เฟรมเต็มจอ
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        return mapView
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
    }
    
    func setupManager() {
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        // ขออนุญาตเข้าถึง location, แอพจะโชว์ permission ออโต้, เลือกขออันใดอันนึง
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestAlwaysAuthorization() // ขอเฉพาะแอพที่จำเป็นต้องใช้ location ตลอดเวลา
    }
}
