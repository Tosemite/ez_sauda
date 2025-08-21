sealed class ProductEvent {
  const ProductEvent();
}

class ProductDistributorsFetched extends ProductEvent {
  const ProductDistributorsFetched();
}

class ProductReviewsFetched extends ProductEvent {
  const ProductReviewsFetched();
}

class ProductSimilarProductsFetched extends ProductEvent {
  const ProductSimilarProductsFetched();
}