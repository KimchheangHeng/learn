import UIKit

var str = """
    "name": "Docs\\u9879\\u76ee"
    """

let data = str.data(using: .ascii)!


let str1 = String.init(data: data, encoding: .utf8)

