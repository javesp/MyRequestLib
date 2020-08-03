//
//  RequestConnection.swift
//  MyRequestLib
//
//  Created by MacTecno on 8/2/20.
//

import Foundation

typealias HTTPHeaders = [String: String]

public enum RequestMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
}

public enum Result<T> {
    case success(T)
    case failure(Error)
}

public class RequestConnection: NSObject {
    
    var session:URLSession = URLSession.shared
    var urlRequest:URLRequest?
    var apiHost:String
    
    init(host:String) {
        self.apiHost = host
    }
    
    public func Request<T:Codable>(for: T.Type = T.self,
                    path:String,
                    httpMethod:RequestMethod,
                    completion: @escaping (Result<T>) -> Void,
                    HTTPHeaders:HTTPHeaders? = nil) {
        
        let url = URL(string: apiHost + path)
        urlRequest = URLRequest(url: url!)
        urlRequest?.httpMethod = httpMethod.rawValue
        
        if let Headers = HTTPHeaders {
            for header in Headers {
                urlRequest?.setValue(header.value, forHTTPHeaderField: header.key)
            }
        }
        
        session.dataTask(with: urlRequest!) { (data, response, error) in
            if error != nil{
                completion(.failure(error!.localizedDescription as! Error))
            }
            do {
                let result = try JSONDecoder().decode(T.self, from: data!)
                DispatchQueue.main.async {
                    completion(.success(result))
                }
            } catch let errorException{
                completion(.failure(errorException.localizedDescription as! Error))
            }
        }.resume()
        
    }

}

