// ignore_for_file: deprecated_member_use

import 'package:coinspace/config/images.dart';
import 'package:coinspace/config/textstyle.dart';
import 'package:coinspace/controller/home_controller.dart';
import 'package:coinspace/view/market/buy_bottomsheet.dart';
import 'package:coinspace/view/market/share_sheet.dart';
import 'package:coinspace/view/market/transaction_view.dart';
import 'package:coinspace/widget/back_icon.dart';
import 'package:coinspace/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
//import 'package:coinspace/models/stock.dart';
import 'package:http/http.dart' as http;


class Stock {
  final String symbol;
  final String company;
  final double price;
  final String change;

  Stock({required this.symbol, required this.company, required this.price, required this.change});

  // Stock({this.symbol, this.company, this.price, this.change});

  factory Stock.fromJson(Map<String, dynamic> json) {
    return Stock(
        company: json["description"], change: json["change"], symbol: json["symbol"], price: json["price"].toDouble());
  }

}