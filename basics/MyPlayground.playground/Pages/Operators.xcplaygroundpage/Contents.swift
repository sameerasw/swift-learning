import Foundation

var likeCount: Double = 5
var commentCount: Double = 0
var viewCount: Double = 100

likeCount += 1

if likeCount > 3 && commentCount > 0 {
    print("More than 3 likes and comments")
} else if likeCount > 3 {
    print("Like count above 3")
}
