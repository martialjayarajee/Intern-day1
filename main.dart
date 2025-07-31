import 'package:flutter/material.dart';

void main() {
  runApp(MyaPP());
}

class MyaPP extends StatelessWidget {
  const MyaPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstScreen(), debugShowCheckedModeBanner: false);
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<bool> isSelected = [true, false];


  //notificcation List

  List<Map<String,String>> notification=[
    {
      'title': 'Aarav',
      'subtitle': 'Engineering Student from Chennai.',
    },
    {
      'title': 'Diya',
      'subtitle': 'Freelance Graphic Designer.',
    },
    {
      'title': 'Rohan',
      'subtitle': 'Software Developer at Infosys.',
    },
    {
      'title': 'Meera',
      'subtitle': 'MBA Graduate looking for opportunities.',
    },
    {
      'title': 'Kabir',
      'subtitle': 'Civil Services Aspirant.',
    },
    {
      'title': 'Saanvi',
      'subtitle': 'Final Year B.Com Student.',
    },
    {
      'title': 'Arjun',
      'subtitle': 'Entrepreneur and Startup Founder.',
    },
    {
      'title': 'Ishita',
      'subtitle': 'High School Student with interest in AI.',
    },
    {
      'title': 'Vihaan',
      'subtitle': 'Data Analyst working in Bangalore.',
    },
    {
      'title': 'Ananya',
      'subtitle': 'Content Writer and Blogger.',
    },



  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        actions: [
          IconButton(
            icon: Icon(Icons.add_shopping_cart),
            onPressed: () {
              // right icon tap
            },
          ),
        ],
        backgroundColor: Colors.white,
        centerTitle: true,
        shadowColor: Colors.amberAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Center(
              child: ToggleButtons(
                isSelected: isSelected,
                onPressed: (int index) {
                  setState(() {
                    for (int i = 0; i < isSelected.length; i++) {
                      isSelected[i] = i == index;
                    }
                  });
                  if(index ==1){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context)=>SecondClass()),
                    );
                  }
                },
                borderWidth: 2,
                borderColor: Colors.blue,
                selectedBorderColor: Colors.blue,
                selectedColor: Colors.white,
                fillColor: Colors.blue,
                color: Colors.black,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text('Kudos'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text('Comments'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: notification.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/user.jpeg'),
                    radius: 25,
                  ),
                  title: Text(notification[index]['title']!),
                  subtitle: Text(notification[index]['subtitle']!),
                  onTap: () {},
                );
              },
            ),
          ),
          // You can add list items or other widgets below here
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Drawer',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

    );
  }
}

class SecondClass extends StatefulWidget {
  const SecondClass({super.key});

  @override
  State<SecondClass> createState() => _SecondClassState();
}

class _SecondClassState extends State<SecondClass> {

  List<bool> isSelected = [true, false];


  //notificcation List

  List<Map<String,String>> notification=[
    {
      'subtitle': 'Aarav',
      'title': 'Chase your dreams fearlessly.',
    },
    {
      'subtitle': 'Diya',
      'title': 'Stay humble, stay strong.',
    },
    {
      'subtitle': 'Rohan',
      'title': 'Every day is a new beginning.',
    },
    {
      'subtitle': 'Meera',
      'title': 'Kindness changes everything.',
    },
    {
      'subtitle': 'Kabir',
      'title': 'Grow through what you go through.',
    },
    {
      'subtitle': 'Saanvi',
      'title': 'Happiness is a choice.',
    },
    {
      'subtitle': 'Arjun',
      'title': 'Make your own path.',
    },
    {
      'subtitle': 'Ishita',
      'title': 'Dream big. Work hard.',
    },
    {
      'subtitle': 'Vihaan',
      'title': 'Believe in the power of you.',
    },
    {
      'subtitle': 'Ananya',
      'title': 'Keep going. Keep growing.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        actions: [
          IconButton(
            icon: Icon(Icons.add_shopping_cart),
            onPressed: () {
              // right icon tap
            },
          ),
        ],
        backgroundColor: Colors.white,
        centerTitle: true,
        shadowColor: Colors.amberAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Center(
              child: ToggleButtons(
                isSelected: isSelected,
                onPressed: (int index) {
                  setState(() {
                    for (int i = 0; i < isSelected.length; i++) {
                      isSelected[i] = i == index;
                    }
                  });
                  if(index ==0){
                    Navigator.pop(context);
                  }
                },
                borderWidth: 2,
                borderColor: Colors.blue,
                selectedBorderColor: Colors.blue,
                selectedColor: Colors.white,
                fillColor: Colors.blue,
                color: Colors.black,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text('Kudos'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text('Comments'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: notification.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/user2.jpeg'),
                      radius: 25),
                  title: Text(notification[index]['title']!),
                  subtitle: Text(notification[index]['subtitle']!),
                  onTap: () {},
                );
              },
            ),
          ),
          // You can add list items or other widgets below here
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Drawer',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );;
  }
}
