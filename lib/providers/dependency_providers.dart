import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/api/dio_config.dart';
import 'package:project_management_web_and_mobile/api/rest_client.dart';

final restClientProvider = Provider<RestClient>((ref) {
  return RestClient(ref.watch(dioInstanceProvider));
});
