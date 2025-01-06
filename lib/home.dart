import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color ScaffoldAppBarColor = Colors.white;
  Color IconColor = Colors.grey;
  Color BoldTextColor = Colors.black;
  Color ContainerColor  = const Color.fromARGB(255, 223, 223, 223);



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ScaffoldAppBarColor,
        drawer: Drawer(),
        appBar: AppBar(
          elevation: 0,
        backgroundColor: Colors.white, // Sets the background color of the AppBar
        actions: [
          IconButton(
            icon: Icon(Icons.search_rounded, color: Colors.grey,),
            onPressed: () {
              // Action when menu icon is pressed
              print('Menu pressed');
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications_rounded, color: Colors.grey,),
            onPressed: () {
              // Action when menu icon is pressed
              print('Notification pressed');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, Victor!",
                      style: TextStyle(color: Colors.black, fontSize: 22.0, fontWeight: FontWeight.bold),),
                    Text("25 Task are pending"),
                  ],
                ),
              ),
              SizedBox(height: 15.0,),
              Container(
                decoration: BoxDecoration(
                  color: ContainerColor,
                  borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Courses',
                    prefixIcon: Icon(Icons.search_rounded, size: 32,), // Icon on the left
                    suffixIcon: IconButton(
                      icon: Icon(Icons.tune_rounded, color: const Color.fromARGB(255, 240, 60, 120),), // Icon on the right
                      onPressed: () {
                        // Clear the text or perform any action
                        print('Clear pressed');
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.0,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Ongoing Task'),
              ),
              Card(
                color: Colors.white,
                elevation: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(radius: 22, child: Text('19%'),),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 247, 181, 203)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                '6 Days Left',
                                style: TextStyle(color: Colors.pink,),
                            ),
                          )
                      )
                      ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Space App Design',
                                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Team Member',
                                  style: TextStyle(fontSize: 12.0,),
                                  ),
                                Row(
                                  children: [
                                    CircleAvatar(radius: 10, backgroundColor: Colors.amber,),
                                    CircleAvatar(radius: 10, backgroundColor: Colors.amber,),
                                    CircleAvatar(radius: 10, backgroundColor: Colors.amber,),
                                    Icon(Icons.add)
                                  ],
                                ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.alarm_rounded),
                                    Text("10:30 am to 01:30 pm")
                                  ],
                                ),
                              )
                            ],
                          ),
                          Icon(Icons.rocket_launch, size: 100, color: Colors.amber,)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Today's Task"),
                  Text("See All", style: TextStyle(color: Colors.pinkAccent),)
                ],
              ),
              
            ],
          ),
        ),
      )
    ),
    );
  }
}