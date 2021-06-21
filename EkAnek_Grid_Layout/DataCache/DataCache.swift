//
//  DataCache.swift
//  EkAnek_Grid_Layout
//
//  Created by PiancaSiri on 21/06/21.
//  
//

import UIKit

class DataCache: NSObject {

    static let shared = DataCache()
    
    private(set) var cache: NSCache<AnyObject, AnyObject> = NSCache()
    
    func getImageFromCache(key: String) -> UIImage? {
        if (self.cache.object(forKey: key as AnyObject) != nil) {
            return self.cache.object(forKey: key as AnyObject) as? UIImage
        } else {
            return nil
        }
    }
    
    func saveImageToCache(key: String, image: UIImage) {
        self.cache.setObject(image, forKey: key as AnyObject)
    }
    
}
final class Cache<Key: Hashable, Value> {
    private let wrapped = NSCache<WrappedKey, Entry>()
    
    func insert(_ value: Value, forKey key: Key) {
           let entry = Entry(value: value)
           wrapped.setObject(entry, forKey: WrappedKey(key))
       }

       func value(forKey key: Key) -> Value? {
           let entry = wrapped.object(forKey: WrappedKey(key))
           return entry?.value
       }

       func removeValue(forKey key: Key) {
           wrapped.removeObject(forKey: WrappedKey(key))
       }
}
private extension Cache {
    final class WrappedKey: NSObject {
        let key: Key

        init(_ key: Key) { self.key = key }

        override var hash: Int { return key.hashValue }

        override func isEqual(_ object: Any?) -> Bool {
            guard let value = object as? WrappedKey else {
                return false
            }

            return value.key == key
        }
    }
}
private extension Cache {
    final class Entry {
        let value: Value

        init(value: Value) {
            self.value = value
        }
    }
}
extension Cache {
    subscript(key: Key) -> Value? {
        get { return value(forKey: key) }
        set {
            guard let value = newValue else {
                // If nil was assigned using our subscript,
                // then we remove any value for that key:
                removeValue(forKey: key)
                return
            }

            insert(value, forKey: key)
        }
    }
}
