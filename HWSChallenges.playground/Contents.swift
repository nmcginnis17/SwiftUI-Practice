import Foundation

extension String {
    func myContains(_ input: String) -> Bool {
        return range(of: input, options: .caseInsensitive) != nil
    }
}


print("Hello, world".myContains("Hello"))
print("Hello, world".myContains("WORLD"))
print("Hello, world".myContains("Goodbye"))
