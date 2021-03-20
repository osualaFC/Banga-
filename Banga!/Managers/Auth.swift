//
//  Auth.swift
//  Banga!
//
//  Created by fredrick osuala on 05/03/2021.
//

import Foundation

final class AuthManager{
    static let shared = AuthManager()
    
    struct Constants{
      static  let clientID = "b92b4661ad0245cb83a24616c0e2af3a"
      static  let clientSECRET = "296dd01037b9496289f971b2138d9c3b"
    }
    
    private init (){}
    
    public var signInUrl : URL?{
        let base_url = "https://accounts.spotify.com/authorize"
        let scpoes = "user-read-private"
        let redirectUrl = "https://www.iosacademy.io/"
        let url = "\(base_url)?response_type=code&client_id=\(Constants.clientID)&scope=\(scpoes)&redirect_uri=\(redirectUrl)&show_dialog=TRUE"
        return URL(string: url)
    }
    var isSignedIn: Bool {
        return false
    }
   private var accessToken: String? {
        return nil
    }
    private var refreshToken: String? {
         return nil
     }
    private var tokenExpirationDate: Date? {
         return nil
     }
    private var shouldRefreshToken: Bool {
         return false
     }
    
    public func exchangeCodeForToken(
        code: String,
        completion: @escaping ((Bool)-> Void)
        ){
        //get token
    }
    
    public func refreshAccessToken(){}
    
    public func cacheToken(){}
   
}
