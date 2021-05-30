import 'package:flutter/material.dart';
import 'package:phantom_wallet_clone/model/coin_balance.dart';

class HomeScreen extends StatelessWidget {
  final String username;

  HomeScreen(this.username);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello, $username'),
        backgroundColor: Color(0xFF292929),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        padding: EdgeInsets.all(20),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '\$18,660.00',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '+\$910.00',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(width: 15),
                  DecoratedBox(
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '+4.99%',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 90,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'Send',
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                SizedBox(
                  width: 90,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'Receive',
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: coinBalanceList.length,
              itemBuilder: (context, index) {
                final CoinBalance coin = coinBalanceList[index];
                return Container(
                    height: 75,
                    child: Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Image.asset(
                                coin.coinImg,
                                height: 50,
                                width: 50,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    coin.name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(coin.coinAmount),
                                      SizedBox(width: 5),
                                      Text(coin.ticker),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    coin.usdValue,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    coin.usdChange,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

// class CoinList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemBuilder: (context, index) {
//         final CoinBalance coin = coinBalanceList[index];
//         return;
//       },
//       itemCount: coinBalanceList.length,
//     );
//   }
// }
