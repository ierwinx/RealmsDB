import Foundation
import RealmSwift

class ObjPrueba: Object {
    
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var nombre: String = ""
    @Persisted var edad: Int = 0
    @Persisted var tieneCarro: Bool = false
    
    convenience init(nombre: String, edad: Int, tieneCarro: Bool) {
        self.init()
        self.nombre = nombre
        self.edad = edad
        self.tieneCarro = tieneCarro
    }
    
    func toString() {
        print("id: \(id.description), nombre: \(nombre), edad: \(edad.description), tieneCarro: \(tieneCarro.description)")
    }
    
}
