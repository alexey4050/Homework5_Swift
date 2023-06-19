// 1. Создать протокол для меню.
// Протокол должен содержать стоимость и наименование.
// Стоимость и название должны быть get-only

protocol MenuProtocol{
    var cost: Double { get }
    var name: String { get }
}

// 2. Создайте класс кафе, в нем должен быть массив 
//с наименованиями меню  и инициализатор.
// Подпишите структуру чая с прошлого занятия на протокол
// из первого пункта. В качестве name должен быть вид чая и “tea”,
// то есть, например, для черного чая должно быть black tea, 
//а для зеленого green tea

struct Tea: MenuProtocol{
    enum TeaType: String{
        case black
        case green
        case fruit
    }
    var type: TeaType
    var name: String { type.rawValue + " tea"}
    var cost: Double

    init(type: TeaType, cost: Double){
        self.type = type
        self.cost = cost
    }

    func getCost(sale: Int) -> Double {
        guard sale <= 50 else {
            print("Невозможно применить скидку")
            return cost
        }
        return cost - cost * Double(sale) / 100
    }

}
class Cafe {
    private var menu: [MenuProtocol]

    init(menu: [MenuProtocol]) {
        self.menu = menu
    }
    func add(_new: MenuProtocol) {
        menu.append(new)
    }
}

// 3. Создайте еще 3 кафе, для которых класс Cafe будет родительским.

class FirstCafe: Cafe{}
class Secondcafe: Cafe{}
class ThirdCafe: Cafe{}

// 4. Добавить в родительский класс функцию (add) 
//по добавлению новой позиции в меню. 
//Саму переменную меню сделать приватной, 
//если она еще таковой не является
class Cafe{
    private var menu: [MenuProtocol]

    init(menu: [MenuProtocol]){
        self.menu = menu
    }

    func add(_new: MenuProtocol) {
        menu.append(new)
    }
}
class Secondcafe: Cafe{}
class ThirdCafe: Cafe{}


// 5. Сделать так, чтобы в первом из трех классов наследников
//(например, FirstCafe) функция add помимо того,
// что выполняла все тоже самое, что и в родительском классе,
// печатала в консоль стоимость добавляемой позиции.
class FirstCafe: Cafe{
    override func add(_new: MenuProtocol){
        super.add(new)
        print(new.cost)
    }
}

// 6. Создать класс автомата с едой, не реализовывать в нем ни методов,
// ни свойств, однако этот класс должен уметь делать все тоже самое,
// что и FirstCafe
class VendingMachine: FirstCafe {}

// 7. Сделать так, чтобы от класса автомата с напитками нельзя было наследоваться.

final class VendingMachine: FirstCafe {

}


