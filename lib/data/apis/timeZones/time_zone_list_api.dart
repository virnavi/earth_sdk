import 'package:common_sdk/common_sdk.dart';
import 'package:earth_sdk/data/models/api/models.dart';
import 'package:injectable/injectable.dart';
import 'package:json_client/json_client.dart';

import '../api_endpoints.dart';
import '../base/base_object_api.dart';


@singleton
class TimeZoneListApi extends BaseJsonObjectApi<EmptyDataModel, TimeZoneListResponse> {
  TimeZoneListApi()
      : super(
          path: ApiEndpoints.timeZoneList,
          method: ApiMethod.get,
          refreshToken: true,
        );

  Future<Either<ApiFailureResponse, TimeZoneListResponse>> call({
    String? correlationId,
  }) async {
    final response = await apiCall(req: EmptyDataModel());
    return response;
  }

  @override
  TimeZoneListResponse convertResponse(Map<String, dynamic> json) =>
      TimeZoneListResponse.fromJson(json);
}
