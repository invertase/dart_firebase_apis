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

import 'dart:convert' as convert;
import 'dart:core' as core;

/// Used by:
///
/// - cloudfunctions:v1 : AuditLogConfig
/// - identitytoolkit:v2 : GoogleIamV1AuditLogConfig
class $AuditLogConfig {
  /// Specifies the identities that do not cause logging for this type of
  /// permission.
  ///
  /// Follows the same format of Binding.members.
  core.List<core.String>? exemptedMembers;

  /// The log type that this config enables.
  /// Possible string values are:
  /// - "LOG_TYPE_UNSPECIFIED" : Default case. Should never be this.
  /// - "ADMIN_READ" : Admin reads. Example: CloudIAM getIamPolicy
  /// - "DATA_WRITE" : Data writes. Example: CloudSQL Users create
  /// - "DATA_READ" : Data reads. Example: CloudSQL Users list
  core.String? logType;

  $AuditLogConfig({
    this.exemptedMembers,
    this.logType,
  });

  $AuditLogConfig.fromJson(core.Map _json)
      : this(
          exemptedMembers: _json.containsKey('exemptedMembers')
              ? (_json['exemptedMembers'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          logType: _json.containsKey('logType')
              ? _json['logType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exemptedMembers != null) 'exemptedMembers': exemptedMembers!,
        if (logType != null) 'logType': logType!,
      };
}

/// Used by:
///
/// - identitytoolkit:v1 : GoogleCloudIdentitytoolkitV1AutoRetrievalInfo
/// - identitytoolkit:v2 : GoogleCloudIdentitytoolkitV2AutoRetrievalInfo
class $AutoRetrievalInfo {
  /// The Android app's signature hash for Google Play Service's SMS Retriever
  /// API.
  core.String? appSignatureHash;

  $AutoRetrievalInfo({
    this.appSignatureHash,
  });

  $AutoRetrievalInfo.fromJson(core.Map _json)
      : this(
          appSignatureHash: _json.containsKey('appSignatureHash')
              ? _json['appSignatureHash'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appSignatureHash != null) 'appSignatureHash': appSignatureHash!,
      };
}

/// Used by:
///
/// - firestore:v1 : BeginTransactionResponse
/// - firestore:v1beta1 : BeginTransactionResponse
class $BeginTransactionResponse {
  /// The transaction that was started.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> _bytes) {
    transaction =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  $BeginTransactionResponse({
    this.transaction,
  });

  $BeginTransactionResponse.fromJson(core.Map _json)
      : this(
          transaction: _json.containsKey('transaction')
              ? _json['transaction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (transaction != null) 'transaction': transaction!,
      };
}

/// Used by:
///
/// - firestore:v1 : CollectionSelector
/// - firestore:v1beta1 : CollectionSelector
class $CollectionSelector {
  /// When false, selects only collections that are immediate children of the
  /// `parent` specified in the containing `RunQueryRequest`.
  ///
  /// When true, selects all descendant collections.
  core.bool? allDescendants;

  /// The collection ID.
  ///
  /// When set, selects only collections with this ID.
  core.String? collectionId;

  $CollectionSelector({
    this.allDescendants,
    this.collectionId,
  });

  $CollectionSelector.fromJson(core.Map _json)
      : this(
          allDescendants: _json.containsKey('allDescendants')
              ? _json['allDescendants'] as core.bool
              : null,
          collectionId: _json.containsKey('collectionId')
              ? _json['collectionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allDescendants != null) 'allDescendants': allDescendants!,
        if (collectionId != null) 'collectionId': collectionId!,
      };
}

/// Used by:
///
/// - fcmdata:v1beta1 : GoogleTypeDate
/// - testing:v1 : Date
class $Date {
  /// Day of a month.
  ///
  /// Must be from 1 to 31 and valid for the year and month, or 0 to specify a
  /// year by itself or a year and month where the day isn't significant.
  core.int? day;

  /// Month of a year.
  ///
  /// Must be from 1 to 12, or 0 to specify a year without a month and day.
  core.int? month;

  /// Year of the date.
  ///
  /// Must be from 1 to 9999, or 0 to specify a date without a year.
  core.int? year;

  $Date({
    this.day,
    this.month,
    this.year,
  });

  $Date.fromJson(core.Map _json)
      : this(
          day: _json.containsKey('day') ? _json['day'] as core.int : null,
          month: _json.containsKey('month') ? _json['month'] as core.int : null,
          year: _json.containsKey('year') ? _json['year'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (day != null) 'day': day!,
        if (month != null) 'month': month!,
        if (year != null) 'year': year!,
      };
}

/// Used by:
///
/// - firestore:v1 : DocumentMask
/// - firestore:v1beta1 : DocumentMask
class $DocumentMask {
  /// The list of field paths in the mask.
  ///
  /// See Document.fields for a field path syntax reference.
  core.List<core.String>? fieldPaths;

  $DocumentMask({
    this.fieldPaths,
  });

  $DocumentMask.fromJson(core.Map _json)
      : this(
          fieldPaths: _json.containsKey('fieldPaths')
              ? (_json['fieldPaths'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldPaths != null) 'fieldPaths': fieldPaths!,
      };
}

/// Used by:
///
/// - cloudfunctions:v1 : GenerateUploadUrlRequest
/// - cloudfunctions:v1 : Retry
/// - firebase:v1beta1 : Empty
/// - firebaseappcheck:v1beta : GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest
/// - firebaseappcheck:v1beta : GoogleProtobufEmpty
/// - firebaseappdistribution:v1alpha : GoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse
/// - firebaseappdistribution:v1alpha : GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse
/// - firebaseappdistribution:v1alpha : GoogleFirebaseAppdistroV1alphaProvisionAppResponse
/// - firebasedatabase:v1beta : DisableDatabaseInstanceRequest
/// - firebasedatabase:v1beta : ReenableDatabaseInstanceRequest
/// - firebasehosting:v1 : CancelOperationRequest
/// - firebasehosting:v1 : Empty
/// - firebasehosting:v1beta1 : Empty
/// - firebaseml:v1 : CancelOperationRequest
/// - firebaseml:v1 : Empty
/// - firebaseml:v1beta2 : Empty
/// - firebaserules:v1 : Empty
/// - firebasestorage:v1beta : AddFirebaseRequest
/// - firebasestorage:v1beta : Empty
/// - firebasestorage:v1beta : RemoveFirebaseRequest
/// - firestore:v1 : Empty
/// - firestore:v1 : GoogleLongrunningCancelOperationRequest
/// - firestore:v1beta1 : Empty
/// - firestore:v1beta2 : Empty
/// - identitytoolkit:v2 : GoogleProtobufEmpty
/// - testing:v1 : GoogleAuto
/// - testing:v1 : LauncherActivityIntent
class $Empty {
  $Empty();

  $Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Used by:
///
/// - firestore:v1 : GoogleFirestoreAdminV1ExportDocumentsRequest
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
/// - cloudfunctions:v1 : Expr
/// - identitytoolkit:v2 : GoogleTypeExpr
class $Expr {
  /// Description of the expression.
  ///
  /// This is a longer text which describes the expression, e.g. when hovered
  /// over it in a UI.
  ///
  /// Optional.
  core.String? description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax.
  core.String? expression;

  /// String indicating the location of the expression for error reporting, e.g.
  /// a file name and a position in the file.
  ///
  /// Optional.
  core.String? location;

  /// Title for the expression, i.e. a short string describing its purpose.
  ///
  /// This can be used e.g. in UIs which allow to enter the expression.
  ///
  /// Optional.
  core.String? title;

  $Expr({
    this.description,
    this.expression,
    this.location,
    this.title,
  });

  $Expr.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          expression: _json.containsKey('expression')
              ? _json['expression'] as core.String
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (expression != null) 'expression': expression!,
        if (location != null) 'location': location!,
        if (title != null) 'title': title!,
      };
}

/// Used by:
///
/// - fcm:v1 : AndroidFcmOptions
/// - fcm:v1 : FcmOptions
class $FcmOptions {
  /// Label associated with the message's analytics data.
  core.String? analyticsLabel;

  $FcmOptions({
    this.analyticsLabel,
  });

  $FcmOptions.fromJson(core.Map _json)
      : this(
          analyticsLabel: _json.containsKey('analyticsLabel')
              ? _json['analyticsLabel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analyticsLabel != null) 'analyticsLabel': analyticsLabel!,
      };
}

/// Used by:
///
/// - firestore:v1 : FieldReference
/// - firestore:v1beta1 : FieldReference
class $FieldReference {
  core.String? fieldPath;

  $FieldReference({
    this.fieldPath,
  });

  $FieldReference.fromJson(core.Map _json)
      : this(
          fieldPath: _json.containsKey('fieldPath')
              ? _json['fieldPath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldPath != null) 'fieldPath': fieldPath!,
      };
}

/// Used by:
///
/// - firestore:v1 : LatLng
/// - firestore:v1beta1 : LatLng
class $LatLng {
  /// The latitude in degrees.
  ///
  /// It must be in the range \[-90.0, +90.0\].
  core.double? latitude;

  /// The longitude in degrees.
  ///
  /// It must be in the range \[-180.0, +180.0\].
  core.double? longitude;

  $LatLng({
    this.latitude,
    this.longitude,
  });

  $LatLng.fromJson(core.Map _json)
      : this(
          latitude: _json.containsKey('latitude')
              ? (_json['latitude'] as core.num).toDouble()
              : null,
          longitude: _json.containsKey('longitude')
              ? (_json['longitude'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (latitude != null) 'latitude': latitude!,
        if (longitude != null) 'longitude': longitude!,
      };
}

/// Used by:
///
/// - firestore:v1 : ListCollectionIdsRequest
/// - firestore:v1beta1 : ListCollectionIdsRequest
class $ListCollectionIdsRequest {
  /// The maximum number of results to return.
  core.int? pageSize;

  /// A page token.
  ///
  /// Must be a value from ListCollectionIdsResponse.
  core.String? pageToken;

  $ListCollectionIdsRequest({
    this.pageSize,
    this.pageToken,
  });

  $ListCollectionIdsRequest.fromJson(core.Map _json)
      : this(
          pageSize: _json.containsKey('pageSize')
              ? _json['pageSize'] as core.int
              : null,
          pageToken: _json.containsKey('pageToken')
              ? _json['pageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
      };
}

/// Used by:
///
/// - firestore:v1 : ListCollectionIdsResponse
/// - firestore:v1beta1 : ListCollectionIdsResponse
class $ListCollectionIdsResponse {
  /// The collection ids.
  core.List<core.String>? collectionIds;

  /// A page token that may be used to continue the list.
  core.String? nextPageToken;

  $ListCollectionIdsResponse({
    this.collectionIds,
    this.nextPageToken,
  });

  $ListCollectionIdsResponse.fromJson(core.Map _json)
      : this(
          collectionIds: _json.containsKey('collectionIds')
              ? (_json['collectionIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (collectionIds != null) 'collectionIds': collectionIds!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Used by:
///
/// - cloudfunctions:v1 : Location
/// - firestore:v1 : Location
class $Location {
  /// The friendly name for this location, typically a nearby city name.
  ///
  /// For example, "Tokyo".
  core.String? displayName;

  /// Cross-service attributes for the location.
  ///
  /// For example {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String>? labels;

  /// The canonical id for this location.
  ///
  /// For example: `"us-east1"`.
  core.String? locationId;

  /// Service-specific metadata.
  ///
  /// For example the available capacity at the given location.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// Resource name for the location, which may vary between implementations.
  ///
  /// For example: `"projects/example-project/locations/us-east1"`
  core.String? name;

  $Location({
    this.displayName,
    this.labels,
    this.locationId,
    this.metadata,
    this.name,
  });

  $Location.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (labels != null) 'labels': labels!,
        if (locationId != null) 'locationId': locationId!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - firestore:v1 : Precondition
/// - firestore:v1beta1 : Precondition
class $Precondition {
  /// When set to `true`, the target document must exist.
  ///
  /// When set to `false`, the target document must not exist.
  core.bool? exists;

  /// When set, the target document must exist and have been last updated at
  /// that time.
  ///
  /// Timestamp must be microsecond aligned.
  core.String? updateTime;

  $Precondition({
    this.exists,
    this.updateTime,
  });

  $Precondition.fromJson(core.Map _json)
      : this(
          exists:
              _json.containsKey('exists') ? _json['exists'] as core.bool : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exists != null) 'exists': exists!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Used by:
///
/// - firestore:v1 : ReadOnly
/// - firestore:v1beta1 : ReadOnly
class $ReadOnly {
  /// Reads documents at the given time.
  ///
  /// This may not be older than 60 seconds.
  core.String? readTime;

  $ReadOnly({
    this.readTime,
  });

  $ReadOnly.fromJson(core.Map _json)
      : this(
          readTime: _json.containsKey('readTime')
              ? _json['readTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (readTime != null) 'readTime': readTime!,
      };
}

/// Used by:
///
/// - firestore:v1 : ReadWrite
/// - firestore:v1beta1 : ReadWrite
class $ReadWrite {
  /// An optional transaction to retry.
  core.String? retryTransaction;
  core.List<core.int> get retryTransactionAsBytes =>
      convert.base64.decode(retryTransaction!);

  set retryTransactionAsBytes(core.List<core.int> _bytes) {
    retryTransaction =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  $ReadWrite({
    this.retryTransaction,
  });

  $ReadWrite.fromJson(core.Map _json)
      : this(
          retryTransaction: _json.containsKey('retryTransaction')
              ? _json['retryTransaction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (retryTransaction != null) 'retryTransaction': retryTransaction!,
      };
}

/// Used by:
///
/// - firestore:v1 : RollbackRequest
/// - firestore:v1beta1 : RollbackRequest
class $RollbackRequest {
  /// The transaction to roll back.
  ///
  /// Required.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> _bytes) {
    transaction =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  $RollbackRequest({
    this.transaction,
  });

  $RollbackRequest.fromJson(core.Map _json)
      : this(
          transaction: _json.containsKey('transaction')
              ? _json['transaction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (transaction != null) 'transaction': transaction!,
      };
}

/// Used by:
///
/// - cloudfunctions:v1 : Status
/// - firebase:v1beta1 : Status
/// - firebasehosting:v1 : Status
/// - firebasehosting:v1beta1 : Status
/// - firebaseml:v1 : Status
/// - firebaseml:v1beta2 : Status
/// - firestore:v1 : Status
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

/// Used by:
///
/// - cloudfunctions:v1 : TestIamPermissionsRequest
/// - identitytoolkit:v2 : GoogleIamV1TestIamPermissionsRequest
class $TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`.
  ///
  /// Permissions with wildcards (such as '*' or 'storage.*') are not allowed.
  /// For more information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String>? permissions;

  $TestIamPermissionsRequest({
    this.permissions,
  });

  $TestIamPermissionsRequest.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// Used by:
///
/// - cloudfunctions:v1 : TestIamPermissionsResponse
/// - identitytoolkit:v2 : GoogleIamV1TestIamPermissionsResponse
class $TestIamPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String>? permissions;

  $TestIamPermissionsResponse({
    this.permissions,
  });

  $TestIamPermissionsResponse.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}
