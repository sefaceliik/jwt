//
//  AuthService.swift
//  JWT
//
//  Created by Sefa Çelik on 12.11.2020.
//

import Foundation

class AuthService {
    
    func downloadAuthy(username: String, password: String){
        let semaphore = DispatchSemaphore (value: 0)

        let parameters = "{\r\n    \"username\": \"\(username)\",\r\n    \"password\": \"\(password)\"\r\n}"
        let postData = parameters.data(using: .utf8)

        var request = URLRequest(url: URL(string: "https://testcase1.keove.com/api/user/authenticate")!,timeoutInterval: Double.infinity)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        request.httpMethod = "POST"
        request.httpBody = postData

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
          
                guard let data = data else {
                    print(String(describing: error))
                    return
          }
            let datasFrom: Dataa = try! JSONDecoder().decode(Dataa.self, from: data)
            let authy = Authy.sharedInstance
            authy.id = datasFrom.id
            authy.name = datasFrom.name
            authy.surname = datasFrom.surname
            authy.username = datasFrom.username
            authy.jwtToken = datasFrom.jwtToken
            authy.refreshToken = datasFrom.refreshToken
            
            print(datasFrom.refreshToken)
            print(Authy.sharedInstance.refreshToken)
            //print("*****************************")
            //print(String(data: data, encoding: .utf8)!)
            semaphore.signal()
        }

        task.resume()
        semaphore.wait()

    }
}
