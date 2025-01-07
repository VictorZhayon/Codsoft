import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color ScaffoldAppBarColor = Colors.white;
  Color IconColor = Colors.teal;
  Color BoldTextColor = Colors.teal;
  Color ContainerColor  = const Color.fromARGB(255, 223, 223, 223);

    int _currentIndex = 0;

  // List of screens for navigation
  final List<Widget> _screens = [
    Center(child: Text('Add Note Screen', style: TextStyle(fontSize: 24))),
    Center(child: Text('Trash Screen', style: TextStyle(fontSize: 24))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  bool _isChecked = false; // tracks the state of the checkbox

  final List<String> items = List.generate(5, (index) => 'Item $index');

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
            icon: Icon(Icons.search_rounded, color: IconColor,),
            onPressed: () {
              // Action when menu icon is pressed
              print('Menu pressed');
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications_rounded, color: IconColor,),
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
                    Row(
                      children: [
                        Text(
                          "Hello, Victor!",
                          style: TextStyle(color: BoldTextColor, fontSize: 22.0, fontWeight: FontWeight.bold),),
                          Image.asset('assets/hand.png', color: Colors.teal, width: 24, height: 24,)
                      ],
                    ),
                    
                  ],
                ),
              ),
              SizedBox(height: 15.0,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search your notes',
                    prefixIcon: Icon(Icons.search_rounded, size: 32, color: Colors.teal,), // Icon on the left
                    suffixIcon: IconButton(
                      icon: Icon(Icons.tune_rounded, color: IconColor), // Icon on the right
                      onPressed: () {
                        // Clear the text or perform any action
                        print('Clear pressed');
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Today's Date"),
                      Icon(Icons.calendar_today_rounded, color: Colors.teal, size: 22,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.0,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Task Pending'),
              ),
               Column(
                 children: [
                   ListView.builder(
                    scrollDirection: Axis.horizontal,
                     itemCount: items.length, // Total number of items
                     itemBuilder: (BuildContext context, int index) {
                     // Returns a widget for each item
                       return Card(
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text('Task $index'),
                             Checkbox(
                               checkColor: Colors.white,
                               fillColor: 
                               WidgetStateProperty.resolveWith((states) {
                                 if (states.contains(WidgetState.selected)) {
                                   return Colors.teal; // Teal color when selected
                                 }
                                 return Colors.white; // Default color
                                 }),
                               shape: CircleBorder(eccentricity: 1),
                               value: _isChecked,
                               onChanged: (bool? value) {
                                 setState(() {
                                   _isChecked = value ?? false; // Update the checkbox state
                                 });
                               },
                             ),
                           ]
                         ),
                       );
                     },
                   ),
                 ],
               ),
             SizedBox(height: 10.0,),
             Column(
               children: [
                 Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Pinned"),
                      Text("See All", style: TextStyle(color: Colors.pinkAccent),),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Tues., 7th Jan. 2024"),
                          //Expanded(
                            //child: Text("Lorem ipsum, dolor sit amet consectetur adipisicing elit. Laudantium iste, quos qui commodi voluptas necessitatibus eaque quod dolore dolorum placeat similique. Cupiditate, expedita autem maiores et exercitationem nostrum ipsa quaerat?"))
                        ],
                      ),
                    ),
                  )
               ],
             ),

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
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.delete_forever_rounded, 
              size: 24,
              color: Colors.teal),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/add-post.png',
              width: 24,
              height: 24,
              color: Colors.teal,),
            label: '',
          ),
        ],
      ),
    ),
    );
  }
}