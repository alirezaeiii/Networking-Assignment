//
//  DetailView.swift
//  NetworkingAssignment
//
//  Created by Ali on 11/10/24.
//

import SwiftUI

struct DetailView: View {
    let user: GithubUser
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: user.avatarUrl)) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                Rectangle()
                    .foregroundColor(.secondary)
                    .frame(height: Constants.frameHeight)
            }
            Spacer()
        }
        .navigationTitle(user.login)
        .navigationBarTitleDisplayMode(.inline)
    }
    
    private struct Constants {
        static let frameHeight: Double = 400
    }
}

#Preview {
    let user = GithubUser(login: "Ali", avatarUrl: "https://avatars.githubusercontent.com/u/2465559?v=4")
    return NavigationStack {
        DetailView(user: user)
    }
}
