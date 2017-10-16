import UIKit
// Alt tire olmasaydı verifyUrl(urlString : "http://wwww.google.com.tr/") şeklinde kullacaktık.

func verifyUrl (_ urlString: String?) -> Bool {
    let fixedUrlString = urlString
    
    if let urlString = fixedUrlString {
        if let url = URL(string: urlString) {
            return UIApplication.shared.canOpenURL(url)
        }
    }
    return false
}

func goOrSearchURL (_ checkURL : String!, isSearchable : Bool) -> (url : String, isGoing : Bool) {
    
    let isURL = verifyUrl(checkURL)
    print(isSearchable)
    if isURL == true {
        return (url : checkURL, isGoing: true)
        
    }
    if isSearchable == true {
   
    let addedPlus = checkURL.replacingOccurrences(of: " ", with: "+")
    let searchedURL = "https://google.com/search?q=\(addedPlus)"
        return (url: checkURL, isGoing : true)
    }
    return (url: checkURL, isGoing : false)
    
    
}
