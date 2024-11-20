import 'package:flutter/material.dart';
import 'package:flutter_application/Models/category_model.dart';

class CategoryScreens extends StatelessWidget {
  final String title;

  CategoryScreens({super.key, required this.title});
  
  final List<CategoryModel> categories = [
    CategoryModel(
      id: 1,
      name: 'Cake',
      image: 'https://media.istockphoto.com/id/478348860/photo/chocolate-cake-with-chocolate-fudge-drizzled-icing-and-chocolate-curls.jpg?s=612x612&w=0&k=20&c=XLHhfThUBkg_-28RCs9h0L-Fu-mUijNBzq8voZmbqqM=',
      description: 'Yummy cake',
    ),
    CategoryModel(
      id: 2,
      name: 'Pie',
      image: 'https://media.istockphoto.com/id/1272018182/photo/homemade-cherry-pie-with-lattice-pastry-isolated-on-white.jpg?s=612x612&w=0&k=20&c=FCFGRVcSGbeU8TxF9la7eCAYbPdjcCqBaDJLSwVuYvY=',
      description: 'Delicious pie',
    ),
    CategoryModel(
      id: 3,
      name: 'Donut',
      image: 'https://thumbs.dreamstime.com/b/colorful-donuts-assortiment-various-colors-toppings-51578396.jpg',
      description: 'Sweet donut',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blue,
        foregroundColor: const Color.fromARGB(255, 250, 250, 250),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return ListTile(
             
            leading: Image.network(category.image),
            title: Text(category.name),
            subtitle: Text(category.description),

          );
        },
      ),
    );
  }
}