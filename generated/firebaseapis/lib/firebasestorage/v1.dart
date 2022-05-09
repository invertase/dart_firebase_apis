// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Cloud Storage for Firebase API - v1
///
/// The Cloud Storage for Firebase API enables programmatic management of Cloud
/// Storage buckets for use in Firebase projects
///
/// For more information, see <https://firebase.google.com/docs/storage>
library firebasestorage.v1;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Cloud Storage for Firebase API enables programmatic management of Cloud
/// Storage buckets for use in Firebase projects
class FirebasestorageApi {
  final commons.ApiRequester _requester;

  FirebasestorageApi(http.Client client,
      {core.String rootUrl = 'https://firebasestorage.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}
