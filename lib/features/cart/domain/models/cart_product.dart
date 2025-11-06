class CartProduct {
  final String productId;
  final String distributorId;
  final String distributorName;
  final String distributorLogo;
  final String name;
  final String imageUrl;
  final String description;
  final double unitPrice;
  final double totalPrice;
  final int quantity;
  final String comment;

  CartProduct({
    required this.productId,
    required this.distributorId,
    required this.distributorName,
    required this.distributorLogo,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.unitPrice,
    required this.totalPrice,
    required this.quantity,
    this.comment = '',
  });
}
