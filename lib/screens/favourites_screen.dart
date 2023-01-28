import 'package:flutter/material.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(children: [
      const SizedBox(
        height: 15,
      ),
      Container(
        child: Text('Meals Price List',
            textScaleFactor: 1.2,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1),
      ),
      const SizedBox(
        height: 5,
      ),
      Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.red.shade200),
          // color: Colors.red,
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: Row(children: [
            Text(
              'Italian',
              style: Theme.of(context).textTheme.headline1,
            ),
            Expanded(
              child: Container(),
            ),
            Text(
              '\$25.99',
              style: Theme.of(context).textTheme.headline1,
            ),
          ])),
      Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.orange.shade200),
          // color: Colors.red,
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: Row(children: [
            Text(
              'German',
              style: Theme.of(context).textTheme.headline1,
            ),
            Expanded(
              child: Container(),
            ),
            Text(
              '\$34.99',
              style: Theme.of(context).textTheme.headline1,
            ),
          ])),
      Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.yellow.shade200),
          // color: Colors.red,
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: Row(children: [
            Text(
              'Hamburgers',
              style: Theme.of(context).textTheme.headline1,
            ),
            Expanded(
              child: Container(),
            ),
            Text(
              '\$39.99',
              style: Theme.of(context).textTheme.headline1,
            ),
          ])),
      Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.green.shade200),
          // color: Colors.red,
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: Row(children: [
            Text(
              'Exotic',
              style: Theme.of(context).textTheme.headline1,
            ),
            Expanded(
              child: Container(),
            ),
            Text(
              '\$21.99',
              style: Theme.of(context).textTheme.headline1,
            ),
          ])),
      Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.red.shade200),
          // color: Colors.red,
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: Row(children: [
            Text(
              'Breakfast',
              style: Theme.of(context).textTheme.headline1,
            ),
            Expanded(
              child: Container(),
            ),
            Text(
              '\$15.99',
              style: Theme.of(context).textTheme.headline1,
            ),
          ])),
      Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.purple.shade200),
          // color: Colors.red,
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: Row(children: [
            Text(
              'Asian',
              style: Theme.of(context).textTheme.headline1,
            ),
            Expanded(
              child: Container(),
            ),
            Text(
              '\$25.99',
              style: Theme.of(context).textTheme.headline1,
            ),
          ])),
      Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.pink.shade200),
          // color: Colors.red,
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: Row(children: [
            Text(
              'French',
              style: Theme.of(context).textTheme.headline1,
            ),
            Expanded(
              child: Container(),
            ),
            Text(
              '\$49.99',
              style: Theme.of(context).textTheme.headline1,
            ),
          ])),
      Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.brown.shade200),
          // color: Colors.red,
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: Row(children: [
            Text(
              'Summer',
              style: Theme.of(context).textTheme.headline1,
            ),
            Expanded(
              child: Container(),
            ),
            Text(
              '\$29.99',
              style: Theme.of(context).textTheme.headline1,
            ),
          ])),
    ]));
  }
}
