import 'package:flutter/material.dart';

class searchScreen extends StatefulWidget {
  const searchScreen({Key? key}) : super(key: key);

  @override
  State<searchScreen> createState() => _searchScreenState();
}

class _searchScreenState extends State<searchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(30.0),
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

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  height: 90.0,
                  child: ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,

                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          padding: EdgeInsets.only(top: 10.0),
                          width: 160,
                          height: 100,
                          margin: EdgeInsets.all(10),
                          color: Color(0xfffa7705),
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: const Text(
                              'all Categories',
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
                        ])),
                Container(
                  child: Text("just for YOU"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
