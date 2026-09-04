abstract class ApiPaths {
  ApiPaths._();

  static const _baseApi = 'https://pokeapi.co/api/v2/';
  static const getAllsample_app = '${_baseApi}sample_app';

  static String getsample_app(String url) => url;
  static String getsample_appType(String url) => url;

  static const _baseProductsApi = 'https://dummyjson.com/';
  static const getProducts = '${_baseProductsApi}products';
  static const addProducts = '${_baseProductsApi}products/add';

  static const headers = {
    'Content-Type': 'application/json',
  };

}