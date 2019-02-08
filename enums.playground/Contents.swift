import UIKit

enum StatusCode {
    case success
    case unauthorized
    case forbidden
    case notFound
}

func prettyPrint(status: StatusCode) -> String {
    
    switch status {
    case .success:
        return "200: Success"
    
    case .unauthorized:
        return "401: Unauthorized"
    
    case .forbidden:
        return "403: Forbidden"
   
    case .notFound:
        return "404: Not Found"
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
