import 'package:flutter/material.dart';
import 'package:chart_sparkline/chart_sparkline.dart';

class Analytics extends StatelessWidget {
  var data = [0.3, 1.0, 1.5, 2.0, 0.0, 2.0, 0.5, 1.0, -0.5, 1.0, 1.0];

  Analytics({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: const Color(0xFF2a2a2a),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
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
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Text(
                        '\$234.5k',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Global Avg',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        '\$255.892k',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Market Cap',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        '\$998.2k',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Volume',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 100,
              width: 300,
              child: Sparkline(
                data: data,
                lineGradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.blue.shade800, Colors.blue.shade200],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '1D',
                    style: TextStyle(color: Colors.white70),
                  ),
                  Container(
                    height: 30,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Colors.green.shade300,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                      child: Text(
                        '1W',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ),
                  const Text(
                    '1M',
                    style: TextStyle(color: Colors.white70),
                  ),
                  const Text(
                    '3M',
                    style: TextStyle(color: Colors.white70),
                  ),
                  const Text(
                    '6M',
                    style: TextStyle(color: Colors.white70),
                  ),
                  const Text(
                    '9M',
                    style: TextStyle(color: Colors.white70),
                  ),
                  const Text(
                    '1Y',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 390,
              width: 350,
              decoration: BoxDecoration(
                color: const Color(0xFF363636),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Text(
                      'Sales Revenue',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFFc0dedd),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(Icons.settings),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Sales',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),),
                          SizedBox(height: 3),
                          Text('Since Last week',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),)
                        ],
                      ),
                      const SizedBox(width: 100),
                      const Text('333k',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFFe6dff1),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(Icons.person),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Customers',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),),
                          SizedBox(height: 3),
                          Text('Since Last week',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),)
                        ],
                      ),
                      const SizedBox(width: 83),
                      const Text('2,432k',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFFf2eee9),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(Icons.production_quantity_limits),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Products',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),),
                          SizedBox(height: 3),
                          Text('Since Last week',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),)
                        ],
                      ),
                      const SizedBox(width: 83),
                      const Text('6,364k',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFFf1dfde),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(Icons.analytics),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Revenue',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),),
                          SizedBox(height: 3),
                          Text('Since Last week',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),)
                        ],
                      ),
                      const SizedBox(width: 83),
                      const Text('\$9933',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
