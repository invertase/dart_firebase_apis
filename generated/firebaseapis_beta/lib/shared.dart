/// Shared types to minimize the package size. Do not use directly.
@core.Deprecated(
  'Avoid importing this library. '
  'Use the members defined in the target API library instead.',
)
library $shared;

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

import 'dart:core' as core;

/// Used by:
///
/// - firebase:v1beta1 : Empty
/// - firebaseappcheck:v1beta : GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest
/// - firebaseappcheck:v1beta : GoogleProtobufEmpty
/// - firebasedatabase:v1beta : DisableDatabaseInstanceRequest
/// - firebasedatabase:v1beta : ReenableDatabaseInstanceRequest
/// - firebasehosting:v1beta1 : Empty
/// - firebaseml:v1beta2 : Empty
/// - firebasestorage:v1beta : AddFirebaseRequest
/// - firebasestorage:v1beta : Empty
/// - firebasestorage:v1beta : RemoveFirebaseRequest
/// - firestore:v1beta1 : Empty
/// - firestore:v1beta2 : Empty
class $Empty {
  $Empty();

  $Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Used by:
///
/// - firestore:v1beta1 : GoogleFirestoreAdminV1beta1ExportDocumentsRequest
/// - firestore:v1beta2 : GoogleFirestoreAdminV1beta2ExportDocumentsRequest
class $ExportDocumentsRequest {
  /// Which collection ids to export.
  ///
  /// Unspecified means all collections.
  core.List<core.String>? collectionIds;

  /// The output URI.
  ///
  /// Currently only supports Google Cloud Storage URIs of the form:
  /// `gs://BUCKET_NAME[/NAMESPACE_PATH]`, where `BUCKET_NAME` is the name of
  /// the Google Cloud Storage bucket and `NAMESPACE_PATH` is an optional Google
  /// Cloud Storage namespace path. When choosing a name, be sure to consider
  /// Google Cloud Storage naming guidelines:
  /// https://cloud.google.com/storage/docs/naming. If the URI is a bucket
  /// (without a namespace path), a prefix will be generated based on the start
  /// time.
  core.String? outputUriPrefix;

  $ExportDocumentsRequest({
    this.collectionIds,
    this.outputUriPrefix,
  });

  $ExportDocumentsRequest.fromJson(core.Map _json)
      : this(
          collectionIds: _json.containsKey('collectionIds')
              ? (_json['collectionIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          outputUriPrefix: _json.containsKey('outputUriPrefix')
              ? _json['outputUriPrefix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (collectionIds != null) 'collectionIds': collectionIds!,
        if (outputUriPrefix != null) 'outputUriPrefix': outputUriPrefix!,
      };
}

/// Used by:
///
/// - firebase:v1beta1 : Status
/// - firebasehosting:v1beta1 : Status
/// - firebaseml:v1beta2 : Status
/// - firestore:v1beta1 : Status
/// - firestore:v1beta2 : Status
class $Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int? code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String? message;

  $Status({
    this.code,
    this.details,
    this.message,
  });

  $Status.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.int : null,
          details: _json.containsKey('details')
              ? (_json['details'] as core.List)
                  .map((value) => value as core.Map<core.String, core.dynamic>)
                  .toList()
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (details != null) 'details': details!,
        if (message != null) 'message': message!,
      };
}
