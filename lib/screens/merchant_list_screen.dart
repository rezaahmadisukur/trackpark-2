import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/merchant_provider.dart';

class MerchantListScreen extends StatelessWidget {
  const MerchantListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MerchantProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Merchant TrackPark")),
      body: ListView.builder(
        itemCount: provider.merchants.length,
        itemBuilder: (context, index) {
          final merchant = provider.merchants[index];
          return Card(
            margin: const EdgeInsets.all(12),
            child: ListTile(
              title: Text(merchant.name),
              subtitle: Text(
                'Sisa slot: ${merchant.availableSlots} / ${merchant.totalSlots}\nHarga: Rp ${merchant.pricePerHour}/jam',
              ),
              isThreeLine: true,
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            ),
          );
        },
      ),
    );
  }
}
