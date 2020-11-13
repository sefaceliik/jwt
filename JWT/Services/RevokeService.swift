//
//  RevokeService.swift
//  JWT
//
//  Created by Sefa Çelik on 13.11.2020.
//

import Foundation

class RevokeService{
    
    func revokeRefresh(){
        let semaphore = DispatchSemaphore (value: 0)

        let parameters = "{\r\n    \"refreshToken\":\"\(Authy.sharedInstance.refreshToken)\"\r\n}"
        let postData = parameters.data(using: .utf8)

        var request = URLRequest(url: URL(string: "https://testcase1.keove.com/api/user/revoke-refresh-token")!,timeoutInterval: Double.infinity)
        request.addValue("Bearer \(Authy.sharedInstance.jwtToken)", forHTTPHeaderField: "Authorization")
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        request.httpMethod = "POST"
        request.httpBody = postData

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
          guard let data = data else {
            print(String(describing: error))
            return
          }
          print(String(data: data, encoding: .utf8)!)
          semaphore.signal()
        }

        task.resume()
        semaphore.wait()

    }
}
