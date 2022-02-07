//
//  MapView.swift
//  3rd week
//
//  Created by Train3 on 21/1/2565 BE.
//

import Foundation
import MapKit
import SwiftUI

struct MapView: UIViewRepresentable {
    var LocationManager = CLLocationManager()
    
    func makeUIView(context: Context) -> MKMapView {
        LocationManager.desiredAccuracy = kCLLocationAccuracyBest
        LocationManager.requestWhenInUseAuthorization()
        
        let mapview = MKMapView()
        return mapview
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
    }
}
