//
//  UserAvatar.swift
//  fraud-protection
//
//  Created by kebato OS on 05/12/24.
//

import SwiftUI

 public struct UserAvatarView: View {
    
       var image: Image
       var size: CGFloat = 60
    
    public var body: some View {
           image.resizable()
               .scaledToFit()
               .clipShape(Circle())
               .frame(width: size, height: size)
       }
   }

#Preview {
    UserAvatarView(image: Image("userImage"))
}
