import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:common_sdk/common_sdk.dart';
import 'package:earth_sdk/earth_sdk_get_it.dart';
import 'package:json_client/json_client.dart';
import 'package:flutter/foundation.dart';

import '../../config/network_config.dart';
import '../../models/models.dart';

abstract class BaseJsonObjectApi<Req extends BaseJson, Res> {
  final String path;
  final ApiMethod method;
  final bool refreshToken;
  final bool sendToken;

  BaseHttpJsonObjectClient? _client;

  BaseHttpJsonObjectClient get client {
    _client ??= BaseHttpJsonObjectClient(
      baseUrl: networkConfig.baseUrl,
      options: BaseHttpJsonObjectClientOptions(),
      onTransformRawData: onTransformRawData,
    );

    return _client!;
  }


  NetworkConfig get networkConfig => EarthSdkGetIt.shared.get();

  Future<Map<String, String?>> get defaultHeaders async {
    final headers = {
      'cache-control': 'no-cache',
      'Content-Type': 'application/json',
    };
    if (kIsWeb) {
      if (networkConfig.allowCors) {
        final uri = Uri.parse(networkConfig.baseUrl);
        final base = "${uri.scheme}://${uri.host}:${uri.port}";
        headers.addAll({
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Methods": "GET,PUT,PATCH,POST,DELETE",
          "Access-Control-Allow-Headers":
              "Origin, X-Requested-With, Content-Type, Accept",
        });
      }
      headers.addAll({"platform": "Web"});
    } else {
      if (Platform.isAndroid) {
        headers.addAll({"platform": "Android"});
      } else if (Platform.isIOS) {
        headers.addAll({"platform": "IOS"});
      } else if (Platform.isMacOS) {
        headers.addAll({"platform": "MacOS"});
      } else if (Platform.isWindows) {
        headers.addAll({"platform": "Windows"});
      } else {
        headers.addAll({"platform": "Unknown"});
      }
    }

    return headers;
  }

  BaseJsonObjectApi({
    required this.path,
    required this.method,
    required this.refreshToken,
    this.sendToken = true,
  });

  Future<Either<ApiFailureResponse, Res>> apiCall({
    Map<String, String?>? headers,
    Map<String, dynamic>? pathParams,
    required Req req,
    bool stopRefreshToken = false,
    String? correlationId,
  }) async {
    var newPath = path;
    for (final key in pathParams?.keys.toList() ?? []) {
      newPath = newPath.replaceAll('{$key}', pathParams?[key] ?? '');
    }
    final newHeaders = <String, String?>{};
    newHeaders.addAll(await defaultHeaders ?? {});
    newHeaders.addAll(headers ?? {});

    final result = await client.call<Req, Res, ApiFailureResponse>(
      path: newPath,
      method: method,
      pathParams: pathParams,
      req: req,
      headers: newHeaders,
      convertSuccess: convertResponse,
      convertError: _convertErrorResponse,
    );
    if (result.isSuccess) {
      return Right(result.response as Res);
    } else if (result.isError) {
      if (result.code == 401) {
        if (refreshToken && stopRefreshToken == false) {
          final flag = await _refreshToken();
          if (flag) {
            return await apiCall(
              headers: headers,
              pathParams: pathParams,
              req: req,
              stopRefreshToken: true,
            );
          }
        }
      }

      return Left(result.errorResponse!);
    }
    return Left(_convertFromException(result.exception));
  }

  Future<bool> _refreshToken() async {
    return false;
  }

  Res convertResponse(Map<String, dynamic> json);

  ApiFailureResponse _convertErrorResponse(dynamic data) {
    return ApiFailureResponse.fromJson(data);
  }

  ApiFailureResponse _convertFromException(Exception? data) {
    return ApiFailureResponse.fromException(data!);
  }

  Map<String, dynamic> onTransformRawData(String? jsonString) {
    return json.decode(jsonString ?? '{}');
  }
}
