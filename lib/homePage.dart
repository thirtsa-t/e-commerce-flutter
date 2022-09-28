import 'package:byosedealapp/categories.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      // appBar: CustomAppBar(),
      // drawer: const Dreawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Material(
                  elevation: 5.0,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                  child: TextFormField(
                    autofocus: false,
                    decoration: InputDecoration(
                        hintText: 'Search for the product or supplies',
                        hintStyle:
                            TextStyle(fontSize: 16, color: Colors.black45),
                        fillColor: Colors.white,
                        filled: true,
                        suffixIcon: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 20,
                                backgroundColor:
                                    Color.fromARGB(255, 42, 44, 37),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.5),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.5))),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 190.0, top: 20),
                child: const Text(
                  'For your business',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                // margin: const EdgeInsets.symmetric(
                //   vertical: 20.0,
                // ),

                margin: EdgeInsets.only(right: 20),

                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                height: 90.0,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,

                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        width: 160,
                        height: 100,
                        margin: const EdgeInsets.all(10),
                        color: const Color(0xfffa7705),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: const Text(
                                'all Categories',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            Container(
                              child: IconButton(
                                iconSize: 40,
                                icon: const Icon(
                                  Icons.category,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => bodyScreen()),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        margin: EdgeInsets.all(10),
                        width: 160.0,
                        color: Color(0xff44779e),
                        child: Container(
                          margin: EdgeInsets.only(top: 20),
                          child: const Text(
                            'Request for Quotation',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        width: 160,
                        margin: EdgeInsets.all(10),
                        color: Color(0xffa84260),
                        child: Container(
                          margin: EdgeInsets.only(top: 20),
                          child: const Text(
                            'Ready to Ship',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        width: 160,
                        margin: EdgeInsets.all(10),
                        color: Color(0xff3b4282),
                        child: Container(
                          margin: EdgeInsets.only(top: 15),
                          child: const Text(
                            'worldWide selection',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        width: 160,
                        margin: EdgeInsets.all(10),
                        color: Color.fromARGB(255, 153, 67, 149),
                        child: Container(
                          margin: EdgeInsets.only(top: 20),
                          child: const Text(
                            'logistics Service',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        margin: EdgeInsets.all(10),
                        width: 160.0,
                        color: Color(0xff44779e),
                        child: Container(
                          margin: EdgeInsets.only(top: 10),
                          child: const Text(
                            'Drop Shipping',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 240, top: 30),
                    child: const Text(
                      'Top-ranking',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: IconButton(
                        icon: Icon(Icons.arrow_forward),
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        onPressed: () {}),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
              Container(
                  height: 200.0,
                  child: ListView(
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.all(5),
                          color: const Color.fromARGB(255, 240, 237, 237),
                          width: 160.0,
                          child: Card(
                            color: Color.fromARGB(255, 240, 237, 237),
                            child: Wrap(children: [
                              Image.network(
                                  "https://media.istockphoto.com/photos/tomato-with-slice-isolated-with-clipping-path-picture-id941825878?k=20&m=941825878&s=612x612&w=0&h=Qx5wYoEKsig3BGfhHAb2ZUqRBrhi6k64ZbXp3_zhj4o="),
                              const ListTile(
                                title: Text(
                                  'Vegetable',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                subtitle: Text('Tomato',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                              )
                            ]),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          color: Color.fromARGB(255, 240, 237, 237),
                          width: 160.0,
                          child: Card(
                            color: Color.fromARGB(255, 240, 237, 237),
                            child: Wrap(children: [
                              Image.network(
                                  "https://media.istockphoto.com/photos/tomato-with-slice-isolated-with-clipping-path-picture-id941825878?k=20&m=941825878&s=612x612&w=0&h=Qx5wYoEKsig3BGfhHAb2ZUqRBrhi6k64ZbXp3_zhj4o="),
                              const ListTile(
                                title: Text(
                                  'Vegetable',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                subtitle: Text('Tomato',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                              )
                            ]),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          color: Color.fromARGB(255, 240, 237, 237),
                          width: 160.0,
                          child: Card(
                            color: Color.fromARGB(255, 240, 237, 237),
                            child: Wrap(children: [
                              Image.network(
                                  "https://media.istockphoto.com/photos/tomato-with-slice-isolated-with-clipping-path-picture-id941825878?k=20&m=941825878&s=612x612&w=0&h=Qx5wYoEKsig3BGfhHAb2ZUqRBrhi6k64ZbXp3_zhj4o="),
                              const ListTile(
                                title: Text(
                                  'Vegetable',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                subtitle: Text('Tomato',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                              )
                            ]),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          color: Color.fromARGB(255, 240, 237, 237),
                          width: 160.0,
                          child: Card(
                            color: Color.fromARGB(255, 240, 237, 237),
                            child: Wrap(children: [
                              Image.network(
                                  "https://media.istockphoto.com/photos/tomato-with-slice-isolated-with-clipping-path-picture-id941825878?k=20&m=941825878&s=612x612&w=0&h=Qx5wYoEKsig3BGfhHAb2ZUqRBrhi6k64ZbXp3_zhj4o="),
                              const ListTile(
                                title: Text(
                                  'Vegetable',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                subtitle: Text('Tomato',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                              )
                            ]),
                          ),
                        ),
                      ])),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 240, top: 30),
                    child: const Text(
                      'New-Arrival',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: IconButton(
                        icon: Icon(Icons.arrow_forward),
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        onPressed: () {}),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
              Container(
                height: 200.0,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(5),
                      color: const Color.fromARGB(255, 240, 237, 237),
                      width: 160.0,
                      child: Card(
                        color: Color.fromARGB(255, 240, 237, 237),
                        child: Wrap(children: [
                          Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Avocado_Hass_-_single_and_halved.jpg/800px-Avocado_Hass_-_single_and_halved.jpg"),
                          const ListTile(
                            title: Text(
                              'Vegetable',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            subtitle: Text('avocado',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          )
                        ]),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      color: Color.fromARGB(255, 240, 237, 237),
                      width: 160.0,
                      child: Card(
                        color: Color.fromARGB(255, 240, 237, 237),
                        child: Wrap(children: [
                          Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Avocado_Hass_-_single_and_halved.jpg/800px-Avocado_Hass_-_single_and_halved.jpg"),
                          const ListTile(
                            title: Text(
                              'Vegetable',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            subtitle: Text('avocado',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          )
                        ]),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      color: Color.fromARGB(255, 240, 237, 237),
                      width: 160.0,
                      child: Card(
                        color: Color.fromARGB(255, 240, 237, 237),
                        child: Wrap(children: [
                          Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Avocado_Hass_-_single_and_halved.jpg/800px-Avocado_Hass_-_single_and_halved.jpg"),
                          const ListTile(
                            title: Text(
                              'Vegetable',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            subtitle: Text('avocado',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          )
                        ]),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      color: Color.fromARGB(255, 240, 237, 237),
                      width: 160.0,
                      child: Card(
                        color: Color.fromARGB(255, 240, 237, 237),
                        child: Wrap(children: [
                          Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Avocado_Hass_-_single_and_halved.jpg/800px-Avocado_Hass_-_single_and_halved.jpg"),
                          const ListTile(
                            title: Text(
                              'Vegetable',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            subtitle: Text('avocado',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          )
                        ]),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      color: Color.fromARGB(255, 240, 237, 237),
                      width: 160.0,
                      child: Card(
                        color: Color.fromARGB(255, 240, 237, 237),
                        child: Wrap(children: [
                          Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Avocado_Hass_-_single_and_halved.jpg/800px-Avocado_Hass_-_single_and_halved.jpg"),
                          const ListTile(
                            title: Text(
                              'Vegetable',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            subtitle: Text('avocado',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          )
                        ]),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      color: Color.fromARGB(255, 240, 237, 237),
                      width: 160.0,
                      child: Card(
                        color: Color.fromARGB(255, 240, 237, 237),
                        child: Wrap(children: [
                          Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Avocado_Hass_-_single_and_halved.jpg/800px-Avocado_Hass_-_single_and_halved.jpg"),
                          const ListTile(
                            title: Text(
                              'Vegetable',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            subtitle: Text('avocado',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Grid(),
              ),
              // Column(
              //   children: [
              //     Container(
              //       height: 300.0,
              //       child: GridView.count(
              //         padding: const EdgeInsets.all(8),
              //         crossAxisSpacing: 20,
              //         mainAxisSpacing: 20,
              //         crossAxisCount: 2,
              //         children: <Widget>[
              //           Card(
              //             child: Container(
              //                 height: 200,
              //                 decoration: BoxDecoration(
              //                   borderRadius: BorderRadius.circular(20),
              //                   color: Colors.red,
              //                   image: const DecorationImage(
              //                       image: NetworkImage(
              //                           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmf4zsNBht1iQSBXgSamEp8SZPvLQt4ZB3yQ&usqp=CAU"),
              //                       fit: BoxFit.fitHeight),
              //                 ),
              //                 child: const Text('a plate')),
              //           ),
              //           Container(
              //             padding: const EdgeInsets.all(8),
              //             color: Colors.teal[200],
              //             child: const Text('Heed not the rabble'),
              //           ),
              //           Container(
              //             padding: const EdgeInsets.all(8),
              //             color: Colors.teal[300],
              //             child: const Text('Sound of screams but the'),
              //           ),
              //           Container(
              //             padding: const EdgeInsets.all(8),
              //             color: Colors.teal[400],
              //             child: const Text('Who scream'),
              //           ),
              //           Container(
              //             padding: const EdgeInsets.all(8),
              //             color: Colors.teal[500],
              //             child: const Text('Revolution is coming...'),
              //           ),
              //           Container(
              //             padding: const EdgeInsets.all(8),
              //             color: Colors.teal[600],
              //             child: const Text('Revolution, they...'),
              //           ),
              //           Container(
              //             padding: const EdgeInsets.all(8),
              //             color: Colors.teal[600],
              //             child: const Text('Revolution, they...'),
              //           ),
              //           Container(
              //             padding: const EdgeInsets.all(8),
              //             color: Colors.teal[600],
              //             child: const Text('Revolution, they...'),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class Grid extends StatefulWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  final List<Map<String, dynamic>> gripMap = [
    {
      'title': 'white sneaker with adidas logo',
      'price': "\$255",
      'images':
          'https://images.unsplash.com/photo-1591632288574-a387f820a1ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGRpc2h8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    },
    {
      'title': 'white sneaker with adidas logo',
      'price': "\$255",
      'images':
          'https://images.unsplash.com/photo-1591632288574-a387f820a1ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGRpc2h8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    },
    {
      'title': 'white sneaker with adidas logo',
      'price': "\$255",
      'images':
          'https://images.unsplash.com/photo-1591632288574-a387f820a1ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGRpc2h8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    },
    {
      'title': 'white sneaker with adidas logo',
      'price': "\$255",
      'images':
          'https://images.unsplash.com/photo-1591632288574-a387f820a1ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGRpc2h8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    },
    {
      'title': 'white sneaker with adidas logo',
      'price': "\$255",
      'images':
          'https://images.unsplash.com/photo-1591632288574-a387f820a1ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGRpc2h8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: GridView.builder(
          // physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 12.0, mainAxisExtent: 12.0),
          itemCount: gripMap.length,
          itemBuilder: (_, index) {
            return Container(
              color: Colors.grey,
            );
          }),
    );
  }
}

// class ItemCard extends StatelessWidget {
//   final Product product;
//   final Function press;
//   const ItemCard({
//     Key? key,
//     required this.product,
//     required this.press,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           padding: EdgeInsets.all(kDefaultPaddin),
//           decoration: BoxDecoration(
//             color: products[0].color,
//             borderRadius: BorderRadius.circular(16),
//           ),
//           child: Image.network(products[0].image),
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
//           child: Text(
//             products[0].title,
//             style: TextStyle(color: kTextColor),
//           ),
//         ),
//         Text(
//           '\$234',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         )
//       ],
//     );
//   }
// }
