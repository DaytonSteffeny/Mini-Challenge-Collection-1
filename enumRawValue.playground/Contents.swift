import UIKit

enum StatusCode: Int {
    case success = 200
    case unauthorized = 401
    case forbidden = 403
    case notFound = 404
}

func prettyPrint(status: StatusCode) -> String {
    
    switch status {
    case .success:
        return "\(status.rawValue): Success"
   
    case .unauthorized:
        return "\(status.rawValue): Unauthorized"
    
    case .forbidden:
        return "\(status.rawValue): Forbidden"
    
    case .notFound:
        return "\(status.rawValue): Not Found"
    }
}

let success = StatusCode.success
    print(prettyPrint(status: success))

let unauthorized = StatusCode.unauthorized
    print(prettyPrint(status: unauthorized))

let forbidden = StatusCode.forbidden
    print(prettyPrint(status: forbidden))

let notFound = StatusCode.notFound
    print(prettyPrint(status: notFound))


