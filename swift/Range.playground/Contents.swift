import UIKit

var str = "Hello, playground"

var urlRegex: NSRegularExpression = {
    let regex = try? NSRegularExpression.init(pattern: "((?:http|https)://)?(?:www\\.)?[\\w\\d\\-_]+\\.\\w{2,3}(\\.\\w{2})?(/(?<=/)(?:[\\w\\d\\-./_]+)?)?", options: [.caseInsensitive])
    return regex!
}()

extension String {
    var urlRanges: [NSRange] {
        let results = urlRegex.matches(in: self, range: NSRange(self.startIndex..., in: self))
        return results.map {$0.range }
    }

}

var str1 = "12134http://baidu.com fads"
var urlRanges = str1.urlRanges
//        str1.

var urls = urlRanges.map {
    String(str1[Range($0, in: str1)!])
}
