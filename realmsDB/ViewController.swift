import UIKit
import RealmSwift

class ViewController: UIViewController {
    
    var id: ObjectId?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let aguardar = ObjPrueba(nombre: "Erwin", edad: 33, tieneCarro: true)
        id = aguardar.id
        let _ = PruebaAccionDB.guardar(obj: aguardar)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        guard let newID = id else { return }
        let datos = PruebaAccionDB.get(id: newID)
        print(datos?.nombre)
        let _ = PruebaAccionDB.delete(id: newID)
        
    }

}
