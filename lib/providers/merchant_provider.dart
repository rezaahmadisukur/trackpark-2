import 'package:flutter/material.dart';
import '../models/merchant.dart';
import '../services/merchant_service.dart';

class MerchantProvider extends ChangeNotifier {
  final MerchantService _service = MerchantService();
  List<Merchant> merchants = [];

  MerchantProvider() {
    merchants = _service.getMerchants();
  }

  void decrementSlot(String merchantId) {
    final index = merchants.indexWhere((m) => m.id == merchantId);

    if (index >= 0 && merchants[index].availableSlots > 0) {
      merchants[index].availableSlots--;
      notifyListeners();
    }
  }
}
