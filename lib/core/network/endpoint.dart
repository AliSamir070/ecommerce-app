class Endpoint{
  static const String signUpEndpoint = "/api/v1/auth/signup";
  static const String signInEndpoint = "/api/v1/auth/signin";
  static const String categoriesEndpoint = "/api/v1/categories";
  static const String productsEndpoint = "/api/v1/products";
  static const String brandsEndpoint = "/api/v1/brands";
  static const String wishlistEndpoint = "/api/v1/wishlist";
  static const String cartEndpoint = "/api/v1/cart";
  static String subCategoriesEndPoint(String id) =>
      "/api/v1/categories/$id/subcategories";
}