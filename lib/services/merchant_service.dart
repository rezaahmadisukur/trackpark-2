import '../models/merchant.dart';

class MerchantService {
  List<Merchant> getMerchants() {
    return [
      Merchant(
        id: 'm1',
        name: 'Kopi Kenangan - Teuku Umar',
        totalSlots: 15,
        availableSlots: 5,
        latitude: -8.6870,
        longitude: 115.2188,
        pricePerHour: 3000,
        qrCodeToken: 'TK001',
      ),
      Merchant(
        id: 'm2',
        name: 'McD Jalan Sudirman',
        totalSlots: 20,
        availableSlots: 8,
        latitude: -8.6685,
        longitude: 115.2179,
        pricePerHour: 4000,
        qrCodeToken: 'MD002',
      ),
    ];
  }
}
