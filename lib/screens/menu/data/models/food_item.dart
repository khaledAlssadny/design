class FoodItem {
  final String name;
  final String description;
  final String image;
  final String currentPrice;
  final String originalPrice;
  final int quantity;

  FoodItem({
    required this.name,
    required this.description,
    required this.image,
    required this.currentPrice,
    required this.originalPrice,
    required this.quantity,
  });
}


/*
    final List<FoodItem> foodItems = [
      FoodItem(
        name: "Crunchy Jalapeno Sandwich",
        description: "Sandwich prepared with 10 crunch \nand Kris",
        image: 'assets/images/BigSandwich.png',
        currentPrice: "170 BD",
        originalPrice: "270 BD",
        quantity: 1,
      ),
      FoodItem(
        name: "Tex Supreme Sandwich",
        description: "Sandwich prepared with 10 crunch \nand Kris",
        image: 'assets/images/BigSandwich.png',
        currentPrice: "170 BD",
        originalPrice: "270 BD",
        quantity: 1,
      ),
      FoodItem(
        name: "Classic Sandwich",
        description: "Sandwich prepared with 10 crunch \nand Kris",
        image: 'assets/images/meal3.png',
        currentPrice: "170 BD",
        originalPrice: "270 BD",
        quantity: 0,
      ),
    ];
*/