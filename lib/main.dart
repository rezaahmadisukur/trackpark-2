import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/merchant_provider.dart';
import 'screens/merchant_list_screen.dart';

void main() {
  runApp(const TrackParkApp());
}

class TrackParkApp extends StatelessWidget {
  const TrackParkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MerchantProvider(),
      child: MaterialApp(
        title: 'TrackPark',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const MerchantListScreen(),
      ),
    );
  }
}
