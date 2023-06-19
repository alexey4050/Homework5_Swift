/** 1. В рамках прошлого дз был создан класс пиццерии с переменной,
 в которой хранится пицца, удалите ее. 
 Необходимо создать структуру картошки фри,
  в которой будет стоимость и размер картошки и сделать так, 
  чтобы в классе пиццерии была одна переменная,
   в которую можно было бы класть и пиццу, и картошку фри.
 */

 class Pizzeria{
    private var pizza: [Pizza]

    init(pizza: [Pizza]){
        self.pizza = pizza
    }
    func removePizza(_pizza: Pizza) -> Pizza?{
      if let index = firstIndex(of: Pizza){
        return removePizza
      }
      return nill
    }

    struct frenchFries{
      var cost: Double
      var size: PotatoSize
    }
    enum PotatoSize{
      case s
      case m
      case l

      init(size: String){
        switch size{
          case "small": self = .s
          case "medium": self = .m
          case "large": self = .l
          default: self = .m
        }
      }
    }

    //В классе пиццерии была одна переменная, в которую можно было бы класть и пиццу, и картошку фри
    
    private var menu: [Menu]

    init(menu: [Menu]){
      self.menu = menu
    }
 }

 /** 2. Добавьте в класс пиццерии функцию, которая будет добавлять 
 новую позицию в меню
*/
class Pizzeria{
  private var menu: [Menu]

    init(menu: [Menu]){
      self.menu = menu
    }
    func add(_new: [Menu]){
      menu.append(new)
    }
}

/** 3. Создайте протокол, в котором будут содержаться функции 
открытия и закрытия */

protocol WorkProtokol{
  func open()
  func closure()
}

/** 4. Написать расширение для класса пиццерии,
 в  котором будет реализован протокол из пункта 3 */

extension Signboard: WorkProtokol{
  func open(){
    print("Open")
  }
  func closure(){
    print("Close")
  }
}

/** 5. Написать функцию, в которой происходит вычитание одного 
числа из другого. Функция должна работать и с Int, и с Double.
Функция должна возвращать результат вычитания */

func subtruct<E: Numeric>(x: E, y: E) -> E{
  return x - y
}
print(subtruct(x: 5, y: 2))
print(subtruct(x: 5.0, y: 1.5))
