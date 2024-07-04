import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toonflix/button.dart';
import 'package:toonflix/currencyCard.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: const Color(0xFF181818),
              elevation: 0,
            ),
            backgroundColor: const Color(0xFF181818),
            body: const SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(
                    //   height:80,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Hey, Selena",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Opacity(
                              opacity: 0.8,
                              child: Text(
                                "Welcome back",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Text(
                      'Total Balance',
                      style: TextStyle(fontSize: 22, color: Colors.white70),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '\$5 194 482',
                      style: TextStyle(
                          fontSize: 48,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Button(
                          text: "Transfer",
                          bgColor: Color(0xFFF1B33B),
                          textColor: Colors.black,
                        ),
                        Button(
                          text: "Request",
                          bgColor: Color(0xFF1F2123),
                          textColor: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 210,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Wallet",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CurrencyCard(
                      order: 1,
                      name: 'Euro',
                      code: 'EUR',
                      amount: '6 428',
                      icon: Icons.euro_rounded,
                      isInverted: false,
                    ),
                    CurrencyCard(
                      name: 'Bitcoin',
                      code: 'BTC',
                      amount: '55 622',
                      icon: Icons.currency_bitcoin_rounded,
                      isInverted: true,
                      order: 2,
                    ),
                    CurrencyCard(
                      name: 'Dollar',
                      code: 'USD',
                      amount: '8 22',
                      icon: Icons.monetization_on_rounded,
                      isInverted: false,
                      order: 3,
                    ),
                  ],
                ),
              ),
            )));
  }
}
