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

/// Firebase Installations API - v1
///
/// For more information, see <https://firebase.google.com>
///
/// Create an instance of [FirebaseinstallationsApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsInstallationsResource]
///     - [ProjectsInstallationsAuthTokensResource]
library firebaseinstallations.v1;

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

class FirebaseinstallationsApi {
  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  FirebaseinstallationsApi(http.Client client,
      {core.String rootUrl = 'https://firebaseinstallations.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsInstallationsResource get installations =>
      ProjectsInstallationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsInstallationsResource {
  final commons.ApiRequester _requester;

  ProjectsInstallationsAuthTokensResource get authTokens =>
      ProjectsInstallationsAuthTokensResource(_requester);

  ProjectsInstallationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates (and registers) a new Firebase Installation, incl.
  ///
  /// its FID and associated keys/tokens for authentication: - For FIS_v1, this
  /// associates the client-side generated Verification Key with the Firebase
  /// Installation. - For FIS_v2, this creates the Refresh Token which is used
  /// to authenticate GenerateAuthToken requests. - This also creates the
  /// initial temporary FIS-Auth-Token. Refer to
  /// https://cloud.google.com/apis/design/standard_methods for method
  /// definition formats.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name. Identifies the Cloud Project owning
  /// this Installation. We accept both projectID and projectNumber.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseInstallationsV1Installation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseInstallationsV1Installation> create(
    GoogleFirebaseInstallationsV1Installation request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/installations';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseInstallationsV1Installation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an Installation
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the installation. It must have the format of
  /// `projects / * /installations / * `.
  /// Value must have pattern `^projects/\[^/\]+/installations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsInstallationsAuthTokensResource {
  final commons.ApiRequester _requester;

  ProjectsInstallationsAuthTokensResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new temporary FIS-Auth-Token (Bearer-Token for Installations).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The Firebase Installation requesting for FIS-Auth-Token.
  /// Value must have pattern `^projects/\[^/\]+/installations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseInstallationsV1AuthTokenInfo].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseInstallationsV1AuthTokenInfo> generate(
    GoogleFirebaseInstallationsV1GenerateAuthTokenRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/authTokens:generate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseInstallationsV1AuthTokenInfo.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class GoogleFirebaseInstallationsV1AuthTokenInfo {
  /// The duration for which this auth_token will be valid.
  ///
  /// In a response's JSON format, the value is encoded as a string with the
  /// suffix "s" (indicating seconds), preceded by the number of seconds.
  /// Example: "604800s"
  core.String? expiresIn;

  /// A new FIS-Auth-Token, created for the Firebase Installation.
  core.String? token;

  GoogleFirebaseInstallationsV1AuthTokenInfo({
    this.expiresIn,
    this.token,
  });

  GoogleFirebaseInstallationsV1AuthTokenInfo.fromJson(core.Map _json)
      : this(
          expiresIn: _json.containsKey('expiresIn')
              ? _json['expiresIn'] as core.String
              : null,
          token:
              _json.containsKey('token') ? _json['token'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expiresIn != null) 'expiresIn': expiresIn!,
        if (token != null) 'token': token!,
      };
}

/// The request to create a new temporary FIS-Auth-Token (which is a
/// Bearer-Token for Installations).
class GoogleFirebaseInstallationsV1GenerateAuthTokenRequest {
  /// Optional field that allows the Firebase Installation to update (some of)
  /// its attributes with FIS the server (ex: sdk_version) when it requests for
  /// a new FIS Auth-Token.
  GoogleFirebaseInstallationsV1Installation? installation;

  GoogleFirebaseInstallationsV1GenerateAuthTokenRequest({
    this.installation,
  });

  GoogleFirebaseInstallationsV1GenerateAuthTokenRequest.fromJson(core.Map _json)
      : this(
          installation: _json.containsKey('installation')
              ? GoogleFirebaseInstallationsV1Installation.fromJson(
                  _json['installation'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (installation != null) 'installation': installation!,
      };
}

/// next_id: 9
class GoogleFirebaseInstallationsV1Installation {
  /// (GMP)-App-ID - Firebase Application identifier, generated by FireData API
  core.String? appId;

  /// The initial FIS Auth-Token, created for the Firebase Installation.
  ///
  /// This field is set only during response.
  GoogleFirebaseInstallationsV1AuthTokenInfo? authToken;

  /// The version of the Firebase Installations Internal Authentication scheme.
  ///
  /// This value is used as Authorization-Type of HTTP-header "Authorization".
  /// Compare: https://developer.mozilla.org/en-US/docs/Web/HTTP/Authentication
  /// The internal client/server authentication of Firebase Installations may
  /// change in the future. Initial version is "FIS_v2". This field is optional.
  /// If not set the default version is assumed (FIS_v2).
  core.String? authVersion;

  /// Globally unique identifier of the Firebase Installation.
  ///
  /// In a CreateInstallationRequest, this should be the FID from the client,
  /// which should be initially randomly generated. In the corresponding
  /// response, this will be a unique FID that the client should then use
  /// thereafter, which will normally be the same as the FID supplied by the
  /// client, but which may be different if the FID supplied by the client is
  /// already in use or is otherwise unacceptable (e.g. invalid format).
  core.String? fid;

  /// URI of the Firebase Installation with the following format:
  /// projects//installations/ Example:
  /// projects/35006771263/installations/eapzYQai_g8flVQyfKoGs7 This field is
  /// set only during response.
  core.String? name;

  /// A refresh token created for / assigned to the Firebase Installation by
  /// FIS.
  ///
  /// The Firebase Installation can use the refresh token to send requests to #
  /// GenerateAuthToken in order to request and generate new FIS Auth-Tokens.
  /// Used for FIS Internal Auth scheme FIS_v2. This field is set only during
  /// response.
  core.String? refreshToken;

  /// The current version of the used FIS client-SDK.
  core.String? sdkVersion;

  /// The verification-key (a.k.a. public-key) is used to authenticate the
  /// digital signatures sent by the Firebase Installation in requests to FIS.
  ///
  /// Used for FIS Internal Auth scheme FIS_v1. The public key is expected to be
  /// in X.509 format ("SubjectPublicKeyInfo"), compare RFC 5280
  /// (https://tools.ietf.org/html/rfc5280#section-4.1).
  core.String? verificationKey;

  GoogleFirebaseInstallationsV1Installation({
    this.appId,
    this.authToken,
    this.authVersion,
    this.fid,
    this.name,
    this.refreshToken,
    this.sdkVersion,
    this.verificationKey,
  });

  GoogleFirebaseInstallationsV1Installation.fromJson(core.Map _json)
      : this(
          appId:
              _json.containsKey('appId') ? _json['appId'] as core.String : null,
          authToken: _json.containsKey('authToken')
              ? GoogleFirebaseInstallationsV1AuthTokenInfo.fromJson(
                  _json['authToken'] as core.Map<core.String, core.dynamic>)
              : null,
          authVersion: _json.containsKey('authVersion')
              ? _json['authVersion'] as core.String
              : null,
          fid: _json.containsKey('fid') ? _json['fid'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          refreshToken: _json.containsKey('refreshToken')
              ? _json['refreshToken'] as core.String
              : null,
          sdkVersion: _json.containsKey('sdkVersion')
              ? _json['sdkVersion'] as core.String
              : null,
          verificationKey: _json.containsKey('verificationKey')
              ? _json['verificationKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appId != null) 'appId': appId!,
        if (authToken != null) 'authToken': authToken!,
        if (authVersion != null) 'authVersion': authVersion!,
        if (fid != null) 'fid': fid!,
        if (name != null) 'name': name!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
        if (sdkVersion != null) 'sdkVersion': sdkVersion!,
        if (verificationKey != null) 'verificationKey': verificationKey!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef GoogleProtobufEmpty = $Empty;
