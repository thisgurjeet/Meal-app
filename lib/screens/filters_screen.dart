import 'package:flutter/material.dart';
import 'package:meal_app/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  final Function saveFilters;
  const FiltersScreen(this.saveFilters, {super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  @override
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: (() {
              final selectedFilters = {
                'gluten': _glutenFree,
                'lactose': _lactoseFree,
                'vegan': _vegan,
                'vegetarian': _vegetarian,
              };
              widget.saveFilters(selectedFilters);
            }),
          )
        ],
      ),
      drawer: const MainDrawer(),
      body: Column(children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Text(
            'Adjust your meal selection',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        Expanded(
            child: ListView(
          children: [
            SwitchListTile(
              title: const Text('Gluten-Free'),
              value: _glutenFree,
              subtitle: const Text('Only include gluten-free meal'),
              onChanged: (newValue) {
                setState(() {
                  _glutenFree = newValue;
                });
              },
            ),
            SwitchListTile(
              title: const Text('vegetarian'),
              value: _vegetarian,
              subtitle: const Text('Only include vegetarian meal'),
              onChanged: (newValue) {
                setState(() {
                  _vegetarian = newValue;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Vegan'),
              value: _vegan,
              subtitle: const Text('Only include vegan meal'),
              onChanged: (newValue) {
                setState(() {
                  _vegan = newValue;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Lactose-Free'),
              value: _lactoseFree,
              subtitle: const Text('Only include lactose-free meal'),
              onChanged: (newValue) {
                setState(() {
                  _lactoseFree = newValue;
                });
              },
            ),
          ],
        ))
      ]),
    );
  }
}
