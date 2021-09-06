class CatalogsModel {
  static final products = [
Item(
  id: 1,
  name: "Galaxy Z Fold3 5G",
  description: "Galxy Fold for your use.",
  price: 1111.50,
  color: "#33505a",
  image: "https://lh3.googleusercontent.com/proxy/t6ifkeXyx7CaaXc-z7aJVzxw9ZJDbl4PEhlamM4LI28Ypce5NzWy6-PGYW-9znHPxloQNObHlC57ggyhLNch2FcD12T63PdCh-5ojwlK4kEXnGV4Hel1Z7BTmg1PVIR0vUM9J1p85CSq0RvC3A"
)

];
}



class Item{
  final int id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.description, required this.price, required this.color, required this.image});

}