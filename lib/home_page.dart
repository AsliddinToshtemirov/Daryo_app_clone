import 'package:daryo_app/database.dart';
import 'package:flutter/material.dart';

import 'detailspage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Daryo ',
                        style: TextStyle(fontSize: 25),
                      ),
                      OutlinedButton(
                        // ignore: prefer_const_constructors
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white)),
                        onPressed: () {
                          debugPrint('Received click');
                        },
                        child: Text(
                          'Lotincha',
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          debugPrint('Received click');
                        },
                        child: Text(
                          'Krillcha',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Toshkent"),
                      Row(
                        children: [
                          Icon(Icons.cloud_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          Text("+12°")
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text("\$ 10569.78"),
                      Text("€ 11432.56"),
                      Text("₽ 150.67")
                    ],
                  )
                ],
              ),
            ),
            ListTile(
              title: const Text("Qo'llanma ekranini ko'rsatish"),
              tileColor: Color.fromARGB(255, 235, 207, 123),
              onTap: () {
                // Update the state of the app.
              },
            ),
            ListTile(
              title: const Text('So\'ngi yangiliklar'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Mahalliy'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Daryo'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Texnalogiyalar'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            Divider(
              thickness: 3,
            ),
            ListTile(
              title: const Text('Tanlangan xabar'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            Divider(
              thickness: 3,
            ),
            ListTile(
              title: const Text('Madaniyat'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Avto'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Sport'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Lifestyle'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Kolumnistlar'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Afisha'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Daryo"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: ListView(
        children: [
          MyItem(list[0], context),
          MyItem(list[1], context),
          MyItem(list[2], context),
          MyItem(list[3], context),
          MyItem(list[4], context),
          MyItem(list[5], context),
          MyItem(list[6], context),
          // MyItem(list[7], context)
        ],
      ),
    );
  }
}

Widget MyItem(News yangilik, context) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DetailsPage(yangilik: yangilik)),
      );
    },
    child: Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "    ${yangilik.type}",
                style: TextStyle(color: Colors.blue),
              ),
              Row(
                children: [
                  Text(yangilik.time),
                  Text(" | "),
                  Text(yangilik.day),
                  Text(" | "),
                  Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.blue,
                  ),
                  Text(yangilik.eyes, style: TextStyle(color: Colors.blue)),
                  Text("    ")
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 150,
                padding: const EdgeInsets.all(10),
                child: Image.network(
                  yangilik.imageUrl,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        width: 235,
                        child: Text(
                          yangilik.context,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
          Divider(
            height: 10,
            color: Colors.black,
          )
        ],
      ),
    ),
  );
}
