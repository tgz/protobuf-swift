// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "unittest_embed_optimize_for.proto"
// Syntax "Proto2"

import Foundation
import ProtocolBuffers


public extension ProtobufUnittest{}

public func == (lhs: ProtobufUnittest.TestEmbedOptimizedForSize, rhs: ProtobufUnittest.TestEmbedOptimizedForSize) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasOptionalMessage == rhs.hasOptionalMessage) && (!lhs.hasOptionalMessage || lhs.optionalMessage == rhs.optionalMessage)
  fieldCheck = fieldCheck && (lhs.repeatedMessage == rhs.repeatedMessage)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension ProtobufUnittest {
  public struct UnittestEmbedOptimizeForRoot {
    public static var sharedInstance : UnittestEmbedOptimizeForRoot {
     struct Static {
         static let instance : UnittestEmbedOptimizeForRoot = UnittestEmbedOptimizeForRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(registry: extensionRegistry)
      ProtobufUnittest.UnittestOptimizeForRoot.sharedInstance.registerAllExtensions(registry: extensionRegistry)
    }
    public func registerAllExtensions(registry: ExtensionRegistry) {
    }
  }

  final public class TestEmbedOptimizedForSize : GeneratedMessage {
    public private(set) var optionalMessage:ProtobufUnittest.TestOptimizedForSize!
    public private(set) var hasOptionalMessage:Bool = false
    public private(set) var repeatedMessage:Array<ProtobufUnittest.TestOptimizedForSize>  = Array<ProtobufUnittest.TestOptimizedForSize>()
    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
      if hasOptionalMessage {
       if !optionalMessage.isInitialized() {
         return false
       }
      }
      var isInitRepeatedMessage:Bool = true
      for oneElementRepeatedMessage in repeatedMessage {
        if !oneElementRepeatedMessage.isInitialized() {
          isInitRepeatedMessage = false
          break 
        }
      }
      if !isInitRepeatedMessage {
        return isInitRepeatedMessage
      }
     return true
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
      if hasOptionalMessage {
        try codedOutputStream.writeMessage(fieldNumber: 1, value:optionalMessage)
      }
      for oneElementRepeatedMessage in repeatedMessage {
          try codedOutputStream.writeMessage(fieldNumber: 2, value:oneElementRepeatedMessage)
      }
      try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasOptionalMessage {
          if let varSizeoptionalMessage = optionalMessage?.computeMessageSize(fieldNumber: 1) {
              serialize_size += varSizeoptionalMessage
          }
      }
      for oneElementRepeatedMessage in repeatedMessage {
          serialize_size += oneElementRepeatedMessage.computeMessageSize(fieldNumber: 2)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func getBuilder() -> ProtobufUnittest.TestEmbedOptimizedForSize.Builder {
      return ProtobufUnittest.TestEmbedOptimizedForSize.classBuilder() as! ProtobufUnittest.TestEmbedOptimizedForSize.Builder
    }
    public func getBuilder() -> ProtobufUnittest.TestEmbedOptimizedForSize.Builder {
      return classBuilder() as! ProtobufUnittest.TestEmbedOptimizedForSize.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
      return ProtobufUnittest.TestEmbedOptimizedForSize.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
      return ProtobufUnittest.TestEmbedOptimizedForSize.Builder()
    }
    public func toBuilder() throws -> ProtobufUnittest.TestEmbedOptimizedForSize.Builder {
      return try ProtobufUnittest.TestEmbedOptimizedForSize.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:ProtobufUnittest.TestEmbedOptimizedForSize) throws -> ProtobufUnittest.TestEmbedOptimizedForSize.Builder {
      return try ProtobufUnittest.TestEmbedOptimizedForSize.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasOptionalMessage {
        jsonMap["optionalMessage"] = try optionalMessage.encode()
      }
      if !repeatedMessage.isEmpty {
        var jsonArrayRepeatedMessage:Array<Dictionary<String,AnyObject>> = []
          for oneValueRepeatedMessage in repeatedMessage {
            let ecodedMessageRepeatedMessage = try oneValueRepeatedMessage.encode()
            jsonArrayRepeatedMessage.append(ecodedMessageRepeatedMessage)
          }
        jsonMap["repeatedMessage"] = jsonArrayRepeatedMessage
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> ProtobufUnittest.TestEmbedOptimizedForSize {
      return try ProtobufUnittest.TestEmbedOptimizedForSize.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> ProtobufUnittest.TestEmbedOptimizedForSize {
      return try ProtobufUnittest.TestEmbedOptimizedForSize.Builder.fromJSONToBuilder(data:data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasOptionalMessage {
        output += "\(indent) optionalMessage {\n"
        if let outDescOptionalMessage = optionalMessage {
          output += try outDescOptionalMessage.getDescription(indent: "\(indent)  ")
        }
        output += "\(indent) }\n"
      }
      var repeatedMessageElementIndex:Int = 0
      for oneElementRepeatedMessage in repeatedMessage {
          output += "\(indent) repeatedMessage[\(repeatedMessageElementIndex)] {\n"
          output += try oneElementRepeatedMessage.getDescription(indent: "\(indent)  ")
          output += "\(indent)}\n"
          repeatedMessageElementIndex += 1
      }
      output += unknownFields.getDescription(indent: indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasOptionalMessage {
                if let hashValueoptionalMessage = optionalMessage?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValueoptionalMessage
                }
            }
            for oneElementRepeatedMessage in repeatedMessage {
                hashCode = (hashCode &* 31) &+ oneElementRepeatedMessage.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "ProtobufUnittest.TestEmbedOptimizedForSize"
    }
    override public func className() -> String {
        return "ProtobufUnittest.TestEmbedOptimizedForSize"
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:ProtobufUnittest.TestEmbedOptimizedForSize = ProtobufUnittest.TestEmbedOptimizedForSize()
      public func getMessage() -> ProtobufUnittest.TestEmbedOptimizedForSize {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasOptionalMessage:Bool {
           get {
               return builderResult.hasOptionalMessage
           }
      }
      public var optionalMessage:ProtobufUnittest.TestOptimizedForSize! {
           get {
               if optionalMessageBuilder_ != nil {
                  builderResult.optionalMessage = optionalMessageBuilder_.getMessage()
               }
               return builderResult.optionalMessage
           }
           set (value) {
               builderResult.hasOptionalMessage = true
               builderResult.optionalMessage = value
           }
      }
      private var optionalMessageBuilder_:ProtobufUnittest.TestOptimizedForSize.Builder! {
           didSet {
              builderResult.hasOptionalMessage = true
           }
      }
      public func getOptionalMessageBuilder() -> ProtobufUnittest.TestOptimizedForSize.Builder {
        if optionalMessageBuilder_ == nil {
           optionalMessageBuilder_ = ProtobufUnittest.TestOptimizedForSize.Builder()
           builderResult.optionalMessage = optionalMessageBuilder_.getMessage()
           if optionalMessage != nil {
              _ = try! optionalMessageBuilder_.mergeFrom(other: optionalMessage)
           }
        }
        return optionalMessageBuilder_
      }
      public func setOptionalMessage(_ value:ProtobufUnittest.TestOptimizedForSize!) -> ProtobufUnittest.TestEmbedOptimizedForSize.Builder {
        self.optionalMessage = value
        return self
      }
      public func mergeOptionalMessage(value:ProtobufUnittest.TestOptimizedForSize) throws -> ProtobufUnittest.TestEmbedOptimizedForSize.Builder {
        if builderResult.hasOptionalMessage {
          builderResult.optionalMessage = try ProtobufUnittest.TestOptimizedForSize.builderWithPrototype(prototype:builderResult.optionalMessage).mergeFrom(other: value).buildPartial()
        } else {
          builderResult.optionalMessage = value
        }
        builderResult.hasOptionalMessage = true
        return self
      }
      public func clearOptionalMessage() -> ProtobufUnittest.TestEmbedOptimizedForSize.Builder {
        optionalMessageBuilder_ = nil
        builderResult.hasOptionalMessage = false
        builderResult.optionalMessage = nil
        return self
      }
      public var repeatedMessage:Array<ProtobufUnittest.TestOptimizedForSize> {
           get {
               return builderResult.repeatedMessage
           }
           set (value) {
               builderResult.repeatedMessage = value
           }
      }
      public func setRepeatedMessage(_ value:Array<ProtobufUnittest.TestOptimizedForSize>) -> ProtobufUnittest.TestEmbedOptimizedForSize.Builder {
        self.repeatedMessage = value
        return self
      }
      public func clearRepeatedMessage() -> ProtobufUnittest.TestEmbedOptimizedForSize.Builder {
        builderResult.repeatedMessage.removeAll(keepingCapacity: false)
        return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> ProtobufUnittest.TestEmbedOptimizedForSize.Builder {
        builderResult = ProtobufUnittest.TestEmbedOptimizedForSize()
        return self
      }
      override public func clone() throws -> ProtobufUnittest.TestEmbedOptimizedForSize.Builder {
        return try ProtobufUnittest.TestEmbedOptimizedForSize.builderWithPrototype(prototype:builderResult)
      }
      override public func build() throws -> ProtobufUnittest.TestEmbedOptimizedForSize {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> ProtobufUnittest.TestEmbedOptimizedForSize {
        let returnMe:ProtobufUnittest.TestEmbedOptimizedForSize = builderResult
        return returnMe
      }
      public func mergeFrom(other:ProtobufUnittest.TestEmbedOptimizedForSize) throws -> ProtobufUnittest.TestEmbedOptimizedForSize.Builder {
        if other == ProtobufUnittest.TestEmbedOptimizedForSize() {
         return self
        }
        if (other.hasOptionalMessage) {
            _ = try mergeOptionalMessage(value: other.optionalMessage)
        }
        if !other.repeatedMessage.isEmpty  {
           builderResult.repeatedMessage += other.repeatedMessage
        }
        _ = try merge(unknownField: other.unknownFields)
        return self
      }
      override public func mergeFrom(codedInputStream: CodedInputStream) throws -> ProtobufUnittest.TestEmbedOptimizedForSize.Builder {
           return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittest.TestEmbedOptimizedForSize.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
        while (true) {
          let protobufTag = try codedInputStream.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 10:
            let subBuilder:ProtobufUnittest.TestOptimizedForSize.Builder = ProtobufUnittest.TestOptimizedForSize.Builder()
            if hasOptionalMessage {
              _ = try subBuilder.mergeFrom(other: optionalMessage)
            }
            try codedInputStream.readMessage(builder: subBuilder, extensionRegistry:extensionRegistry)
            optionalMessage = subBuilder.buildPartial()

          case 18:
            let subBuilder = ProtobufUnittest.TestOptimizedForSize.Builder()
            try codedInputStream.readMessage(builder: subBuilder,extensionRegistry:extensionRegistry)
            repeatedMessage.append(subBuilder.buildPartial())

          default:
            if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> ProtobufUnittest.TestEmbedOptimizedForSize.Builder {
        let resultDecodedBuilder = ProtobufUnittest.TestEmbedOptimizedForSize.Builder()
        if let jsonValueOptionalMessage = jsonMap["optionalMessage"] as? Dictionary<String,AnyObject> {
          resultDecodedBuilder.optionalMessage = try ProtobufUnittest.TestOptimizedForSize.Builder.decodeToBuilder(jsonMap:jsonValueOptionalMessage).build()

        }
        if let jsonValueRepeatedMessage = jsonMap["repeatedMessage"] as? Array<Dictionary<String,AnyObject>> {
          var jsonArrayRepeatedMessage:Array<ProtobufUnittest.TestOptimizedForSize> = []
          for oneValueRepeatedMessage in jsonValueRepeatedMessage {
            let messageFromStringRepeatedMessage = try ProtobufUnittest.TestOptimizedForSize.Builder.decodeToBuilder(jsonMap:oneValueRepeatedMessage).build()

            jsonArrayRepeatedMessage.append(messageFromStringRepeatedMessage)
          }
          resultDecodedBuilder.repeatedMessage = jsonArrayRepeatedMessage
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:Data) throws -> ProtobufUnittest.TestEmbedOptimizedForSize.Builder {
        let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
        }
        return try ProtobufUnittest.TestEmbedOptimizedForSize.Builder.decodeToBuilder(jsonMap:jsDataCast)
      }
    }

  }

}
extension ProtobufUnittest.TestEmbedOptimizedForSize: GeneratedMessageProtocol {
  public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<ProtobufUnittest.TestEmbedOptimizedForSize> {
    var mergedArray = Array<ProtobufUnittest.TestEmbedOptimizedForSize>()
    while let value = try parseDelimitedFrom(inputStream: inputStream) {
      mergedArray.append(value)
    }
    return mergedArray
  }
  public class func parseDelimitedFrom(inputStream: InputStream) throws -> ProtobufUnittest.TestEmbedOptimizedForSize? {
    return try ProtobufUnittest.TestEmbedOptimizedForSize.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
  }
  public class func parseFrom(data: Data) throws -> ProtobufUnittest.TestEmbedOptimizedForSize {
    return try ProtobufUnittest.TestEmbedOptimizedForSize.Builder().mergeFrom(data: data, extensionRegistry:ProtobufUnittest.UnittestEmbedOptimizeForRoot.sharedInstance.extensionRegistry).build()
  }
  public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittest.TestEmbedOptimizedForSize {
    return try ProtobufUnittest.TestEmbedOptimizedForSize.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(inputStream: InputStream) throws -> ProtobufUnittest.TestEmbedOptimizedForSize {
    return try ProtobufUnittest.TestEmbedOptimizedForSize.Builder().mergeFrom(inputStream: inputStream).build()
  }
  public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittest.TestEmbedOptimizedForSize {
    return try ProtobufUnittest.TestEmbedOptimizedForSize.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(codedInputStream: CodedInputStream) throws -> ProtobufUnittest.TestEmbedOptimizedForSize {
    return try ProtobufUnittest.TestEmbedOptimizedForSize.Builder().mergeFrom(codedInputStream: codedInputStream).build()
  }
  public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittest.TestEmbedOptimizedForSize {
    return try ProtobufUnittest.TestEmbedOptimizedForSize.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
  }
}

// @@protoc_insertion_point(global_scope)
