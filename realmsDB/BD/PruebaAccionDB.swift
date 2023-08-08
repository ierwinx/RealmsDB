import Foundation
import RealmSwift

class PruebaAccionDB {
    
    static func guardar(obj: ObjPrueba) -> Bool {
        guard let realm = try? Realm() else { return false }
        
        try! realm.write {
            realm.add(obj)
            print(obj.toString())
        }
        
        return true
    }
    
    static func getAll() -> [ObjPrueba] {
        guard let realm = try? Realm() else { return [] }
        let todos = realm.objects(ObjPrueba.self)
        return []
    }
    
    static func get(id: ObjectId) -> ObjPrueba? {
        guard let realm = try? Realm() else { return nil }
        let todos = realm.objects(ObjPrueba.self)
        let objEncontrado = todos.where { valor in
            valor.id == id
        }
        print(objEncontrado.first?.toString() ?? "No se encontro")
        return objEncontrado.first
    }
    
    static func delete(id: ObjectId) -> Bool {
        guard let realm = try? Realm() else { return false }
        if let objEncontrado: ObjPrueba = PruebaAccionDB.get(id: id) {
            realm.delete(objEncontrado)
            print("Se borro objeto")
            return true
        } else {
            return false
        }
    }
    
}
