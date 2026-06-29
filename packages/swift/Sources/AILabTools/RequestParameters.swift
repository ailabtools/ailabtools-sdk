import Foundation

internal enum RequestValue {
    case string(String)
    case integer(Int)
    case number(Double)
    case boolean(Bool)
    case file(FileInput)

    var stringValue: String {
        switch self {
        case let .string(value): return value
        case let .integer(value): return String(value)
        case let .number(value): return String(value)
        case let .boolean(value): return value ? "true" : "false"
        case .file: return ""
        }
    }
}

internal protocol RequestParameters {
    func queryFields() -> [String: RequestValue]
    func bodyFields() -> [String: RequestValue]
    func validate() throws
}

internal extension RequestParameters {
    func queryFields() -> [String: RequestValue] { [:] }
    func bodyFields() -> [String: RequestValue] { [:] }
    func validate() throws {}
}
