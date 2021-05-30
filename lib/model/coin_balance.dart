import 'package:flutter/material.dart';

class CoinBalance {
  String name;
  String ticker;
  String coinAmount;
  String usdValue;
  String usdChange;
  String coinImg;

  CoinBalance({
    @required this.name,
    @required this.ticker,
    @required this.coinAmount,
    @required this.usdValue,
    @required this.usdChange,
    @required this.coinImg,
  });
}

var coinBalanceList = [
  CoinBalance(
    name: 'Bitcoin',
    ticker: 'BTC',
    coinAmount: '0.443',
    usdValue: '\$12,400.00',
    usdChange: '+\$400.00',
    coinImg: 'images/btc.png',
  ),
  CoinBalance(
    name: 'Ethereum',
    ticker: 'ETH',
    coinAmount: '2.0',
    usdValue: '\$5,000.00',
    usdChange: '+\$350.00',
    coinImg: 'images/eth.png',
  ),
  CoinBalance(
    name: 'Solana',
    ticker: 'SOL',
    coinAmount: '31.5',
    usdValue: '\$1,260.00',
    usdChange: '+\$160.00',
    coinImg: 'images/sol.png',
  ),
  CoinBalance(
    name: 'CoinName',
    ticker: 'CN',
    coinAmount: '111',
    usdValue: '\$0.00',
    usdChange: '+\$0.00',
    coinImg: 'images/logo.png',
  ),
  CoinBalance(
    name: 'CoinName',
    ticker: 'CN',
    coinAmount: '111',
    usdValue: '\$0.00',
    usdChange: '+\$0.00',
    coinImg: 'images/logo.png',
  ),
  CoinBalance(
    name: 'CoinName',
    ticker: 'CN',
    coinAmount: '111',
    usdValue: '\$0.00',
    usdChange: '+\$0.00',
    coinImg: 'images/logo.png',
  ),
  CoinBalance(
    name: 'CoinName',
    ticker: 'CN',
    coinAmount: '111',
    usdValue: '\$0.00',
    usdChange: '+\$0.00',
    coinImg: 'images/logo.png',
  ),
  CoinBalance(
    name: 'CoinName',
    ticker: 'CN',
    coinAmount: '111',
    usdValue: '\$0.00',
    usdChange: '+\$0.00',
    coinImg: 'images/logo.png',
  ),
  CoinBalance(
    name: 'CoinName',
    ticker: 'CN',
    coinAmount: '111',
    usdValue: '\$0.00',
    usdChange: '+\$0.00',
    coinImg: 'images/logo.png',
  ),
];
