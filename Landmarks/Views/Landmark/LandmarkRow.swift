//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Delvina Janice on 25/09/23.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmark = ModelData().landmarks[0]
    
    static var previews: some View {
        LandmarkRow(landmark: landmark)
    }
}
