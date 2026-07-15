abstract class MenuItem{
  String name;
  double basePrice;

  MenuItem(this.name,this.basePrice);
  double price();
  String show(){
    return '$name - $basePrice บาท';
  }
}
// class Drink extends MenuItem{
//   int toppings;
//   Drink(this.toppings,String name,double basePrice): super(name,basePrice);
//   double drinkPrice=basePrice+(10*toppings);
// }