class ProductDistributor {
  final String distributorId;
  final String distributorName;
  final String logoUrl;
  final double priceWithVat;
  final double priceWithoutVat;
  final bool isReturnable;
  final bool isExchangeable;
  final bool isActive;
  final DateTime nearestDeliveryDate;

  ProductDistributor({
    required this.distributorId,
    required this.distributorName,
    required this.logoUrl,
    required this.priceWithVat,
    required this.priceWithoutVat,
    required this.isReturnable,
    required this.isExchangeable,
    required this.isActive,
    required this.nearestDeliveryDate,
  });
}
