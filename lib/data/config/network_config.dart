class NetworkConfig {
  final String baseUrl;
  final bool allowCors;

  NetworkConfig({
    this.baseUrl = 'https://cdn.statically.io/gh/virnavi/open_data/master/',
    this.allowCors = true,
  });
}
