import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Meal> favouriteMeals;

  const FavouritesScreen(this.favouriteMeals, {super.key});

  @override
  Widget build(BuildContext context) {
    if (favouriteMeals.isEmpty) {
      return const Center(
        child: Text(
          'You have no favourites yet!',
          style: TextStyle(color: Colors.black),
        ),
      );
    } else {
      return ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(
              id: favouriteMeals[index].id,
              title: favouriteMeals[index].title,
              imageUrl: favouriteMeals[index].imageUrl,
              duration: favouriteMeals[index].duration,
              affordability: favouriteMeals[index].affordability,
              complexity: favouriteMeals[index].complexity,
            );
          },
          itemCount: favouriteMeals.length,
        );
    }
  }
}
