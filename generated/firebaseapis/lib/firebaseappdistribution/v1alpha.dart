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

/// Firebase App Distribution API - v1alpha
///
/// For more information, see
/// <https://firebase.google.com/products/app-distribution>
///
/// Create an instance of [FirebaseAppDistributionApi] to access these
/// resources:
///
/// - [AppsResource]
///   - [AppsReleaseByHashResource]
///   - [AppsReleasesResource]
///     - [AppsReleasesNotesResource]
///   - [AppsTestersResource]
///   - [AppsUploadStatusResource]
library firebaseappdistribution.v1alpha;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

class FirebaseAppDistributionApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  AppsResource get apps => AppsResource(_requester);

  FirebaseAppDistributionApi(http.Client client,
      {core.String rootUrl = 'https://firebaseappdistribution.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AppsResource {
  final commons.ApiRequester _requester;

  AppsReleaseByHashResource get releaseByHash =>
      AppsReleaseByHashResource(_requester);
  AppsReleasesResource get releases => AppsReleasesResource(_requester);
  AppsTestersResource get testers => AppsTestersResource(_requester);
  AppsUploadStatusResource get uploadStatus =>
      AppsUploadStatusResource(_requester);

  AppsResource(commons.ApiRequester client) : _requester = client;

  /// Get the app, if it exists
  ///
  /// Request parameters:
  ///
  /// [mobilesdkAppId] - Unique id for a Firebase app of the format:
  /// {version}:{project_number}:{platform}:{hash(bundle_id)} Example:
  /// 1:581234567376:android:aa0a3c7b135e90289
  ///
  /// [appView] - App view. When unset or set to BASIC, returns an App with
  /// everything set except for aab_state. When set to FULL, returns an App with
  /// aab_state set.
  /// Possible string values are:
  /// - "APP_VIEW_UNSPECIFIED" : The default / unset value. The API will default
  /// to the BASIC view.
  /// - "BASIC" : Include everything except aab_state.
  /// - "FULL" : Include everything.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1alphaApp].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1alphaApp> get(
    core.String mobilesdkAppId, {
    core.String? appView,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (appView != null) 'appView': [appView],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/apps/' + commons.escapeVariable('$mobilesdkAppId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppdistroV1alphaApp.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Get a JWT token
  ///
  /// Request parameters:
  ///
  /// [mobilesdkAppId] - Unique id for a Firebase app of the format:
  /// {version}:{project_number}:{platform}:{hash(bundle_id)} Example:
  /// 1:581234567376:android:aa0a3c7b135e90289
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1alphaJwt].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1alphaJwt> getJwt(
    core.String mobilesdkAppId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1alpha/apps/' + commons.escapeVariable('$mobilesdkAppId') + '/jwt';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppdistroV1alphaJwt.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Provision app distribution for an existing Firebase app, enabling it to
  /// subsequently be used by appdistro.
  ///
  /// Request parameters:
  ///
  /// [mobilesdkAppId] - Unique id for a Firebase app of the format:
  /// {version}:{project_number}:{platform}:{hash(bundle_id)} Example:
  /// 1:581234567376:android:aa0a3c7b135e90289
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1alphaProvisionAppResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1alphaProvisionAppResponse> provisionApp(
    core.String mobilesdkAppId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/apps/' + commons.escapeVariable('$mobilesdkAppId');

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppdistroV1alphaProvisionAppResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AppsReleaseByHashResource {
  final commons.ApiRequester _requester;

  AppsReleaseByHashResource(commons.ApiRequester client) : _requester = client;

  /// GET Release by binary upload hash
  ///
  /// Request parameters:
  ///
  /// [mobilesdkAppId] - Unique id for a Firebase app of the format:
  /// {version}:{project_number}:{platform}:{hash(bundle_id)} Example:
  /// 1:581234567376:android:aa0a3c7b135e90289
  ///
  /// [uploadHash] - The hash for the upload
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse>
      get(
    core.String mobilesdkAppId,
    core.String uploadHash, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/apps/' +
        commons.escapeVariable('$mobilesdkAppId') +
        '/release_by_hash/' +
        commons.escapeVariable('$uploadHash');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class AppsReleasesResource {
  final commons.ApiRequester _requester;

  AppsReleasesNotesResource get notes => AppsReleasesNotesResource(_requester);

  AppsReleasesResource(commons.ApiRequester client) : _requester = client;

  /// Enable access on a release for testers.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [mobilesdkAppId] - Unique id for a Firebase app of the format:
  /// {version}:{project_number}:{platform}:{hash(bundle_id)} Example:
  /// 1:581234567376:android:aa0a3c7b135e90289
  ///
  /// [releaseId] - Release identifier
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse>
      enableAccess(
    GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest request,
    core.String mobilesdkAppId,
    core.String releaseId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/apps/' +
        commons.escapeVariable('$mobilesdkAppId') +
        '/releases/' +
        commons.escapeVariable('$releaseId') +
        '/enable_access';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AppsReleasesNotesResource {
  final commons.ApiRequester _requester;

  AppsReleasesNotesResource(commons.ApiRequester client) : _requester = client;

  /// Create release notes on a release.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [mobilesdkAppId] - Unique id for a Firebase app of the format:
  /// {version}:{project_number}:{platform}:{hash(bundle_id)} Example:
  /// 1:581234567376:android:aa0a3c7b135e90289
  ///
  /// [releaseId] - Release identifier
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse> create(
    GoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest request,
    core.String mobilesdkAppId,
    core.String releaseId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/apps/' +
        commons.escapeVariable('$mobilesdkAppId') +
        '/releases/' +
        commons.escapeVariable('$releaseId') +
        '/notes';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AppsTestersResource {
  final commons.ApiRequester _requester;

  AppsTestersResource(commons.ApiRequester client) : _requester = client;

  /// Get UDIDs of tester iOS devices in a project
  ///
  /// Request parameters:
  ///
  /// [mobilesdkAppId] - Unique id for a Firebase app of the format:
  /// {version}:{project_number}:{platform}:{hash(bundle_id)} Example:
  /// 1:581234567376:android:aa0a3c7b135e90289
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse>
      getTesterUdids(
    core.String mobilesdkAppId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/apps/' +
        commons.escapeVariable('$mobilesdkAppId') +
        '/testers:getTesterUdids';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AppsUploadStatusResource {
  final commons.ApiRequester _requester;

  AppsUploadStatusResource(commons.ApiRequester client) : _requester = client;

  /// GET Binary upload status by token
  ///
  /// Request parameters:
  ///
  /// [mobilesdkAppId] - Unique id for a Firebase app of the format:
  /// {version}:{project_number}:{platform}:{hash(bundle_id)} Example:
  /// 1:581234567376:android:aa0a3c7b135e90289
  ///
  /// [uploadToken] - The token for the upload
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1alphaGetUploadStatusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1alphaGetUploadStatusResponse> get(
    core.String mobilesdkAppId,
    core.String uploadToken, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/apps/' +
        commons.escapeVariable('$mobilesdkAppId') +
        '/upload_status/' +
        commons.escapeVariable('$uploadToken');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppdistroV1alphaGetUploadStatusResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// App bundle test certificate
class GoogleFirebaseAppdistroV1alphaAabCertificate {
  /// MD5 hash of the certificate used to resign the AAB
  core.String? certificateHashMd5;

  /// SHA1 hash of the certificate used to resign the AAB
  core.String? certificateHashSha1;

  /// SHA256 hash of the certificate used to resign the AAB
  core.String? certificateHashSha256;

  GoogleFirebaseAppdistroV1alphaAabCertificate({
    this.certificateHashMd5,
    this.certificateHashSha1,
    this.certificateHashSha256,
  });

  GoogleFirebaseAppdistroV1alphaAabCertificate.fromJson(core.Map _json)
      : this(
          certificateHashMd5: _json.containsKey('certificateHashMd5')
              ? _json['certificateHashMd5'] as core.String
              : null,
          certificateHashSha1: _json.containsKey('certificateHashSha1')
              ? _json['certificateHashSha1'] as core.String
              : null,
          certificateHashSha256: _json.containsKey('certificateHashSha256')
              ? _json['certificateHashSha256'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificateHashMd5 != null)
          'certificateHashMd5': certificateHashMd5!,
        if (certificateHashSha1 != null)
          'certificateHashSha1': certificateHashSha1!,
        if (certificateHashSha256 != null)
          'certificateHashSha256': certificateHashSha256!,
      };
}

class GoogleFirebaseAppdistroV1alphaApp {
  /// App bundle test certificate generated for the app.
  GoogleFirebaseAppdistroV1alphaAabCertificate? aabCertificate;

  /// App bundle state.
  ///
  /// Only valid for android apps. The app_view field in the request must be set
  /// to FULL in order for this to be populated.
  /// Possible string values are:
  /// - "AAB_STATE_UNSPECIFIED" : Aab state unspecified
  /// - "ACTIVE" : App can receive app bundle uploads
  /// - "PLAY_ACCOUNT_NOT_LINKED" : Firebase project is not linked to a Play
  /// developer account
  /// - "NO_APP_WITH_GIVEN_BUNDLE_ID_IN_PLAY_ACCOUNT" : There is no app in
  /// linked Play developer account with the same bundle id
  /// - "APP_NOT_PUBLISHED" : The app in Play developer account is not in a
  /// published state
  /// - "AAB_STATE_UNAVAILABLE" : Play App status is unavailable
  /// - "PLAY_IAS_TERMS_NOT_ACCEPTED" : Play IAS terms not accepted
  core.String? aabState;

  /// Firebase gmp app id
  core.String? appId;

  /// Bundle identifier
  core.String? bundleId;

  /// Developer contact email for testers to reach out to about privacy or
  /// support issues.
  core.String? contactEmail;

  /// iOS or Android
  core.String? platform;

  /// Project number of the Firebase project, for example 300830567303.
  core.String? projectNumber;

  GoogleFirebaseAppdistroV1alphaApp({
    this.aabCertificate,
    this.aabState,
    this.appId,
    this.bundleId,
    this.contactEmail,
    this.platform,
    this.projectNumber,
  });

  GoogleFirebaseAppdistroV1alphaApp.fromJson(core.Map _json)
      : this(
          aabCertificate: _json.containsKey('aabCertificate')
              ? GoogleFirebaseAppdistroV1alphaAabCertificate.fromJson(
                  _json['aabCertificate']
                      as core.Map<core.String, core.dynamic>)
              : null,
          aabState: _json.containsKey('aabState')
              ? _json['aabState'] as core.String
              : null,
          appId:
              _json.containsKey('appId') ? _json['appId'] as core.String : null,
          bundleId: _json.containsKey('bundleId')
              ? _json['bundleId'] as core.String
              : null,
          contactEmail: _json.containsKey('contactEmail')
              ? _json['contactEmail'] as core.String
              : null,
          platform: _json.containsKey('platform')
              ? _json['platform'] as core.String
              : null,
          projectNumber: _json.containsKey('projectNumber')
              ? _json['projectNumber'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aabCertificate != null) 'aabCertificate': aabCertificate!,
        if (aabState != null) 'aabState': aabState!,
        if (appId != null) 'appId': appId!,
        if (bundleId != null) 'bundleId': bundleId!,
        if (contactEmail != null) 'contactEmail': contactEmail!,
        if (platform != null) 'platform': platform!,
        if (projectNumber != null) 'projectNumber': projectNumber!,
      };
}

class GoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest {
  /// The actual release notes body from the user
  GoogleFirebaseAppdistroV1alphaReleaseNotes? releaseNotes;

  GoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest({
    this.releaseNotes,
  });

  GoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest.fromJson(
      core.Map _json)
      : this(
          releaseNotes: _json.containsKey('releaseNotes')
              ? GoogleFirebaseAppdistroV1alphaReleaseNotes.fromJson(
                  _json['releaseNotes'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (releaseNotes != null) 'releaseNotes': releaseNotes!,
      };
}

typedef GoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse = $Empty;

class GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest {
  /// Build version of the app release if an instance identifier is provided for
  /// the release_id
  ///
  /// Optional.
  core.String? buildVersion;

  /// Display version of the app release if an instance identifier is provided
  /// for the release_id
  ///
  /// Optional.
  core.String? displayVersion;

  /// An email address which should get access to this release, for example
  /// rebeccahe@google.com
  core.List<core.String>? emails;

  /// A repeated list of group aliases to enable access to a release for Note:
  /// This field is misnamed, but can't be changed because we need to maintain
  /// compatibility with old build tools
  core.List<core.String>? groupIds;

  GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest({
    this.buildVersion,
    this.displayVersion,
    this.emails,
    this.groupIds,
  });

  GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest.fromJson(
      core.Map _json)
      : this(
          buildVersion: _json.containsKey('buildVersion')
              ? _json['buildVersion'] as core.String
              : null,
          displayVersion: _json.containsKey('displayVersion')
              ? _json['displayVersion'] as core.String
              : null,
          emails: _json.containsKey('emails')
              ? (_json['emails'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          groupIds: _json.containsKey('groupIds')
              ? (_json['groupIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buildVersion != null) 'buildVersion': buildVersion!,
        if (displayVersion != null) 'displayVersion': displayVersion!,
        if (emails != null) 'emails': emails!,
        if (groupIds != null) 'groupIds': groupIds!,
      };
}

typedef GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse = $Empty;

/// Response object to get the release given a upload hash
class GoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse {
  /// Release object
  GoogleFirebaseAppdistroV1alphaRelease? release;

  GoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse({
    this.release,
  });

  GoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse.fromJson(
      core.Map _json)
      : this(
          release: _json.containsKey('release')
              ? GoogleFirebaseAppdistroV1alphaRelease.fromJson(
                  _json['release'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (release != null) 'release': release!,
      };
}

/// Response containing the UDIDs of tester iOS devices in a project
class GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse {
  /// The UDIDs of tester iOS devices in a project
  core.List<GoogleFirebaseAppdistroV1alphaTesterUdid>? testerUdids;

  GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse({
    this.testerUdids,
  });

  GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse.fromJson(core.Map _json)
      : this(
          testerUdids: _json.containsKey('testerUdids')
              ? (_json['testerUdids'] as core.List)
                  .map((value) =>
                      GoogleFirebaseAppdistroV1alphaTesterUdid.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (testerUdids != null) 'testerUdids': testerUdids!,
      };
}

class GoogleFirebaseAppdistroV1alphaGetUploadStatusResponse {
  /// The error code associated with (only set on "FAILURE")
  /// Possible string values are:
  /// - "ERROR_UNSPECIFIED"
  /// - "INVALID_ZIP"
  /// - "MISSING_PLIST"
  /// - "MISSING_PROFILE"
  /// - "VERSION_TOO_LONG"
  /// - "MISSING_UUIDS"
  /// - "MISSING_RESOURCES"
  /// - "MISSING_MANIFEST"
  /// - "IOS_METADATA_ERROR"
  /// - "ANDROID_METADATA_ERROR"
  /// - "UNSUPPORTED_PLATFORM_TYPE"
  /// - "BUNDLE_ID_MISMATCH"
  /// - "APK_NOT_ZIP_ALIGNED"
  /// - "INVALID_CERTIFICATE"
  /// - "APK_TOO_LARGE"
  /// - "AAB_NOT_PUBLISHED"
  /// - "INVALID_PLIST_DEVICE_FAMILIES"
  /// - "AAB_TOS_NOT_ACCEPTED"
  /// - "APP_NAME_TOO_LONG"
  /// - "AAB_DEVELOPER_ACCOUNT_NOT_LINKED"
  /// - "AAB_NO_APP_WITH_GIVEN_PACKAGE_NAME_IN_ACCOUNT"
  /// - "AAB_UPLOAD_ERROR"
  core.String? errorCode;

  /// Any additional context for the given upload status (e.g. error message)
  /// Meant to be displayed to the client
  core.String? message;

  /// The release that was created from the upload (only set on "SUCCESS")
  GoogleFirebaseAppdistroV1alphaRelease? release;

  /// The status of the upload
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED"
  /// - "IN_PROGRESS"
  /// - "ALREADY_UPLOADED"
  /// - "SUCCESS"
  /// - "ERROR"
  core.String? status;

  GoogleFirebaseAppdistroV1alphaGetUploadStatusResponse({
    this.errorCode,
    this.message,
    this.release,
    this.status,
  });

  GoogleFirebaseAppdistroV1alphaGetUploadStatusResponse.fromJson(core.Map _json)
      : this(
          errorCode: _json.containsKey('errorCode')
              ? _json['errorCode'] as core.String
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
          release: _json.containsKey('release')
              ? GoogleFirebaseAppdistroV1alphaRelease.fromJson(
                  _json['release'] as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorCode != null) 'errorCode': errorCode!,
        if (message != null) 'message': message!,
        if (release != null) 'release': release!,
        if (status != null) 'status': status!,
      };
}

class GoogleFirebaseAppdistroV1alphaJwt {
  core.String? token;

  GoogleFirebaseAppdistroV1alphaJwt({
    this.token,
  });

  GoogleFirebaseAppdistroV1alphaJwt.fromJson(core.Map _json)
      : this(
          token:
              _json.containsKey('token') ? _json['token'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (token != null) 'token': token!,
      };
}

typedef GoogleFirebaseAppdistroV1alphaProvisionAppResponse = $Empty;

/// Proto defining a release object
class GoogleFirebaseAppdistroV1alphaRelease {
  /// Release build version
  core.String? buildVersion;

  /// Release version
  core.String? displayVersion;

  /// Timestamp when the release was created
  core.String? distributedAt;

  /// Release Id
  core.String? id;

  /// Instance id of the release
  core.String? instanceId;

  /// Last activity timestamp
  core.String? lastActivityAt;

  /// Number of testers who have open invitations for the release
  core.int? openInvitationCount;

  /// unused
  core.String? receivedAt;

  /// Release notes summary
  core.String? releaseNotesSummary;

  /// Count of testers added to the release
  core.int? testerCount;

  /// Number of testers who have installed the release
  core.int? testerWithInstallCount;

  GoogleFirebaseAppdistroV1alphaRelease({
    this.buildVersion,
    this.displayVersion,
    this.distributedAt,
    this.id,
    this.instanceId,
    this.lastActivityAt,
    this.openInvitationCount,
    this.receivedAt,
    this.releaseNotesSummary,
    this.testerCount,
    this.testerWithInstallCount,
  });

  GoogleFirebaseAppdistroV1alphaRelease.fromJson(core.Map _json)
      : this(
          buildVersion: _json.containsKey('buildVersion')
              ? _json['buildVersion'] as core.String
              : null,
          displayVersion: _json.containsKey('displayVersion')
              ? _json['displayVersion'] as core.String
              : null,
          distributedAt: _json.containsKey('distributedAt')
              ? _json['distributedAt'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          instanceId: _json.containsKey('instanceId')
              ? _json['instanceId'] as core.String
              : null,
          lastActivityAt: _json.containsKey('lastActivityAt')
              ? _json['lastActivityAt'] as core.String
              : null,
          openInvitationCount: _json.containsKey('openInvitationCount')
              ? _json['openInvitationCount'] as core.int
              : null,
          receivedAt: _json.containsKey('receivedAt')
              ? _json['receivedAt'] as core.String
              : null,
          releaseNotesSummary: _json.containsKey('releaseNotesSummary')
              ? _json['releaseNotesSummary'] as core.String
              : null,
          testerCount: _json.containsKey('testerCount')
              ? _json['testerCount'] as core.int
              : null,
          testerWithInstallCount: _json.containsKey('testerWithInstallCount')
              ? _json['testerWithInstallCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buildVersion != null) 'buildVersion': buildVersion!,
        if (displayVersion != null) 'displayVersion': displayVersion!,
        if (distributedAt != null) 'distributedAt': distributedAt!,
        if (id != null) 'id': id!,
        if (instanceId != null) 'instanceId': instanceId!,
        if (lastActivityAt != null) 'lastActivityAt': lastActivityAt!,
        if (openInvitationCount != null)
          'openInvitationCount': openInvitationCount!,
        if (receivedAt != null) 'receivedAt': receivedAt!,
        if (releaseNotesSummary != null)
          'releaseNotesSummary': releaseNotesSummary!,
        if (testerCount != null) 'testerCount': testerCount!,
        if (testerWithInstallCount != null)
          'testerWithInstallCount': testerWithInstallCount!,
      };
}

class GoogleFirebaseAppdistroV1alphaReleaseNotes {
  core.String? releaseNotes;

  GoogleFirebaseAppdistroV1alphaReleaseNotes({
    this.releaseNotes,
  });

  GoogleFirebaseAppdistroV1alphaReleaseNotes.fromJson(core.Map _json)
      : this(
          releaseNotes: _json.containsKey('releaseNotes')
              ? _json['releaseNotes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (releaseNotes != null) 'releaseNotes': releaseNotes!,
      };
}

/// The UDIDs of a tester's iOS device
class GoogleFirebaseAppdistroV1alphaTesterUdid {
  /// The name of the tester's device
  core.String? name;

  /// The platform of the tester's device
  core.String? platform;

  /// The UDID of the tester's device
  core.String? udid;

  GoogleFirebaseAppdistroV1alphaTesterUdid({
    this.name,
    this.platform,
    this.udid,
  });

  GoogleFirebaseAppdistroV1alphaTesterUdid.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          platform: _json.containsKey('platform')
              ? _json['platform'] as core.String
              : null,
          udid: _json.containsKey('udid') ? _json['udid'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (platform != null) 'platform': platform!,
        if (udid != null) 'udid': udid!,
      };
}
