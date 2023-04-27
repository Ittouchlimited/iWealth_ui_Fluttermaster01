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


import 'package:flutter/material.dart';
import 'package:coinspace/models/stock.dart';
import 'package:coinspace/services/webservice.dart';

class StockListViewModel extends ChangeNotifier {

  List<StockViewModel> stocks = <StockViewModel>[];
  List<StockViewModel> allStocks = <StockViewModel>[];

  Future<void> fetchStocks() async {
    final result = await Webservice().getStocks();
    stocks = result.map((stock) => StockViewModel(stock: stock)).toList();
    allStocks = stocks;
    notifyListeners();
  }

  void search(String searchTerm) {

    if(searchTerm.isEmpty) {
      stocks = allStocks;
    } else {
      stocks = allStocks.where((stock) => stock.symbol.startsWith(searchTerm)).toList();
    }
    notifyListeners();
  }

}

class StockViewModel {
  final Stock stock;

  StockViewModel({required this.stock});

  String get symbol {
    return stock.symbol.toUpperCase();
  }

  String get company {
    return stock.company;
  }

  double get price {
    return stock.price;
  }

  String get change {
    return stock.change;
  }
}