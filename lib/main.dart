import 'package:flutter/material.dart';

// import 'package:instagram_screen/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  List<String> followers = [
    "Anu",
    "jerry",
    "Tom",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade900,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black, // Set border color
                    ),
                    borderRadius:
                        BorderRadius.circular(20), // Set border radius
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Categories',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      // Outer Circle Avatar
                      Container(
                        width: 30, // Adjust the size as needed
                        height: 30.0, // Adjust the size as needed
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue, // Outer circle background color
                        ),
                      ),
                      // Inner Circle Avatar
                      Container(
                        width: 15, // Adjust the size of the inner circle
                        height: 15, // Adjust the size of the inner circle
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red, // Inner circle background color
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Acounts you dont follow back',
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                      Text(
                        'cosm and 49 others',
                        style: TextStyle(color: Colors.blueGrey, fontSize: 9),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      // Outer Circle Avatar
                      Container(
                        width: 30, // Adjust the size as needed
                        height: 30, // Adjust the size as needed
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue, // Outer circle background color
                        ),
                      ),
                      // Inner Circle Avatar
                      Container(
                        width: 15, // Adjust the size of the inner circle
                        height: 15, // Adjust the size of the inner circle
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red, // Inner circle background color
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Least Interact With',
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                      Text(
                        'cosm and 49 others',
                        style: TextStyle(color: Colors.blueGrey, fontSize: 9),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'All Followers',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              child: Container(
                height: 700,
                child: ListView.builder(
                  itemCount: followers.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(
                            "assets\pp1.jpg"), // You can replace this with your avatar image
                      ),
                      title: Text(
                        followers[index],
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(10)),
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle the remove action here
                            // setState(() {
                            //   followers.removeAt(index);
                            // });
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.grey.shade900),
                          child: Text("Remove"),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
