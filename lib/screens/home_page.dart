import 'package:behance/screens/analytics.dart';
import 'package:behance/screens/circle_cards.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF2a2a2a),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.sort_outlined,
                    color: Colors.white,
                  ),
                  const Spacer(),
                  Container(
                    height: 40,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset('assets/images/profile.jpg')),
                  ),
                ],
              ),
              const SizedBox(height: 80),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Hello David',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),),
                      SizedBox(height: 10),
                      Text('Welcome Back!', style: TextStyle(
                        color: Colors.white,
                      ),),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      )
                    ),
                    child: const Icon(Icons.toggle_off,
                    size: 25,
                    color: Colors.white),
                  ),
                    ]
                  ),

              const SizedBox(height: 30),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF353233),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.search,
                    color: Colors.white,),
                    SizedBox(width: 8),
                    Text('Search',
                    style: TextStyle(
                      color: Colors.white,
                    ),),
                  ],

                ),
              ),
             const SizedBox(height: 51),
             CircleCards(),
              const SizedBox(height: 33),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Analytics()));
                    },
                    child: const Icon(Icons.home,
                    size: 30,
                    color: Colors.white70,),
                  ),
                  const Icon(
                      Icons.folder,
                    size: 30,
                    color: Colors.white70
                  ),
                  const Icon(
                      Icons.add_chart,
                    size: 30,
                    color: Colors.white70
                  ),
                  const Icon(
                      Icons.person,
                    size: 30,
                    color: Colors.white70,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
