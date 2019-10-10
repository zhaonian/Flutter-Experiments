import 'package:eat/dummy_data.dart';
import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {

  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) => meal.categories.contains(categoryId)).toList();
    final categoryTitle = routeArgs['title'];
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle)),
      body: ListView.builder(itemBuilder: (context, index) {
        return Text(categoryMeals[index].title);
      }, itemCount: categoryMeals.length,),
    );
  }
}
