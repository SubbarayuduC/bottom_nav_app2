import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationExample(),
    );
  }
}

class NavigationExample extends StatefulWidget {
  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          backgroundColor: Colors.orange[800],
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Home',
              selectedIcon: Icon(Icons.account_circle_rounded),
            ),
            NavigationDestination(
              icon: Icon(Icons.school_outlined),
              label: 'School',
              selectedIcon: Icon(Icons.school),
            ),
            NavigationDestination(
              icon: Icon(Icons.business_outlined),
              label: 'Business',
              selectedIcon: Icon(Icons.business),
            ),
          ],
        ),
        body: <Widget>[
          Container(
            color: Colors.red,
            alignment: Alignment.center,
        child: Column(

          children: [
            Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(hintText: 'First Name',
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (String value) {

                          },
                          validator: (value) {
                            return value!.isEmpty
                                ? 'Please Enter First Name.'
                                : null;
                          },
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(hintText: 'Email Address',
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (String value) {

                          },
                          validator: (value) {
                            return value!.isEmpty
                                ? 'Please Enter Your Email.'
                                : null;
                          },
                        ),
                      ),

                      Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(hintText: 'Password',
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (String value) {

                          },
                          validator: (value) {
                            return value!.isEmpty
                                ? 'Please Enter Your Password.'
                                : null;
                          },
                        ),
                      ),
                      SizedBox(height: 25,),

                      Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                        child: ElevatedButton(
                          onPressed: () {

                          },
                          child: Text('SignIn', style: TextStyle(fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.black87),),
                        ),
                      ),

                    ],
                  ),

                )
            ),



          ],


        ),


        ][currentPageIndex]

    );
  }
}