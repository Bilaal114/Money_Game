import 'package:flutter/material.dart';

double earnings = 0;

class Earning extends StatefulWidget {
  const Earning({super.key});

  @override
  State<Earning> createState() => _EarningState();
}

class _EarningState extends State<Earning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: const BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                )),
            child: Stack(
              children: [
                Container(
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(top: 50, left: 50),
                    width: 320,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey[850],
                    ),
                    child: const Image(
                      image: AssetImage(
                        "Assets/MasterCard.png",
                      ),
                      fit: BoxFit.fitWidth,
                      width: 290,
                      height: 90,
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 150, left: 80),
                  child: Text(
                    "\$ ${earnings.toString()}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(top: 225, left: 50),
                    width: 320,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.orangeAccent,
                    ),
                    child: earnings < 100
                        ? const Text(
                            "\$0.50  per Click",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                        : earnings < 1000
                            ? const Text(
                                '\$1.00  per Click',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )
                            : earnings < 5000
                                ? const Text(
                                    '\$5.00  per Click',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  )
                                : earnings < 5000
                                    ? const Text(
                                        '\$5.00  per Click',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      )
                                    : const Text(
                                        "\$100.00  per Click",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      )),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                if (earnings < 100) {
                  earnings = earnings + 0.5;
                } else if (earnings < 1000) {
                  earnings = earnings + 1;
                } else if (earnings < 5000) {
                  earnings = earnings + 5;
                } else if (earnings < 10000) {
                  earnings = earnings + 10;
                } else {
                  earnings = earnings + 100;
                }
              });
            },
            child: Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              width: double.infinity,
              height: 200,
              child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.ads_click,
                      size: 50,
                    ),
                    Text(
                      "Click this Area",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
