//
//  UserAvatar.swift
//  fraud-protection
//
//  Created by kebato OS on 05/12/24.
//
UserAvatar
import SwiftUI


 struct UserAvatar: View {
    
       var image: Image
       var size: CGFloat = 60
     
       var body: some View {
           image.resizable()
               .scaledToFit()
               .clipShape(Circle())
               .frame(width: size, height: size)
       }
   }

#Preview {
    UserAvatar(image: Image("userImage"))
}
