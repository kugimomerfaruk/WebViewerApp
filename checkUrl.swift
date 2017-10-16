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

func goOrSearchURL (_ checkURL : String!) -> String {
    let isURL = verifyUrl(checkURL)
    if isURL == true {
        return checkURL
    }
    let addedPlus = checkURL.replacingOccurrences(of: " ", with: "+")
    let searchedURL = "https://google.com/search?q=\(addedPlus)"
    return searchedURL
    
}
