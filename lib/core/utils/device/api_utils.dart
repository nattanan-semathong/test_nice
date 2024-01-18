import '../../../features/news/data/model/base_api_response.dart';

class ApiUtils {
  static const String su001 = 'success';

  static bool isResponseSuccess(
    BaseApiResponse response, {
    List<String>? validStatusCodes,
  }) {
    List<String> successCodes = [
      su001,
    ];
    if (validStatusCodes != null) {
      successCodes.addAll(validStatusCodes);
    }

    return successCodes.contains(response.status);
  }

  static bool isResponseFailedWithData(
    BaseApiResponse response, {
    List<String>? validStatusCodes,
  }) {
    List<String> failedWithDataCodes = ['fail'];
    if (validStatusCodes != null) {
      failedWithDataCodes.addAll(validStatusCodes);
    }

    return failedWithDataCodes.contains(response.status);
  }
}
