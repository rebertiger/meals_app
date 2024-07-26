import 'package:flutter/material.dart';
import 'package:meals_app/widgets/filter_tile.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FiltersScreenState();
  }
}

class _FiltersScreenState extends State<FiltersScreen> {
  final _glutenFreeFilterSet = false;
  final _lactoseFreeFilterSet = false;
  final _vegetarianFilterSet = false;
  final _veganFilterSet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
        actions: const [],
      ),
      body: Column(
        children: [
          FilterTile(isFilterSet: _glutenFreeFilterSet,filterTitle: 'Gluten-Free',), //glutenfree
          FilterTile(isFilterSet: _lactoseFreeFilterSet,filterTitle: 'Lactose-Free',), //lactosefree
          FilterTile(isFilterSet: _vegetarianFilterSet,filterTitle: 'Vegetarian',), // vegetarian
          FilterTile(isFilterSet: _veganFilterSet,filterTitle: 'Vegan',), // vegan
          
        ],
      ),
    );
  }
}
