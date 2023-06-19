// 1. Создать две структуры: лимонад и салат.
// Сделать так, чтобы и то и то можно  добавить в меню кафе.

struct Lemonade: MenuProtocol{
    enum LemonadeType: String{
        case standart
    }
    var type: LemonadeType
    var cost: Double
    var name: String { type.rawValue + " lemonade"}
}
struct Salad: MenuProtocol {
    enum SaladType: String{
        case standart
    }
    var type: SaladType
    var cost: Double
    var name: String { type.rawValue + " salad"}
}

// 2. Добавить в класс кафе функцию, которая возвращает все позиции меню

class Cafe{
    private var menu: [MenuProtocol]

    init(menu: [MenuProtocol]){
        self.menu = menu
    }
    func add(_new: MenuProtocol){
        menu.append(new)
    }

    func get() ->[MenuProtocol]{
        return menu 
    }   

// 3. Добавить в класс кафе функцию, 
//которая на основе цены возвращает массив позиции которые можно
// купить (Например, есть черный чай за 50, зеленый за 60,
// лимонад за 100 и салат за 150. Функция получае 90, 
//значит она должна вернуть черный чай и зеленый чай)
func getAvilable(cost: Double) -> [MenuProtocol]{
    menu.filter { $0.cost <= cost }
    }
}
// 4. Задать переменной с меню в классе Cafe уровень fileprivate

class Cafe{
    fileprivate var menu: [MenuProtocol]
}

//5. Добавить в класс автомата с едой функцию,
// которая на основе полученного номера (номер элемента в массиве) 
//и денег возвращает товар под необходимым номером, 
//если денег хватает и nil, если денег не хватает. 
//Если товар не найден, тоже вернуть nil

class VendingMachine: FirstCafe{
    func get(number: Int, cost: Double) -> MenuProtocol? {
        guard number < menu.count else{
            return nil
        }
        let element = menu[number]
        if element.cost <= cost {
            return element
        }
        else {
            return nil
        }
    }
}

// 6. Создать протокол, в котором будет содержаться две функции: 
//start и final

protocol WorkProtokol {
    func start()
    func final()
}

//7. Для класса автомата с едой создать расширение,
// в котором будут содержаться функции из протокола из пункта 6 
//(класс должен быть подписан на протокол).
// В функции start должно печататься о начале работы автомата,
// а в final о завершении

extension VendingMachine: WorkProtokol {
    func start(){
        print("Start")
    }
    func final(){
        print("Final")
    }
    
}

