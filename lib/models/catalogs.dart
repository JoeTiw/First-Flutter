class CatalogsModel {
  static final products = [
Item(
  id: 1,
  name: "Galaxy Z Fold3 5G",
  description: "Galxy Fold for your use.",
  price: 1111.50,
  color: "#33505a",
  image: "https://www.slashgear.com/wp-content/uploads/2021/08/galaxy-z-fold-3.jpg"
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