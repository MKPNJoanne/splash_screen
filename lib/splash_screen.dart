import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Blue square container
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.blue,
              ),
            ),
          ),
       
          // Title (NSBM)
            
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'NSBM',
                  style: TextStyle(
                    fontSize: 35,
                    
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _buildSmallSquare(color: const Color.fromRGBO(141, 197, 65, 1)),
                    _buildSmallSquare(color: const Color.fromRGBO(141, 197, 65, 1)),
                    _buildSmallSquare(color: const Color.fromRGBO(60, 181, 76, 1)),
                    _buildSmallSquare(color: const Color.fromRGBO(60, 181, 76, 1)),
                    _buildSmallSquare(color: const Color.fromRGBO(60, 180, 76, 1)),
                    
                  ],
                ),
              ],
            ),
          ),
        ],
        
      ),
    );
  }

   Widget _buildSmallSquare({required Color color}) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        alignment:Alignment.center,
        width: 30,
        height: 30,
        color: color,
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: SplashScreen(),
  ));
}
