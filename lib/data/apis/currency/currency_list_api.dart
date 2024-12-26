import 'package:common_sdk/common_sdk.dart';
import 'package:earth_sdk/data/models/api/models.dart';
import 'package:injectable/injectable.dart';
import 'package:json_client/json_client.dart';

import '../../models/models.dart';
import '../api_endpoints.dart';
import '../base/base_object_api.dart';


@singleton
class CurrencyListApi extends BaseJsonObjectApi<EmptyDataModel, CurrencyListResponse> {
  CurrencyListApi()
      : super(
          path: ApiEndpoints.currencyList,
          method: ApiMethod.get,
          refreshToken: true,
        );

  Future<Either<ApiFailureResponse, CurrencyListResponse>> call({
    String? correlationId,
  }) async {
    final response = await apiCall(req: EmptyDataModel());
    return response;
  }

  @override
  CurrencyListResponse convertResponse(Map<String, dynamic> json) =>
      CurrencyListResponse.fromJson(json);
}
