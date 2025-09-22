class Product {
  final String id;
  final String name;
  final List<String> imageUrls;
  final double unitPrice;
  final int packageVolume;
  final String unitOfMeasurement;
  final String ingredients;
  final String description;
  final String barcode;


  const Product({
    required this.id,
    required this.name,
    required this.imageUrls,
    required this.unitPrice,
    required this.packageVolume,
    required this.unitOfMeasurement,
    required this.ingredients,
    required this.description,
    required this.barcode,
  });
}
