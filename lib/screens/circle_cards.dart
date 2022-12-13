import 'package:flutter/material.dart';

class CircleCards extends StatelessWidget{
  const CircleCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: const Color(0xFFc0dedd),
                    borderRadius: BorderRadius.circular(100)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.settings),
                    SizedBox(height: 10),
                    Text('230k', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                    SizedBox(height: 5),
                    Text('Sales',
                      style: TextStyle(
                        fontSize: 12,
                      ),),
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: const Color(0xFFe6dff1),
                    borderRadius: BorderRadius.circular(100)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.person),
                    SizedBox(height: 10),
                    Text('8.325k', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                    SizedBox(height: 5),
                    Text('Customers',
                      style: TextStyle(
                        fontSize: 12,
                      ),),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: const Color(0xFFf2eee9),
                    borderRadius: BorderRadius.circular(100)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.production_quantity_limits),
                    SizedBox(height: 10),
                    Text('1.432k', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                    SizedBox(height: 5),
                    Text('Prducts',
                      style: TextStyle(
                        fontSize: 12,
                      ),),
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: const Color(0xFFf1dfde),
                    borderRadius: BorderRadius.circular(100)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.analytics),
                    SizedBox(height: 10),
                    Text('2346k', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                    SizedBox(height: 5),
                    Text('Revenue',
                      style: TextStyle(
                        fontSize: 12,
                      ),),
                  ],
                ),
              ),
            ],
          ),

        ],
      );
  }
}