class Merchant {
  final String id;
  final String name;
  final int totalSlots;
  int availableSlots;
  final double latitude;
  final double longitude;
  final int pricePerHour;
  final String qrCodeToken;

  Merchant({
    required this.id,
    required this.name,
    required this.totalSlots,
    required this.availableSlots,
    required this.latitude,
    required this.longitude,
    required this.pricePerHour,
    required this.qrCodeToken,
  });
}
