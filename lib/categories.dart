import 'package:byosedealapp/feature.dart';
import 'package:byosedealapp/models/category.dart';
import 'package:byosedealapp/product_card.dart';
import 'package:byosedealapp/utilities/constants.dart';
import 'package:flutter/material.dart';

class bodyScreen extends StatelessWidget {
  const bodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 50, left: 20),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPaddin,
              ),
              child: Text(
                'All Categories',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const CategoriesScreen(),
          const SizedBox(
            height: defaultPadding,
          ),
          // const NewFeatureScreen(),
        ]));
  }
}

class NewFeatureScreen extends StatelessWidget {
  const NewFeatureScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(
            demo_product.length,
            (index) => Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ProductCard(
                image: demo_product[index].image,
                title: demo_product[index].title,
                price: demo_product[index].price,
                bgColor: demo_product[index].bgColor,
                press: () {},
              ),
            ),
          )),
        ),
      ],
    );
  }
}

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  // ignore: non_constant_identifier_names
  List<String> Categories = [
    'fruits',
    'vegetables',
    'Fashion',
    'Stationary & Office supplies',
    'Security & Surveillance',
    'Drinks& Beverages',
    'Home & Garden',
    'Auto parts & Accessories'
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Categories.length,
            itemBuilder: (context, index) => buildCategory(
                  index,
                )),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Categories[index],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: kDefaultPaddin / 4),
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
