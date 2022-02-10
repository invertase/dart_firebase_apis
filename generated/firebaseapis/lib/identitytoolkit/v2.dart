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

/// Identity Toolkit API - v2
///
/// The Google Identity Toolkit API lets you use open standards to verify a
/// user's identity.
///
/// For more information, see <https://firebase.google.com/docs/auth/>
///
/// Create an instance of [IdentityToolkitApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsMfaEnrollmentResource]
///   - [AccountsMfaSignInResource]
/// - [DefaultSupportedIdpsResource]
/// - [ProjectsResource]
///   - [ProjectsDefaultSupportedIdpConfigsResource]
///   - [ProjectsInboundSamlConfigsResource]
///   - [ProjectsOauthIdpConfigsResource]
///   - [ProjectsTenantsResource]
///     - [ProjectsTenantsDefaultSupportedIdpConfigsResource]
///     - [ProjectsTenantsInboundSamlConfigsResource]
///     - [ProjectsTenantsOauthIdpConfigsResource]
library identitytoolkit.v2;

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

/// The Google Identity Toolkit API lets you use open standards to verify a
/// user's identity.
class IdentityToolkitApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View and administer all your Firebase data and settings
  static const firebaseScope = 'https://www.googleapis.com/auth/firebase';

  final commons.ApiRequester _requester;

  AccountsResource get accounts => AccountsResource(_requester);
  DefaultSupportedIdpsResource get defaultSupportedIdps =>
      DefaultSupportedIdpsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  IdentityToolkitApi(http.Client client,
      {core.String rootUrl = 'https://identitytoolkit.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AccountsResource {
  final commons.ApiRequester _requester;

  AccountsMfaEnrollmentResource get mfaEnrollment =>
      AccountsMfaEnrollmentResource(_requester);
  AccountsMfaSignInResource get mfaSignIn =>
      AccountsMfaSignInResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;
}

class AccountsMfaEnrollmentResource {
  final commons.ApiRequester _requester;

  AccountsMfaEnrollmentResource(commons.ApiRequester client)
      : _requester = client;

  /// Finishes enrolling a second factor for the user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse>
      finalize(
    GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v2/accounts/mfaEnrollment:finalize';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Step one of the MFA enrollment process.
  ///
  /// In SMS case, this sends an SMS verification code to the user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse> start(
    GoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v2/accounts/mfaEnrollment:start';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Revokes one second factor from the enrolled second factors for an account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV2WithdrawMfaResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV2WithdrawMfaResponse> withdraw(
    GoogleCloudIdentitytoolkitV2WithdrawMfaRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v2/accounts/mfaEnrollment:withdraw';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV2WithdrawMfaResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsMfaSignInResource {
  final commons.ApiRequester _requester;

  AccountsMfaSignInResource(commons.ApiRequester client) : _requester = client;

  /// Verifies the MFA challenge and performs sign-in
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse> finalize(
    GoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v2/accounts/mfaSignIn:finalize';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sends the MFA challenge
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV2StartMfaSignInResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV2StartMfaSignInResponse> start(
    GoogleCloudIdentitytoolkitV2StartMfaSignInRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v2/accounts/mfaSignIn:start';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV2StartMfaSignInResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class DefaultSupportedIdpsResource {
  final commons.ApiRequester _requester;

  DefaultSupportedIdpsResource(commons.ApiRequester client)
      : _requester = client;

  /// List all default supported Idps.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
      GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v2/defaultSupportedIdps';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsDefaultSupportedIdpConfigsResource get defaultSupportedIdpConfigs =>
      ProjectsDefaultSupportedIdpConfigsResource(_requester);
  ProjectsInboundSamlConfigsResource get inboundSamlConfigs =>
      ProjectsInboundSamlConfigsResource(_requester);
  ProjectsOauthIdpConfigsResource get oauthIdpConfigs =>
      ProjectsOauthIdpConfigsResource(_requester);
  ProjectsTenantsResource get tenants => ProjectsTenantsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieve an Identity Toolkit project configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config, for example:
  /// "projects/my-awesome-project/config"
  /// Value must have pattern `^projects/\[^/\]+/config$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2Config].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2Config> getConfig(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2Config.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update an Identity Toolkit project configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The name of the Config resource. Example:
  /// "projects/my-awesome-project/config"
  /// Value must have pattern `^projects/\[^/\]+/config$`.
  ///
  /// [updateMask] - The update mask applies to the resource. Fields set in the
  /// config but not included in this update mask will be ignored. For the
  /// `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2Config].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2Config> updateConfig(
    GoogleCloudIdentitytoolkitAdminV2Config request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2Config.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDefaultSupportedIdpConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsDefaultSupportedIdpConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a default supported Idp configuration for an Identity Toolkit
  /// project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name where the config to be created, for
  /// example: "projects/my-awesome-project"
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [idpId] - The id of the Idp to create a config for. Call
  /// ListDefaultSupportedIdps for list of all default supported Idps.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig>
      create(
    GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig request,
    core.String parent, {
    core.String? idpId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (idpId != null) 'idpId': [idpId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/defaultSupportedIdpConfigs';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete a default supported Idp configuration for an Identity Toolkit
  /// project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config, for example:
  /// "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  /// Value must have pattern
  /// `^projects/\[^/\]+/defaultSupportedIdpConfigs/\[^/\]+$`.
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

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a default supported Idp configuration for an Identity Toolkit
  /// project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config, for example:
  /// "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  /// Value must have pattern
  /// `^projects/\[^/\]+/defaultSupportedIdpConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List all default supported Idp configurations for an Identity Toolkit
  /// project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name, for example,
  /// "projects/my-awesome-project".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse>
      list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/defaultSupportedIdpConfigs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Update a default supported Idp configuration for an Identity Toolkit
  /// project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the DefaultSupportedIdpConfig resource, for example:
  /// "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  /// Value must have pattern
  /// `^projects/\[^/\]+/defaultSupportedIdpConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. For the
  /// `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig>
      patch(
    GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsInboundSamlConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsInboundSamlConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create an inbound SAML configuration for an Identity Toolkit project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name where the config to be created, for
  /// example: "projects/my-awesome-project"
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [inboundSamlConfigId] - The id to use for this config.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig> create(
    GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig request,
    core.String parent, {
    core.String? inboundSamlConfigId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (inboundSamlConfigId != null)
        'inboundSamlConfigId': [inboundSamlConfigId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/inboundSamlConfigs';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete an inbound SAML configuration for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config to be deleted, for example:
  /// 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'.
  /// Value must have pattern `^projects/\[^/\]+/inboundSamlConfigs/\[^/\]+$`.
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

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve an inbound SAML configuration for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config, for example:
  /// 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'.
  /// Value must have pattern `^projects/\[^/\]+/inboundSamlConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List all inbound SAML configurations for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name, for example,
  /// "projects/my-awesome-project".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse>
      list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/inboundSamlConfigs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Update an inbound SAML configuration for an Identity Toolkit project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the InboundSamlConfig resource, for example:
  /// 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'. Ignored
  /// during create requests.
  /// Value must have pattern `^projects/\[^/\]+/inboundSamlConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. Empty update mask
  /// will result in updating nothing. For the `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig> patch(
    GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsOauthIdpConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsOauthIdpConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create an Oidc Idp configuration for an Identity Toolkit project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name where the config to be created, for
  /// example: "projects/my-awesome-project"
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [oauthIdpConfigId] - The id to use for this config.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig> create(
    GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig request,
    core.String parent, {
    core.String? oauthIdpConfigId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (oauthIdpConfigId != null) 'oauthIdpConfigId': [oauthIdpConfigId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/oauthIdpConfigs';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete an Oidc Idp configuration for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config to be deleted, for example:
  /// 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'.
  /// Value must have pattern `^projects/\[^/\]+/oauthIdpConfigs/\[^/\]+$`.
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

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve an Oidc Idp configuration for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config, for example:
  /// 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'.
  /// Value must have pattern `^projects/\[^/\]+/oauthIdpConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List all Oidc Idp configurations for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name, for example,
  /// "projects/my-awesome-project".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse>
      list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/oauthIdpConfigs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Update an Oidc Idp configuration for an Identity Toolkit project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the OAuthIdpConfig resource, for example:
  /// 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'. Ignored
  /// during create requests.
  /// Value must have pattern `^projects/\[^/\]+/oauthIdpConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. Empty update mask
  /// will result in updating nothing. For the `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig> patch(
    GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTenantsResource {
  final commons.ApiRequester _requester;

  ProjectsTenantsDefaultSupportedIdpConfigsResource
      get defaultSupportedIdpConfigs =>
          ProjectsTenantsDefaultSupportedIdpConfigsResource(_requester);
  ProjectsTenantsInboundSamlConfigsResource get inboundSamlConfigs =>
      ProjectsTenantsInboundSamlConfigsResource(_requester);
  ProjectsTenantsOauthIdpConfigsResource get oauthIdpConfigs =>
      ProjectsTenantsOauthIdpConfigsResource(_requester);

  ProjectsTenantsResource(commons.ApiRequester client) : _requester = client;

  /// Create a tenant.
  ///
  /// Requires write permission on the Agent project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name where the tenant will be created. For
  /// example, "projects/project1".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2Tenant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2Tenant> create(
    GoogleCloudIdentitytoolkitAdminV2Tenant request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/tenants';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2Tenant.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete a tenant.
  ///
  /// Requires write permission on the Agent project.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the tenant to delete.
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
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

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Get a tenant.
  ///
  /// Requires read permission on the Tenant resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the tenant to retrieve.
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2Tenant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2Tenant> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2Tenant.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// An error is returned if the resource does not exist. An empty policy is
  /// returned if the resource exists but does not have a policy set on it.
  /// Caller must have the right Google IAM permission on the resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
    GoogleIamV1GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleIamV1Policy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List tenants under the given agent project.
  ///
  /// Requires read permission on the Agent project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name to list tenants for.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of results to return, capped at 1000. If
  /// not specified, the default value is 20.
  ///
  /// [pageToken] - The pagination token from the response of a previous
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/tenants';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update a tenant.
  ///
  /// Requires write permission on the Tenant resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of a tenant. For example:
  /// "projects/{project-id}/tenants/{tenant-id}"
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [updateMask] - If provided, only update fields set in the update mask.
  /// Otherwise, all settable fields will be updated. For the `FieldMask`
  /// definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2Tenant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2Tenant> patch(
    GoogleCloudIdentitytoolkitAdminV2Tenant request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2Tenant.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy for a resource.
  ///
  /// If the policy exists, it is replaced. Caller must have the right Google
  /// IAM permission on the resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleIamV1Policy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the caller's permissions on a resource.
  ///
  /// An error is returned if the resource does not exist. A caller is not
  /// required to have Google IAM permission to make this request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1TestIamPermissionsResponse> testIamPermissions(
    GoogleIamV1TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTenantsDefaultSupportedIdpConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsTenantsDefaultSupportedIdpConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a default supported Idp configuration for an Identity Toolkit
  /// project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name where the config to be created, for
  /// example: "projects/my-awesome-project"
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [idpId] - The id of the Idp to create a config for. Call
  /// ListDefaultSupportedIdps for list of all default supported Idps.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig>
      create(
    GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig request,
    core.String parent, {
    core.String? idpId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (idpId != null) 'idpId': [idpId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/defaultSupportedIdpConfigs';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete a default supported Idp configuration for an Identity Toolkit
  /// project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config, for example:
  /// "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/defaultSupportedIdpConfigs/\[^/\]+$`.
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

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a default supported Idp configuration for an Identity Toolkit
  /// project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config, for example:
  /// "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/defaultSupportedIdpConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List all default supported Idp configurations for an Identity Toolkit
  /// project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name, for example,
  /// "projects/my-awesome-project".
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse>
      list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/defaultSupportedIdpConfigs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Update a default supported Idp configuration for an Identity Toolkit
  /// project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the DefaultSupportedIdpConfig resource, for example:
  /// "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/defaultSupportedIdpConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. For the
  /// `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig>
      patch(
    GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTenantsInboundSamlConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsTenantsInboundSamlConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create an inbound SAML configuration for an Identity Toolkit project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name where the config to be created, for
  /// example: "projects/my-awesome-project"
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [inboundSamlConfigId] - The id to use for this config.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig> create(
    GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig request,
    core.String parent, {
    core.String? inboundSamlConfigId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (inboundSamlConfigId != null)
        'inboundSamlConfigId': [inboundSamlConfigId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/inboundSamlConfigs';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete an inbound SAML configuration for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config to be deleted, for example:
  /// 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/inboundSamlConfigs/\[^/\]+$`.
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

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve an inbound SAML configuration for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config, for example:
  /// 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/inboundSamlConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List all inbound SAML configurations for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name, for example,
  /// "projects/my-awesome-project".
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse>
      list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/inboundSamlConfigs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Update an inbound SAML configuration for an Identity Toolkit project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the InboundSamlConfig resource, for example:
  /// 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'. Ignored
  /// during create requests.
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/inboundSamlConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. Empty update mask
  /// will result in updating nothing. For the `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig> patch(
    GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTenantsOauthIdpConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsTenantsOauthIdpConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create an Oidc Idp configuration for an Identity Toolkit project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name where the config to be created, for
  /// example: "projects/my-awesome-project"
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [oauthIdpConfigId] - The id to use for this config.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig> create(
    GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig request,
    core.String parent, {
    core.String? oauthIdpConfigId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (oauthIdpConfigId != null) 'oauthIdpConfigId': [oauthIdpConfigId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/oauthIdpConfigs';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete an Oidc Idp configuration for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config to be deleted, for example:
  /// 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/oauthIdpConfigs/\[^/\]+$`.
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

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve an Oidc Idp configuration for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config, for example:
  /// 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/oauthIdpConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List all Oidc Idp configurations for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name, for example,
  /// "projects/my-awesome-project".
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse>
      list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/oauthIdpConfigs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Update an Oidc Idp configuration for an Identity Toolkit project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the OAuthIdpConfig resource, for example:
  /// 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'. Ignored
  /// during create requests.
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/oauthIdpConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. Empty update mask
  /// will result in updating nothing. For the `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig> patch(
    GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Configuration options related to authenticating an anonymous user.
class GoogleCloudIdentitytoolkitAdminV2Anonymous {
  /// Whether anonymous user auth is enabled for the project or not.
  core.bool? enabled;

  GoogleCloudIdentitytoolkitAdminV2Anonymous({
    this.enabled,
  });

  GoogleCloudIdentitytoolkitAdminV2Anonymous.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// Additional config for SignInWithApple.
class GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig {
  /// A list of Bundle ID's usable by this project
  core.List<core.String>? bundleIds;
  GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig? codeFlowConfig;

  GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig({
    this.bundleIds,
    this.codeFlowConfig,
  });

  GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig.fromJson(core.Map _json)
      : this(
          bundleIds: _json.containsKey('bundleIds')
              ? (_json['bundleIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          codeFlowConfig: _json.containsKey('codeFlowConfig')
              ? GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig.fromJson(
                  _json['codeFlowConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bundleIds != null) 'bundleIds': bundleIds!,
        if (codeFlowConfig != null) 'codeFlowConfig': codeFlowConfig!,
      };
}

/// Configuration related to Blocking Functions.
class GoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig {
  /// The user credentials to include in the JWT payload that is sent to the
  /// registered Blocking Functions.
  GoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials?
      forwardInboundCredentials;

  /// Map of Trigger to event type.
  ///
  /// Key should be one of the supported event types: "beforeCreate",
  /// "beforeSignIn"
  core.Map<core.String, GoogleCloudIdentitytoolkitAdminV2Trigger>? triggers;

  GoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig({
    this.forwardInboundCredentials,
    this.triggers,
  });

  GoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig.fromJson(
      core.Map _json)
      : this(
          forwardInboundCredentials:
              _json.containsKey('forwardInboundCredentials')
                  ? GoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials
                      .fromJson(_json['forwardInboundCredentials']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          triggers: _json.containsKey('triggers')
              ? (_json['triggers'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    GoogleCloudIdentitytoolkitAdminV2Trigger.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (forwardInboundCredentials != null)
          'forwardInboundCredentials': forwardInboundCredentials!,
        if (triggers != null) 'triggers': triggers!,
      };
}

/// Options related to how clients making requests on behalf of a project should
/// be configured.
class GoogleCloudIdentitytoolkitAdminV2ClientConfig {
  /// API key that can be used when making requests for this project.
  ///
  /// Output only.
  core.String? apiKey;

  /// Firebase subdomain.
  ///
  /// Output only.
  core.String? firebaseSubdomain;

  /// Configuration related to restricting a user's ability to affect their
  /// account.
  GoogleCloudIdentitytoolkitAdminV2Permissions? permissions;

  GoogleCloudIdentitytoolkitAdminV2ClientConfig({
    this.apiKey,
    this.firebaseSubdomain,
    this.permissions,
  });

  GoogleCloudIdentitytoolkitAdminV2ClientConfig.fromJson(core.Map _json)
      : this(
          apiKey: _json.containsKey('apiKey')
              ? _json['apiKey'] as core.String
              : null,
          firebaseSubdomain: _json.containsKey('firebaseSubdomain')
              ? _json['firebaseSubdomain'] as core.String
              : null,
          permissions: _json.containsKey('permissions')
              ? GoogleCloudIdentitytoolkitAdminV2Permissions.fromJson(
                  _json['permissions'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiKey != null) 'apiKey': apiKey!,
        if (firebaseSubdomain != null) 'firebaseSubdomain': firebaseSubdomain!,
        if (permissions != null) 'permissions': permissions!,
      };
}

/// Additional config for Apple for code flow.
class GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig {
  /// Key ID for the private key.
  core.String? keyId;

  /// Private key used for signing the client secret JWT.
  core.String? privateKey;

  /// Apple Developer Team ID.
  core.String? teamId;

  GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig({
    this.keyId,
    this.privateKey,
    this.teamId,
  });

  GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig.fromJson(core.Map _json)
      : this(
          keyId:
              _json.containsKey('keyId') ? _json['keyId'] as core.String : null,
          privateKey: _json.containsKey('privateKey')
              ? _json['privateKey'] as core.String
              : null,
          teamId: _json.containsKey('teamId')
              ? _json['teamId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyId != null) 'keyId': keyId!,
        if (privateKey != null) 'privateKey': privateKey!,
        if (teamId != null) 'teamId': teamId!,
      };
}

/// Represents an Identity Toolkit project.
class GoogleCloudIdentitytoolkitAdminV2Config {
  /// List of domains authorized for OAuth redirects
  core.List<core.String>? authorizedDomains;

  /// Configuration related to blocking functions.
  GoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig? blockingFunctions;

  /// Options related to how clients making requests on behalf of a project
  /// should be configured.
  GoogleCloudIdentitytoolkitAdminV2ClientConfig? client;

  /// Configuration for this project's multi-factor authentication, including
  /// whether it is active and what factors can be used for the second factor
  GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig? mfa;

  /// Configuration related to monitoring project activity.
  GoogleCloudIdentitytoolkitAdminV2MonitoringConfig? monitoring;

  /// Configuration related to multi-tenant functionality.
  GoogleCloudIdentitytoolkitAdminV2MultiTenantConfig? multiTenant;

  /// The name of the Config resource.
  ///
  /// Example: "projects/my-awesome-project/config"
  ///
  /// Output only.
  core.String? name;

  /// Configuration related to sending notifications to users.
  GoogleCloudIdentitytoolkitAdminV2NotificationConfig? notification;

  /// Configuration related to quotas.
  GoogleCloudIdentitytoolkitAdminV2QuotaConfig? quota;

  /// Configuration related to local sign in methods.
  GoogleCloudIdentitytoolkitAdminV2SignInConfig? signIn;

  /// The subtype of this config.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SUBTYPE_UNSPECIFIED" : Default value. Do not use.
  /// - "IDENTITY_PLATFORM" : An Identity Platform project.
  /// - "FIREBASE_AUTH" : A Firebase Authentication project.
  core.String? subtype;

  GoogleCloudIdentitytoolkitAdminV2Config({
    this.authorizedDomains,
    this.blockingFunctions,
    this.client,
    this.mfa,
    this.monitoring,
    this.multiTenant,
    this.name,
    this.notification,
    this.quota,
    this.signIn,
    this.subtype,
  });

  GoogleCloudIdentitytoolkitAdminV2Config.fromJson(core.Map _json)
      : this(
          authorizedDomains: _json.containsKey('authorizedDomains')
              ? (_json['authorizedDomains'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          blockingFunctions: _json.containsKey('blockingFunctions')
              ? GoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig
                  .fromJson(_json['blockingFunctions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          client: _json.containsKey('client')
              ? GoogleCloudIdentitytoolkitAdminV2ClientConfig.fromJson(
                  _json['client'] as core.Map<core.String, core.dynamic>)
              : null,
          mfa: _json.containsKey('mfa')
              ? GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig.fromJson(
                  _json['mfa'] as core.Map<core.String, core.dynamic>)
              : null,
          monitoring: _json.containsKey('monitoring')
              ? GoogleCloudIdentitytoolkitAdminV2MonitoringConfig.fromJson(
                  _json['monitoring'] as core.Map<core.String, core.dynamic>)
              : null,
          multiTenant: _json.containsKey('multiTenant')
              ? GoogleCloudIdentitytoolkitAdminV2MultiTenantConfig.fromJson(
                  _json['multiTenant'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          notification: _json.containsKey('notification')
              ? GoogleCloudIdentitytoolkitAdminV2NotificationConfig.fromJson(
                  _json['notification'] as core.Map<core.String, core.dynamic>)
              : null,
          quota: _json.containsKey('quota')
              ? GoogleCloudIdentitytoolkitAdminV2QuotaConfig.fromJson(
                  _json['quota'] as core.Map<core.String, core.dynamic>)
              : null,
          signIn: _json.containsKey('signIn')
              ? GoogleCloudIdentitytoolkitAdminV2SignInConfig.fromJson(
                  _json['signIn'] as core.Map<core.String, core.dynamic>)
              : null,
          subtype: _json.containsKey('subtype')
              ? _json['subtype'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorizedDomains != null) 'authorizedDomains': authorizedDomains!,
        if (blockingFunctions != null) 'blockingFunctions': blockingFunctions!,
        if (client != null) 'client': client!,
        if (mfa != null) 'mfa': mfa!,
        if (monitoring != null) 'monitoring': monitoring!,
        if (multiTenant != null) 'multiTenant': multiTenant!,
        if (name != null) 'name': name!,
        if (notification != null) 'notification': notification!,
        if (quota != null) 'quota': quota!,
        if (signIn != null) 'signIn': signIn!,
        if (subtype != null) 'subtype': subtype!,
      };
}

/// Standard Identity Toolkit-trusted IDPs.
class GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp {
  /// Description of the Idp
  core.String? description;

  /// Id the of Idp
  core.String? idpId;

  GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp({
    this.description,
    this.idpId,
  });

  GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          idpId:
              _json.containsKey('idpId') ? _json['idpId'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (idpId != null) 'idpId': idpId!,
      };
}

/// Configurations options for authenticating with a the standard set of
/// Identity Toolkit-trusted IDPs.
class GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig {
  /// Additional config for Apple-based projects.
  GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig? appleSignInConfig;

  /// OAuth client ID.
  core.String? clientId;

  /// OAuth client secret.
  core.String? clientSecret;

  /// True if allows the user to sign in with the provider.
  core.bool? enabled;

  /// The name of the DefaultSupportedIdpConfig resource, for example:
  /// "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  core.String? name;

  GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig({
    this.appleSignInConfig,
    this.clientId,
    this.clientSecret,
    this.enabled,
    this.name,
  });

  GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig.fromJson(
      core.Map _json)
      : this(
          appleSignInConfig: _json.containsKey('appleSignInConfig')
              ? GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig.fromJson(
                  _json['appleSignInConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          clientId: _json.containsKey('clientId')
              ? _json['clientId'] as core.String
              : null,
          clientSecret: _json.containsKey('clientSecret')
              ? _json['clientSecret'] as core.String
              : null,
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appleSignInConfig != null) 'appleSignInConfig': appleSignInConfig!,
        if (clientId != null) 'clientId': clientId!,
        if (clientSecret != null) 'clientSecret': clientSecret!,
        if (enabled != null) 'enabled': enabled!,
        if (name != null) 'name': name!,
      };
}

/// Information of custom domain DNS verification.
///
/// By default, default_domain will be used. A custom domain can be configured
/// using VerifyCustomDomain.
class GoogleCloudIdentitytoolkitAdminV2DnsInfo {
  /// The applied verified custom domain.
  ///
  /// Output only.
  core.String? customDomain;

  /// The current verification state of the custom domain.
  ///
  /// The custom domain will only be used once the domain verification is
  /// successful.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "VERIFICATION_STATE_UNSPECIFIED" : Default value. Do not use.
  /// - "NOT_STARTED" : The verification has not started.
  /// - "IN_PROGRESS" : The verification is in progress.
  /// - "FAILED" : The verification failed.
  /// - "SUCCEEDED" : The verification succeeded and is ready to be applied.
  core.String? customDomainState;

  /// The timestamp of initial request for the current domain verification.
  ///
  /// Output only.
  core.String? domainVerificationRequestTime;

  /// The custom domain that's to be verified.
  ///
  /// Output only.
  core.String? pendingCustomDomain;

  /// Whether to use custom domain.
  core.bool? useCustomDomain;

  GoogleCloudIdentitytoolkitAdminV2DnsInfo({
    this.customDomain,
    this.customDomainState,
    this.domainVerificationRequestTime,
    this.pendingCustomDomain,
    this.useCustomDomain,
  });

  GoogleCloudIdentitytoolkitAdminV2DnsInfo.fromJson(core.Map _json)
      : this(
          customDomain: _json.containsKey('customDomain')
              ? _json['customDomain'] as core.String
              : null,
          customDomainState: _json.containsKey('customDomainState')
              ? _json['customDomainState'] as core.String
              : null,
          domainVerificationRequestTime:
              _json.containsKey('domainVerificationRequestTime')
                  ? _json['domainVerificationRequestTime'] as core.String
                  : null,
          pendingCustomDomain: _json.containsKey('pendingCustomDomain')
              ? _json['pendingCustomDomain'] as core.String
              : null,
          useCustomDomain: _json.containsKey('useCustomDomain')
              ? _json['useCustomDomain'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customDomain != null) 'customDomain': customDomain!,
        if (customDomainState != null) 'customDomainState': customDomainState!,
        if (domainVerificationRequestTime != null)
          'domainVerificationRequestTime': domainVerificationRequestTime!,
        if (pendingCustomDomain != null)
          'pendingCustomDomain': pendingCustomDomain!,
        if (useCustomDomain != null) 'useCustomDomain': useCustomDomain!,
      };
}

/// Configuration options related to authenticating a user by their email
/// address.
class GoogleCloudIdentitytoolkitAdminV2Email {
  /// Whether email auth is enabled for the project or not.
  core.bool? enabled;

  /// Whether a password is required for email auth or not.
  ///
  /// If true, both an email and password must be provided to sign in. If false,
  /// a user may sign in via either email/password or email link.
  core.bool? passwordRequired;

  GoogleCloudIdentitytoolkitAdminV2Email({
    this.enabled,
    this.passwordRequired,
  });

  GoogleCloudIdentitytoolkitAdminV2Email.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
          passwordRequired: _json.containsKey('passwordRequired')
              ? _json['passwordRequired'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
        if (passwordRequired != null) 'passwordRequired': passwordRequired!,
      };
}

/// Email template.
///
/// The subject and body fields can contain the following placeholders which
/// will be replaced with the appropriate values: %LINK% - The link to use to
/// redeem the send OOB code. %EMAIL% - The email where the email is being sent.
/// %NEW_EMAIL% - The new email being set for the account (when applicable).
/// %APP_NAME% - The GCP project's display name. %DISPLAY_NAME% - The user's
/// display name.
class GoogleCloudIdentitytoolkitAdminV2EmailTemplate {
  /// Email body
  core.String? body;

  /// Email body format
  /// Possible string values are:
  /// - "BODY_FORMAT_UNSPECIFIED" : Default value. Do not use.
  /// - "PLAIN_TEXT" : Plain text
  /// - "HTML" : HTML
  core.String? bodyFormat;

  /// Whether the body or subject of the email is customized.
  ///
  /// Output only.
  core.bool? customized;

  /// Reply-to address
  core.String? replyTo;

  /// Sender display name
  core.String? senderDisplayName;

  /// Local part of From address
  core.String? senderLocalPart;

  /// Subject of the email
  core.String? subject;

  GoogleCloudIdentitytoolkitAdminV2EmailTemplate({
    this.body,
    this.bodyFormat,
    this.customized,
    this.replyTo,
    this.senderDisplayName,
    this.senderLocalPart,
    this.subject,
  });

  GoogleCloudIdentitytoolkitAdminV2EmailTemplate.fromJson(core.Map _json)
      : this(
          body: _json.containsKey('body') ? _json['body'] as core.String : null,
          bodyFormat: _json.containsKey('bodyFormat')
              ? _json['bodyFormat'] as core.String
              : null,
          customized: _json.containsKey('customized')
              ? _json['customized'] as core.bool
              : null,
          replyTo: _json.containsKey('replyTo')
              ? _json['replyTo'] as core.String
              : null,
          senderDisplayName: _json.containsKey('senderDisplayName')
              ? _json['senderDisplayName'] as core.String
              : null,
          senderLocalPart: _json.containsKey('senderLocalPart')
              ? _json['senderLocalPart'] as core.String
              : null,
          subject: _json.containsKey('subject')
              ? _json['subject'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (body != null) 'body': body!,
        if (bodyFormat != null) 'bodyFormat': bodyFormat!,
        if (customized != null) 'customized': customized!,
        if (replyTo != null) 'replyTo': replyTo!,
        if (senderDisplayName != null) 'senderDisplayName': senderDisplayName!,
        if (senderLocalPart != null) 'senderLocalPart': senderLocalPart!,
        if (subject != null) 'subject': subject!,
      };
}

/// Indicates which credentials to pass to the registered Blocking Functions.
class GoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials {
  /// Whether to pass the user's OAuth identity provider's access token.
  core.bool? accessToken;

  /// Whether to pass the user's OIDC identity provider's ID token.
  core.bool? idToken;

  /// Whether to pass the user's OAuth identity provider's refresh token.
  core.bool? refreshToken;

  GoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials({
    this.accessToken,
    this.idToken,
    this.refreshToken,
  });

  GoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials.fromJson(
      core.Map _json)
      : this(
          accessToken: _json.containsKey('accessToken')
              ? _json['accessToken'] as core.bool
              : null,
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.bool
              : null,
          refreshToken: _json.containsKey('refreshToken')
              ? _json['refreshToken'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessToken != null) 'accessToken': accessToken!,
        if (idToken != null) 'idToken': idToken!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
      };
}

/// History information of the hash algorithm and key.
///
/// Different accounts' passwords may be generated by different version.
class GoogleCloudIdentitytoolkitAdminV2HashConfig {
  /// Different password hash algorithms used in Identity Toolkit.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "HASH_ALGORITHM_UNSPECIFIED" : Default value. Do not use.
  /// - "HMAC_SHA256" : HMAC_SHA256
  /// - "HMAC_SHA1" : HMAC_SHA1
  /// - "HMAC_MD5" : HMAC_MD5
  /// - "SCRYPT" : SCRYPT
  /// - "PBKDF_SHA1" : PBKDF_SHA1
  /// - "MD5" : MD5
  /// - "HMAC_SHA512" : HMAC_SHA512
  /// - "SHA1" : SHA1
  /// - "BCRYPT" : BCRYPT
  /// - "PBKDF2_SHA256" : PBKDF2_SHA256
  /// - "SHA256" : SHA256
  /// - "SHA512" : SHA512
  /// - "STANDARD_SCRYPT" : STANDARD_SCRYPT
  core.String? algorithm;

  /// Memory cost for hash calculation.
  ///
  /// Used by scrypt and other similar password derivation algorithms. See
  /// https://tools.ietf.org/html/rfc7914 for explanation of field.
  ///
  /// Output only.
  core.int? memoryCost;

  /// How many rounds for hash calculation.
  ///
  /// Used by scrypt and other similar password derivation algorithms.
  ///
  /// Output only.
  core.int? rounds;

  /// Non-printable character to be inserted between the salt and plain text
  /// password in base64.
  ///
  /// Output only.
  core.String? saltSeparator;

  /// Signer key in base64.
  ///
  /// Output only.
  core.String? signerKey;

  GoogleCloudIdentitytoolkitAdminV2HashConfig({
    this.algorithm,
    this.memoryCost,
    this.rounds,
    this.saltSeparator,
    this.signerKey,
  });

  GoogleCloudIdentitytoolkitAdminV2HashConfig.fromJson(core.Map _json)
      : this(
          algorithm: _json.containsKey('algorithm')
              ? _json['algorithm'] as core.String
              : null,
          memoryCost: _json.containsKey('memoryCost')
              ? _json['memoryCost'] as core.int
              : null,
          rounds:
              _json.containsKey('rounds') ? _json['rounds'] as core.int : null,
          saltSeparator: _json.containsKey('saltSeparator')
              ? _json['saltSeparator'] as core.String
              : null,
          signerKey: _json.containsKey('signerKey')
              ? _json['signerKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (algorithm != null) 'algorithm': algorithm!,
        if (memoryCost != null) 'memoryCost': memoryCost!,
        if (rounds != null) 'rounds': rounds!,
        if (saltSeparator != null) 'saltSeparator': saltSeparator!,
        if (signerKey != null) 'signerKey': signerKey!,
      };
}

/// The IDP's certificate data to verify the signature in the SAMLResponse
/// issued by the IDP.
class GoogleCloudIdentitytoolkitAdminV2IdpCertificate {
  /// The x509 certificate
  core.String? x509Certificate;

  GoogleCloudIdentitytoolkitAdminV2IdpCertificate({
    this.x509Certificate,
  });

  GoogleCloudIdentitytoolkitAdminV2IdpCertificate.fromJson(core.Map _json)
      : this(
          x509Certificate: _json.containsKey('x509Certificate')
              ? _json['x509Certificate'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (x509Certificate != null) 'x509Certificate': x509Certificate!,
      };
}

/// The SAML IdP (Identity Provider) configuration when the project acts as the
/// relying party.
class GoogleCloudIdentitytoolkitAdminV2IdpConfig {
  /// IDP's public keys for verifying signature in the assertions.
  core.List<GoogleCloudIdentitytoolkitAdminV2IdpCertificate>? idpCertificates;

  /// Unique identifier for all SAML entities.
  core.String? idpEntityId;

  /// Indicates if outbounding SAMLRequest should be signed.
  core.bool? signRequest;

  /// URL to send Authentication request to.
  core.String? ssoUrl;

  GoogleCloudIdentitytoolkitAdminV2IdpConfig({
    this.idpCertificates,
    this.idpEntityId,
    this.signRequest,
    this.ssoUrl,
  });

  GoogleCloudIdentitytoolkitAdminV2IdpConfig.fromJson(core.Map _json)
      : this(
          idpCertificates: _json.containsKey('idpCertificates')
              ? (_json['idpCertificates'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitAdminV2IdpCertificate.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          idpEntityId: _json.containsKey('idpEntityId')
              ? _json['idpEntityId'] as core.String
              : null,
          signRequest: _json.containsKey('signRequest')
              ? _json['signRequest'] as core.bool
              : null,
          ssoUrl: _json.containsKey('ssoUrl')
              ? _json['ssoUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (idpCertificates != null) 'idpCertificates': idpCertificates!,
        if (idpEntityId != null) 'idpEntityId': idpEntityId!,
        if (signRequest != null) 'signRequest': signRequest!,
        if (ssoUrl != null) 'ssoUrl': ssoUrl!,
      };
}

/// A pair of SAML RP-IDP configurations when the project acts as the relying
/// party.
class GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig {
  /// The config's display name set by developers.
  core.String? displayName;

  /// True if allows the user to sign in with the provider.
  core.bool? enabled;

  /// The SAML IdP (Identity Provider) configuration when the project acts as
  /// the relying party.
  GoogleCloudIdentitytoolkitAdminV2IdpConfig? idpConfig;

  /// The name of the InboundSamlConfig resource, for example:
  /// 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'.
  ///
  /// Ignored during create requests.
  core.String? name;

  /// The SAML SP (Service Provider) configuration when the project acts as the
  /// relying party to receive and accept an authentication assertion issued by
  /// a SAML identity provider.
  GoogleCloudIdentitytoolkitAdminV2SpConfig? spConfig;

  GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig({
    this.displayName,
    this.enabled,
    this.idpConfig,
    this.name,
    this.spConfig,
  });

  GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
          idpConfig: _json.containsKey('idpConfig')
              ? GoogleCloudIdentitytoolkitAdminV2IdpConfig.fromJson(
                  _json['idpConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          spConfig: _json.containsKey('spConfig')
              ? GoogleCloudIdentitytoolkitAdminV2SpConfig.fromJson(
                  _json['spConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (enabled != null) 'enabled': enabled!,
        if (idpConfig != null) 'idpConfig': idpConfig!,
        if (name != null) 'name': name!,
        if (spConfig != null) 'spConfig': spConfig!,
      };
}

/// Settings that the tenants will inherit from project level.
class GoogleCloudIdentitytoolkitAdminV2Inheritance {
  /// Whether to allow the tenant to inherit custom domains, email templates,
  /// and custom SMTP settings.
  ///
  /// If true, email sent from tenant will follow the project level email
  /// sending configurations. If false (by default), emails will go with the
  /// default settings with no customizations.
  core.bool? emailSendingConfig;

  GoogleCloudIdentitytoolkitAdminV2Inheritance({
    this.emailSendingConfig,
  });

  GoogleCloudIdentitytoolkitAdminV2Inheritance.fromJson(core.Map _json)
      : this(
          emailSendingConfig: _json.containsKey('emailSendingConfig')
              ? _json['emailSendingConfig'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (emailSendingConfig != null)
          'emailSendingConfig': emailSendingConfig!,
      };
}

/// Response for DefaultSupportedIdpConfigs
class GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse {
  /// The set of configs.
  core.List<GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig>?
      defaultSupportedIdpConfigs;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse({
    this.defaultSupportedIdpConfigs,
    this.nextPageToken,
  });

  GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse.fromJson(
      core.Map _json)
      : this(
          defaultSupportedIdpConfigs: _json
                  .containsKey('defaultSupportedIdpConfigs')
              ? (_json['defaultSupportedIdpConfigs'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultSupportedIdpConfigs != null)
          'defaultSupportedIdpConfigs': defaultSupportedIdpConfigs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for ListDefaultSupportedIdps
class GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse {
  /// The set of configs.
  core.List<GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp>?
      defaultSupportedIdps;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse({
    this.defaultSupportedIdps,
    this.nextPageToken,
  });

  GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse.fromJson(
      core.Map _json)
      : this(
          defaultSupportedIdps: _json.containsKey('defaultSupportedIdps')
              ? (_json['defaultSupportedIdps'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultSupportedIdps != null)
          'defaultSupportedIdps': defaultSupportedIdps!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for ListInboundSamlConfigs
class GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse {
  /// The set of configs.
  core.List<GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig>?
      inboundSamlConfigs;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse({
    this.inboundSamlConfigs,
    this.nextPageToken,
  });

  GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse.fromJson(
      core.Map _json)
      : this(
          inboundSamlConfigs: _json.containsKey('inboundSamlConfigs')
              ? (_json['inboundSamlConfigs'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inboundSamlConfigs != null)
          'inboundSamlConfigs': inboundSamlConfigs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for ListOAuthIdpConfigs
class GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The set of configs.
  core.List<GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig>? oauthIdpConfigs;

  GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse({
    this.nextPageToken,
    this.oauthIdpConfigs,
  });

  GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse.fromJson(
      core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          oauthIdpConfigs: _json.containsKey('oauthIdpConfigs')
              ? (_json['oauthIdpConfigs'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (oauthIdpConfigs != null) 'oauthIdpConfigs': oauthIdpConfigs!,
      };
}

/// Response message for ListTenants.
class GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse {
  /// The token to get the next page of results.
  core.String? nextPageToken;

  /// A list of tenants under the given agent project.
  core.List<GoogleCloudIdentitytoolkitAdminV2Tenant>? tenants;

  GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse({
    this.nextPageToken,
    this.tenants,
  });

  GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          tenants: _json.containsKey('tenants')
              ? (_json['tenants'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitAdminV2Tenant.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (tenants != null) 'tenants': tenants!,
      };
}

/// Configuration related to monitoring project activity.
class GoogleCloudIdentitytoolkitAdminV2MonitoringConfig {
  /// Configuration for logging requests made to this project to Stackdriver
  /// Logging
  GoogleCloudIdentitytoolkitAdminV2RequestLogging? requestLogging;

  GoogleCloudIdentitytoolkitAdminV2MonitoringConfig({
    this.requestLogging,
  });

  GoogleCloudIdentitytoolkitAdminV2MonitoringConfig.fromJson(core.Map _json)
      : this(
          requestLogging: _json.containsKey('requestLogging')
              ? GoogleCloudIdentitytoolkitAdminV2RequestLogging.fromJson(
                  _json['requestLogging']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestLogging != null) 'requestLogging': requestLogging!,
      };
}

/// Options related to MultiFactor Authentication for the project.
class GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig {
  core.List<core.String>? enabledProviders;

  ///
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Illegal State, should not be used.
  /// - "DISABLED" : Multi-factor authentication cannot be used for this project
  /// - "ENABLED" : Multi-factor authentication can be used for this project
  /// - "MANDATORY" : Multi-factor authentication is required for this project.
  /// Users from this project must authenticate with the second factor.
  core.String? state;

  GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig({
    this.enabledProviders,
    this.state,
  });

  GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig.fromJson(
      core.Map _json)
      : this(
          enabledProviders: _json.containsKey('enabledProviders')
              ? (_json['enabledProviders'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabledProviders != null) 'enabledProviders': enabledProviders!,
        if (state != null) 'state': state!,
      };
}

/// Configuration related to multi-tenant functionality.
class GoogleCloudIdentitytoolkitAdminV2MultiTenantConfig {
  /// Whether this project can have tenants or not.
  core.bool? allowTenants;

  /// The default cloud parent org or folder that the tenant project should be
  /// created under.
  ///
  /// The parent resource name should be in the format of "/", such as
  /// "folders/123" or "organizations/456". If the value is not set, the tenant
  /// will be created under the same organization or folder as the agent
  /// project.
  core.String? defaultTenantLocation;

  GoogleCloudIdentitytoolkitAdminV2MultiTenantConfig({
    this.allowTenants,
    this.defaultTenantLocation,
  });

  GoogleCloudIdentitytoolkitAdminV2MultiTenantConfig.fromJson(core.Map _json)
      : this(
          allowTenants: _json.containsKey('allowTenants')
              ? _json['allowTenants'] as core.bool
              : null,
          defaultTenantLocation: _json.containsKey('defaultTenantLocation')
              ? _json['defaultTenantLocation'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowTenants != null) 'allowTenants': allowTenants!,
        if (defaultTenantLocation != null)
          'defaultTenantLocation': defaultTenantLocation!,
      };
}

/// Configuration related to sending notifications to users.
class GoogleCloudIdentitytoolkitAdminV2NotificationConfig {
  /// Default locale used for email and SMS in IETF BCP 47 format.
  core.String? defaultLocale;

  /// Options for email sending.
  GoogleCloudIdentitytoolkitAdminV2SendEmail? sendEmail;

  /// Options for SMS sending.
  GoogleCloudIdentitytoolkitAdminV2SendSms? sendSms;

  GoogleCloudIdentitytoolkitAdminV2NotificationConfig({
    this.defaultLocale,
    this.sendEmail,
    this.sendSms,
  });

  GoogleCloudIdentitytoolkitAdminV2NotificationConfig.fromJson(core.Map _json)
      : this(
          defaultLocale: _json.containsKey('defaultLocale')
              ? _json['defaultLocale'] as core.String
              : null,
          sendEmail: _json.containsKey('sendEmail')
              ? GoogleCloudIdentitytoolkitAdminV2SendEmail.fromJson(
                  _json['sendEmail'] as core.Map<core.String, core.dynamic>)
              : null,
          sendSms: _json.containsKey('sendSms')
              ? GoogleCloudIdentitytoolkitAdminV2SendSms.fromJson(
                  _json['sendSms'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultLocale != null) 'defaultLocale': defaultLocale!,
        if (sendEmail != null) 'sendEmail': sendEmail!,
        if (sendSms != null) 'sendSms': sendSms!,
      };
}

/// Configuration options for authenticating with an OAuth IDP.
class GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig {
  /// The client id of an OAuth client.
  core.String? clientId;

  /// The client secret of the OAuth client, to enable OIDC code flow.
  core.String? clientSecret;

  /// The config's display name set by developers.
  core.String? displayName;

  /// True if allows the user to sign in with the provider.
  core.bool? enabled;

  /// For OIDC Idps, the issuer identifier.
  core.String? issuer;

  /// The name of the OAuthIdpConfig resource, for example:
  /// 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'.
  ///
  /// Ignored during create requests.
  core.String? name;

  /// The response type to request for in the OAuth authorization flow.
  ///
  /// You can set either `id_token` or `code` to true, but not both. Setting
  /// both types to be simultaneously true (`{code: true, id_token: true}`) is
  /// not yet supported.
  GoogleCloudIdentitytoolkitAdminV2OAuthResponseType? responseType;

  GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig({
    this.clientId,
    this.clientSecret,
    this.displayName,
    this.enabled,
    this.issuer,
    this.name,
    this.responseType,
  });

  GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(core.Map _json)
      : this(
          clientId: _json.containsKey('clientId')
              ? _json['clientId'] as core.String
              : null,
          clientSecret: _json.containsKey('clientSecret')
              ? _json['clientSecret'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
          issuer: _json.containsKey('issuer')
              ? _json['issuer'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          responseType: _json.containsKey('responseType')
              ? GoogleCloudIdentitytoolkitAdminV2OAuthResponseType.fromJson(
                  _json['responseType'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientId != null) 'clientId': clientId!,
        if (clientSecret != null) 'clientSecret': clientSecret!,
        if (displayName != null) 'displayName': displayName!,
        if (enabled != null) 'enabled': enabled!,
        if (issuer != null) 'issuer': issuer!,
        if (name != null) 'name': name!,
        if (responseType != null) 'responseType': responseType!,
      };
}

/// The response type to request for in the OAuth authorization flow.
///
/// You can set either `id_token` or `code` to true, but not both. Setting both
/// types to be simultaneously true (`{code: true, id_token: true}`) is not yet
/// supported. See
/// https://openid.net/specs/openid-connect-core-1_0.html#Authentication for a
/// mapping of response type to OAuth 2.0 flow.
class GoogleCloudIdentitytoolkitAdminV2OAuthResponseType {
  /// If true, authorization code is returned from IdP's authorization endpoint.
  core.bool? code;

  /// If true, ID token is returned from IdP's authorization endpoint.
  core.bool? idToken;

  /// Do not use.
  ///
  /// The `token` response type is not supported at the moment.
  core.bool? token;

  GoogleCloudIdentitytoolkitAdminV2OAuthResponseType({
    this.code,
    this.idToken,
    this.token,
  });

  GoogleCloudIdentitytoolkitAdminV2OAuthResponseType.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.bool : null,
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.bool
              : null,
          token:
              _json.containsKey('token') ? _json['token'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (idToken != null) 'idToken': idToken!,
        if (token != null) 'token': token!,
      };
}

/// Configuration related to restricting a user's ability to affect their
/// account.
class GoogleCloudIdentitytoolkitAdminV2Permissions {
  /// When true, end users cannot delete their account on the associated project
  /// through any of our API methods
  core.bool? disabledUserDeletion;

  /// When true, end users cannot sign up for a new account on the associated
  /// project through any of our API methods
  core.bool? disabledUserSignup;

  GoogleCloudIdentitytoolkitAdminV2Permissions({
    this.disabledUserDeletion,
    this.disabledUserSignup,
  });

  GoogleCloudIdentitytoolkitAdminV2Permissions.fromJson(core.Map _json)
      : this(
          disabledUserDeletion: _json.containsKey('disabledUserDeletion')
              ? _json['disabledUserDeletion'] as core.bool
              : null,
          disabledUserSignup: _json.containsKey('disabledUserSignup')
              ? _json['disabledUserSignup'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disabledUserDeletion != null)
          'disabledUserDeletion': disabledUserDeletion!,
        if (disabledUserSignup != null)
          'disabledUserSignup': disabledUserSignup!,
      };
}

/// Configuration options related to authenticated a user by their phone number.
class GoogleCloudIdentitytoolkitAdminV2PhoneNumber {
  /// Whether phone number auth is enabled for the project or not.
  core.bool? enabled;

  /// A map of that can be used for phone auth testing.
  core.Map<core.String, core.String>? testPhoneNumbers;

  GoogleCloudIdentitytoolkitAdminV2PhoneNumber({
    this.enabled,
    this.testPhoneNumbers,
  });

  GoogleCloudIdentitytoolkitAdminV2PhoneNumber.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
          testPhoneNumbers: _json.containsKey('testPhoneNumbers')
              ? (_json['testPhoneNumbers']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
        if (testPhoneNumbers != null) 'testPhoneNumbers': testPhoneNumbers!,
      };
}

/// Configuration related to quotas.
class GoogleCloudIdentitytoolkitAdminV2QuotaConfig {
  /// Quota for the Signup endpoint, if overwritten.
  ///
  /// Signup quota is measured in sign ups per project per hour per IP.
  GoogleCloudIdentitytoolkitAdminV2TemporaryQuota? signUpQuotaConfig;

  GoogleCloudIdentitytoolkitAdminV2QuotaConfig({
    this.signUpQuotaConfig,
  });

  GoogleCloudIdentitytoolkitAdminV2QuotaConfig.fromJson(core.Map _json)
      : this(
          signUpQuotaConfig: _json.containsKey('signUpQuotaConfig')
              ? GoogleCloudIdentitytoolkitAdminV2TemporaryQuota.fromJson(
                  _json['signUpQuotaConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (signUpQuotaConfig != null) 'signUpQuotaConfig': signUpQuotaConfig!,
      };
}

/// Configuration for logging requests made to this project to Stackdriver
/// Logging
class GoogleCloudIdentitytoolkitAdminV2RequestLogging {
  /// Whether logging is enabled for this project or not.
  core.bool? enabled;

  GoogleCloudIdentitytoolkitAdminV2RequestLogging({
    this.enabled,
  });

  GoogleCloudIdentitytoolkitAdminV2RequestLogging.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// Options for email sending.
class GoogleCloudIdentitytoolkitAdminV2SendEmail {
  /// action url in email template.
  core.String? callbackUri;

  /// Email template for change email
  GoogleCloudIdentitytoolkitAdminV2EmailTemplate? changeEmailTemplate;

  /// Information of custom domain DNS verification.
  GoogleCloudIdentitytoolkitAdminV2DnsInfo? dnsInfo;

  /// Reset password email template for legacy Firebase V1 app.
  GoogleCloudIdentitytoolkitAdminV2EmailTemplate? legacyResetPasswordTemplate;

  /// The method used for sending an email.
  /// Possible string values are:
  /// - "METHOD_UNSPECIFIED" : Email method unspecified.
  /// - "DEFAULT" : Sending email on behalf of developer.
  /// - "CUSTOM_SMTP" : Sending email using SMTP configuration provided by
  /// developers.
  core.String? method;

  /// Email template for reset password
  GoogleCloudIdentitytoolkitAdminV2EmailTemplate? resetPasswordTemplate;

  /// Email template for reverting second factor addition emails
  GoogleCloudIdentitytoolkitAdminV2EmailTemplate?
      revertSecondFactorAdditionTemplate;

  /// Use a custom SMTP relay
  GoogleCloudIdentitytoolkitAdminV2Smtp? smtp;

  /// Email template for verify email
  GoogleCloudIdentitytoolkitAdminV2EmailTemplate? verifyEmailTemplate;

  GoogleCloudIdentitytoolkitAdminV2SendEmail({
    this.callbackUri,
    this.changeEmailTemplate,
    this.dnsInfo,
    this.legacyResetPasswordTemplate,
    this.method,
    this.resetPasswordTemplate,
    this.revertSecondFactorAdditionTemplate,
    this.smtp,
    this.verifyEmailTemplate,
  });

  GoogleCloudIdentitytoolkitAdminV2SendEmail.fromJson(core.Map _json)
      : this(
          callbackUri: _json.containsKey('callbackUri')
              ? _json['callbackUri'] as core.String
              : null,
          changeEmailTemplate: _json.containsKey('changeEmailTemplate')
              ? GoogleCloudIdentitytoolkitAdminV2EmailTemplate.fromJson(
                  _json['changeEmailTemplate']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dnsInfo: _json.containsKey('dnsInfo')
              ? GoogleCloudIdentitytoolkitAdminV2DnsInfo.fromJson(
                  _json['dnsInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          legacyResetPasswordTemplate:
              _json.containsKey('legacyResetPasswordTemplate')
                  ? GoogleCloudIdentitytoolkitAdminV2EmailTemplate.fromJson(
                      _json['legacyResetPasswordTemplate']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          method: _json.containsKey('method')
              ? _json['method'] as core.String
              : null,
          resetPasswordTemplate: _json.containsKey('resetPasswordTemplate')
              ? GoogleCloudIdentitytoolkitAdminV2EmailTemplate.fromJson(
                  _json['resetPasswordTemplate']
                      as core.Map<core.String, core.dynamic>)
              : null,
          revertSecondFactorAdditionTemplate:
              _json.containsKey('revertSecondFactorAdditionTemplate')
                  ? GoogleCloudIdentitytoolkitAdminV2EmailTemplate.fromJson(
                      _json['revertSecondFactorAdditionTemplate']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          smtp: _json.containsKey('smtp')
              ? GoogleCloudIdentitytoolkitAdminV2Smtp.fromJson(
                  _json['smtp'] as core.Map<core.String, core.dynamic>)
              : null,
          verifyEmailTemplate: _json.containsKey('verifyEmailTemplate')
              ? GoogleCloudIdentitytoolkitAdminV2EmailTemplate.fromJson(
                  _json['verifyEmailTemplate']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (callbackUri != null) 'callbackUri': callbackUri!,
        if (changeEmailTemplate != null)
          'changeEmailTemplate': changeEmailTemplate!,
        if (dnsInfo != null) 'dnsInfo': dnsInfo!,
        if (legacyResetPasswordTemplate != null)
          'legacyResetPasswordTemplate': legacyResetPasswordTemplate!,
        if (method != null) 'method': method!,
        if (resetPasswordTemplate != null)
          'resetPasswordTemplate': resetPasswordTemplate!,
        if (revertSecondFactorAdditionTemplate != null)
          'revertSecondFactorAdditionTemplate':
              revertSecondFactorAdditionTemplate!,
        if (smtp != null) 'smtp': smtp!,
        if (verifyEmailTemplate != null)
          'verifyEmailTemplate': verifyEmailTemplate!,
      };
}

/// Options for SMS sending.
class GoogleCloudIdentitytoolkitAdminV2SendSms {
  /// The template to use when sending an SMS.
  ///
  /// Output only.
  GoogleCloudIdentitytoolkitAdminV2SmsTemplate? smsTemplate;

  /// Whether to use the accept_language header for SMS.
  core.bool? useDeviceLocale;

  GoogleCloudIdentitytoolkitAdminV2SendSms({
    this.smsTemplate,
    this.useDeviceLocale,
  });

  GoogleCloudIdentitytoolkitAdminV2SendSms.fromJson(core.Map _json)
      : this(
          smsTemplate: _json.containsKey('smsTemplate')
              ? GoogleCloudIdentitytoolkitAdminV2SmsTemplate.fromJson(
                  _json['smsTemplate'] as core.Map<core.String, core.dynamic>)
              : null,
          useDeviceLocale: _json.containsKey('useDeviceLocale')
              ? _json['useDeviceLocale'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (smsTemplate != null) 'smsTemplate': smsTemplate!,
        if (useDeviceLocale != null) 'useDeviceLocale': useDeviceLocale!,
      };
}

/// Configuration related to local sign in methods.
class GoogleCloudIdentitytoolkitAdminV2SignInConfig {
  /// Whether to allow more than one account to have the same email.
  core.bool? allowDuplicateEmails;

  /// Configuration options related to authenticating an anonymous user.
  GoogleCloudIdentitytoolkitAdminV2Anonymous? anonymous;

  /// Configuration options related to authenticating a user by their email
  /// address.
  GoogleCloudIdentitytoolkitAdminV2Email? email;

  /// Hash config information.
  ///
  /// Output only.
  GoogleCloudIdentitytoolkitAdminV2HashConfig? hashConfig;

  /// Configuration options related to authenticated a user by their phone
  /// number.
  GoogleCloudIdentitytoolkitAdminV2PhoneNumber? phoneNumber;

  GoogleCloudIdentitytoolkitAdminV2SignInConfig({
    this.allowDuplicateEmails,
    this.anonymous,
    this.email,
    this.hashConfig,
    this.phoneNumber,
  });

  GoogleCloudIdentitytoolkitAdminV2SignInConfig.fromJson(core.Map _json)
      : this(
          allowDuplicateEmails: _json.containsKey('allowDuplicateEmails')
              ? _json['allowDuplicateEmails'] as core.bool
              : null,
          anonymous: _json.containsKey('anonymous')
              ? GoogleCloudIdentitytoolkitAdminV2Anonymous.fromJson(
                  _json['anonymous'] as core.Map<core.String, core.dynamic>)
              : null,
          email: _json.containsKey('email')
              ? GoogleCloudIdentitytoolkitAdminV2Email.fromJson(
                  _json['email'] as core.Map<core.String, core.dynamic>)
              : null,
          hashConfig: _json.containsKey('hashConfig')
              ? GoogleCloudIdentitytoolkitAdminV2HashConfig.fromJson(
                  _json['hashConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          phoneNumber: _json.containsKey('phoneNumber')
              ? GoogleCloudIdentitytoolkitAdminV2PhoneNumber.fromJson(
                  _json['phoneNumber'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowDuplicateEmails != null)
          'allowDuplicateEmails': allowDuplicateEmails!,
        if (anonymous != null) 'anonymous': anonymous!,
        if (email != null) 'email': email!,
        if (hashConfig != null) 'hashConfig': hashConfig!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
      };
}

/// The template to use when sending an SMS.
class GoogleCloudIdentitytoolkitAdminV2SmsTemplate {
  /// The SMS's content.
  ///
  /// Can contain the following placeholders which will be replaced with the
  /// appropriate values: %APP_NAME% - For Android or iOS apps, the app's
  /// display name. For web apps, the domain hosting the application.
  /// %LOGIN_CODE% - The OOB code being sent in the SMS.
  ///
  /// Output only.
  core.String? content;

  GoogleCloudIdentitytoolkitAdminV2SmsTemplate({
    this.content,
  });

  GoogleCloudIdentitytoolkitAdminV2SmsTemplate.fromJson(core.Map _json)
      : this(
          content: _json.containsKey('content')
              ? _json['content'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
      };
}

/// Configuration for SMTP relay
class GoogleCloudIdentitytoolkitAdminV2Smtp {
  /// SMTP relay host
  core.String? host;

  /// SMTP relay password
  core.String? password;

  /// SMTP relay port
  core.int? port;

  /// SMTP security mode.
  /// Possible string values are:
  /// - "SECURITY_MODE_UNSPECIFIED" : Default value. Do not use.
  /// - "SSL" : SSL mode
  /// - "START_TLS" : START_TLS mode
  core.String? securityMode;

  /// Sender email for the SMTP relay
  core.String? senderEmail;

  /// SMTP relay username
  core.String? username;

  GoogleCloudIdentitytoolkitAdminV2Smtp({
    this.host,
    this.password,
    this.port,
    this.securityMode,
    this.senderEmail,
    this.username,
  });

  GoogleCloudIdentitytoolkitAdminV2Smtp.fromJson(core.Map _json)
      : this(
          host: _json.containsKey('host') ? _json['host'] as core.String : null,
          password: _json.containsKey('password')
              ? _json['password'] as core.String
              : null,
          port: _json.containsKey('port') ? _json['port'] as core.int : null,
          securityMode: _json.containsKey('securityMode')
              ? _json['securityMode'] as core.String
              : null,
          senderEmail: _json.containsKey('senderEmail')
              ? _json['senderEmail'] as core.String
              : null,
          username: _json.containsKey('username')
              ? _json['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (host != null) 'host': host!,
        if (password != null) 'password': password!,
        if (port != null) 'port': port!,
        if (securityMode != null) 'securityMode': securityMode!,
        if (senderEmail != null) 'senderEmail': senderEmail!,
        if (username != null) 'username': username!,
      };
}

/// The SP's certificate data for IDP to verify the SAMLRequest generated by the
/// SP.
class GoogleCloudIdentitytoolkitAdminV2SpCertificate {
  /// Timestamp of the cert expiration instance.
  core.String? expiresAt;

  /// Self-signed public certificate.
  core.String? x509Certificate;

  GoogleCloudIdentitytoolkitAdminV2SpCertificate({
    this.expiresAt,
    this.x509Certificate,
  });

  GoogleCloudIdentitytoolkitAdminV2SpCertificate.fromJson(core.Map _json)
      : this(
          expiresAt: _json.containsKey('expiresAt')
              ? _json['expiresAt'] as core.String
              : null,
          x509Certificate: _json.containsKey('x509Certificate')
              ? _json['x509Certificate'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expiresAt != null) 'expiresAt': expiresAt!,
        if (x509Certificate != null) 'x509Certificate': x509Certificate!,
      };
}

/// The SAML SP (Service Provider) configuration when the project acts as the
/// relying party to receive and accept an authentication assertion issued by a
/// SAML identity provider.
class GoogleCloudIdentitytoolkitAdminV2SpConfig {
  /// Callback URI where responses from IDP are handled.
  core.String? callbackUri;

  /// Public certificates generated by the server to verify the signature in
  /// SAMLRequest in the SP-initiated flow.
  ///
  /// Output only.
  core.List<GoogleCloudIdentitytoolkitAdminV2SpCertificate>? spCertificates;

  /// Unique identifier for all SAML entities.
  core.String? spEntityId;

  GoogleCloudIdentitytoolkitAdminV2SpConfig({
    this.callbackUri,
    this.spCertificates,
    this.spEntityId,
  });

  GoogleCloudIdentitytoolkitAdminV2SpConfig.fromJson(core.Map _json)
      : this(
          callbackUri: _json.containsKey('callbackUri')
              ? _json['callbackUri'] as core.String
              : null,
          spCertificates: _json.containsKey('spCertificates')
              ? (_json['spCertificates'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitAdminV2SpCertificate.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          spEntityId: _json.containsKey('spEntityId')
              ? _json['spEntityId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (callbackUri != null) 'callbackUri': callbackUri!,
        if (spCertificates != null) 'spCertificates': spCertificates!,
        if (spEntityId != null) 'spEntityId': spEntityId!,
      };
}

/// Temporary quota increase / decrease
class GoogleCloudIdentitytoolkitAdminV2TemporaryQuota {
  /// Corresponds to the 'refill_token_count' field in QuotaServer config
  core.String? quota;

  /// How long this quota will be active for
  core.String? quotaDuration;

  /// When this quota will take affect
  core.String? startTime;

  GoogleCloudIdentitytoolkitAdminV2TemporaryQuota({
    this.quota,
    this.quotaDuration,
    this.startTime,
  });

  GoogleCloudIdentitytoolkitAdminV2TemporaryQuota.fromJson(core.Map _json)
      : this(
          quota:
              _json.containsKey('quota') ? _json['quota'] as core.String : null,
          quotaDuration: _json.containsKey('quotaDuration')
              ? _json['quotaDuration'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (quota != null) 'quota': quota!,
        if (quotaDuration != null) 'quotaDuration': quotaDuration!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// A Tenant contains configuration for the tenant in a multi-tenant project.
class GoogleCloudIdentitytoolkitAdminV2Tenant {
  /// Whether to allow email/password user authentication.
  core.bool? allowPasswordSignup;

  /// Whether authentication is disabled for the tenant.
  ///
  /// If true, the users under the disabled tenant are not allowed to sign-in.
  /// Admins of the disabled tenant are not able to manage its users.
  core.bool? disableAuth;

  /// Display name of the tenant.
  core.String? displayName;

  /// Whether to enable anonymous user authentication.
  core.bool? enableAnonymousUser;

  /// Whether to enable email link user authentication.
  core.bool? enableEmailLinkSignin;

  /// Hash config information of a tenant for display on Pantheon.
  ///
  /// This can only be displayed on Pantheon to avoid the sensitive information
  /// to get accidentally leaked. Only returned in GetTenant response to
  /// restrict reading of this information. Requires
  /// firebaseauth.configs.getHashConfig permission on the agent project for
  /// returning this field.
  ///
  /// Output only.
  GoogleCloudIdentitytoolkitAdminV2HashConfig? hashConfig;

  /// Specify the settings that the tenant could inherit.
  GoogleCloudIdentitytoolkitAdminV2Inheritance? inheritance;

  /// The tenant-level configuration of MFA options.
  GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig? mfaConfig;

  /// Resource name of a tenant.
  ///
  /// For example: "projects/{project-id}/tenants/{tenant-id}"
  ///
  /// Output only.
  core.String? name;

  /// A map of pairs that can be used for MFA.
  ///
  /// The phone number should be in E.164 format
  /// (https://www.itu.int/rec/T-REC-E.164/) and a maximum of 10 pairs can be
  /// added (error will be thrown once exceeded).
  core.Map<core.String, core.String>? testPhoneNumbers;

  GoogleCloudIdentitytoolkitAdminV2Tenant({
    this.allowPasswordSignup,
    this.disableAuth,
    this.displayName,
    this.enableAnonymousUser,
    this.enableEmailLinkSignin,
    this.hashConfig,
    this.inheritance,
    this.mfaConfig,
    this.name,
    this.testPhoneNumbers,
  });

  GoogleCloudIdentitytoolkitAdminV2Tenant.fromJson(core.Map _json)
      : this(
          allowPasswordSignup: _json.containsKey('allowPasswordSignup')
              ? _json['allowPasswordSignup'] as core.bool
              : null,
          disableAuth: _json.containsKey('disableAuth')
              ? _json['disableAuth'] as core.bool
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          enableAnonymousUser: _json.containsKey('enableAnonymousUser')
              ? _json['enableAnonymousUser'] as core.bool
              : null,
          enableEmailLinkSignin: _json.containsKey('enableEmailLinkSignin')
              ? _json['enableEmailLinkSignin'] as core.bool
              : null,
          hashConfig: _json.containsKey('hashConfig')
              ? GoogleCloudIdentitytoolkitAdminV2HashConfig.fromJson(
                  _json['hashConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          inheritance: _json.containsKey('inheritance')
              ? GoogleCloudIdentitytoolkitAdminV2Inheritance.fromJson(
                  _json['inheritance'] as core.Map<core.String, core.dynamic>)
              : null,
          mfaConfig: _json.containsKey('mfaConfig')
              ? GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig.fromJson(
                  _json['mfaConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          testPhoneNumbers: _json.containsKey('testPhoneNumbers')
              ? (_json['testPhoneNumbers']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowPasswordSignup != null)
          'allowPasswordSignup': allowPasswordSignup!,
        if (disableAuth != null) 'disableAuth': disableAuth!,
        if (displayName != null) 'displayName': displayName!,
        if (enableAnonymousUser != null)
          'enableAnonymousUser': enableAnonymousUser!,
        if (enableEmailLinkSignin != null)
          'enableEmailLinkSignin': enableEmailLinkSignin!,
        if (hashConfig != null) 'hashConfig': hashConfig!,
        if (inheritance != null) 'inheritance': inheritance!,
        if (mfaConfig != null) 'mfaConfig': mfaConfig!,
        if (name != null) 'name': name!,
        if (testPhoneNumbers != null) 'testPhoneNumbers': testPhoneNumbers!,
      };
}

/// Synchronous Cloud Function with HTTP Trigger
class GoogleCloudIdentitytoolkitAdminV2Trigger {
  /// HTTP URI trigger for the Cloud Function.
  core.String? functionUri;

  /// When the trigger was changed.
  core.String? updateTime;

  GoogleCloudIdentitytoolkitAdminV2Trigger({
    this.functionUri,
    this.updateTime,
  });

  GoogleCloudIdentitytoolkitAdminV2Trigger.fromJson(core.Map _json)
      : this(
          functionUri: _json.containsKey('functionUri')
              ? _json['functionUri'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (functionUri != null) 'functionUri': functionUri!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The information required to auto-retrieve an SMS.
typedef GoogleCloudIdentitytoolkitV2AutoRetrievalInfo = $AutoRetrievalInfo;

/// Finishes enrolling a second factor for the user.
class GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest {
  /// Display name which is entered by users to distinguish between different
  /// second factors with same type or different type.
  core.String? displayName;

  /// ID token.
  ///
  /// Required.
  core.String? idToken;

  /// Verification info to authorize sending an SMS for phone verification.
  GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo?
      phoneVerificationInfo;

  /// The ID of the Identity Platform tenant that the user enrolling MFA belongs
  /// to.
  ///
  /// If not set, the user belongs to the default Identity Platform project.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest({
    this.displayName,
    this.idToken,
    this.phoneVerificationInfo,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest.fromJson(
      core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.String
              : null,
          phoneVerificationInfo: _json.containsKey('phoneVerificationInfo')
              ? GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo
                  .fromJson(_json['phoneVerificationInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          tenantId: _json.containsKey('tenantId')
              ? _json['tenantId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (idToken != null) 'idToken': idToken!,
        if (phoneVerificationInfo != null)
          'phoneVerificationInfo': phoneVerificationInfo!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// FinalizeMfaEnrollment response.
class GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse {
  /// ID token updated to reflect MFA enrollment.
  core.String? idToken;

  /// Auxiliary auth info specific to phone auth.
  GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo? phoneAuthInfo;

  /// Refresh token updated to reflect MFA enrollment.
  core.String? refreshToken;

  GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse({
    this.idToken,
    this.phoneAuthInfo,
    this.refreshToken,
  });

  GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse.fromJson(
      core.Map _json)
      : this(
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.String
              : null,
          phoneAuthInfo: _json.containsKey('phoneAuthInfo')
              ? GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo
                  .fromJson(_json['phoneAuthInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          refreshToken: _json.containsKey('refreshToken')
              ? _json['refreshToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (idToken != null) 'idToken': idToken!,
        if (phoneAuthInfo != null) 'phoneAuthInfo': phoneAuthInfo!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
      };
}

/// Phone Verification info for a FinalizeMfa request.
class GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo {
  /// Android only.
  ///
  /// Uses for "instant" phone number verification though GmsCore.
  core.String? androidVerificationProof;

  /// User-entered verification code.
  core.String? code;

  /// Required if Android verification proof is presented.
  core.String? phoneNumber;

  /// An opaque string that represents the enrollment session.
  core.String? sessionInfo;

  GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo({
    this.androidVerificationProof,
    this.code,
    this.phoneNumber,
    this.sessionInfo,
  });

  GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo.fromJson(
      core.Map _json)
      : this(
          androidVerificationProof:
              _json.containsKey('androidVerificationProof')
                  ? _json['androidVerificationProof'] as core.String
                  : null,
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          phoneNumber: _json.containsKey('phoneNumber')
              ? _json['phoneNumber'] as core.String
              : null,
          sessionInfo: _json.containsKey('sessionInfo')
              ? _json['sessionInfo'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidVerificationProof != null)
          'androidVerificationProof': androidVerificationProof!,
        if (code != null) 'code': code!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (sessionInfo != null) 'sessionInfo': sessionInfo!,
      };
}

/// Phone Verification info for a FinalizeMfa response.
class GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo {
  /// Android only.
  ///
  /// Long-lived replacement for valid code tied to android device.
  core.String? androidVerificationProof;

  /// Android only.
  ///
  /// Expiration time of verification proof in seconds.
  core.String? androidVerificationProofExpireTime;

  /// For Android verification proof.
  core.String? phoneNumber;

  GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo({
    this.androidVerificationProof,
    this.androidVerificationProofExpireTime,
    this.phoneNumber,
  });

  GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo.fromJson(
      core.Map _json)
      : this(
          androidVerificationProof:
              _json.containsKey('androidVerificationProof')
                  ? _json['androidVerificationProof'] as core.String
                  : null,
          androidVerificationProofExpireTime:
              _json.containsKey('androidVerificationProofExpireTime')
                  ? _json['androidVerificationProofExpireTime'] as core.String
                  : null,
          phoneNumber: _json.containsKey('phoneNumber')
              ? _json['phoneNumber'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidVerificationProof != null)
          'androidVerificationProof': androidVerificationProof!,
        if (androidVerificationProofExpireTime != null)
          'androidVerificationProofExpireTime':
              androidVerificationProofExpireTime!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
      };
}

/// Finalizes sign-in by verifying MFA challenge.
class GoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest {
  /// Pending credential from first factor sign-in.
  ///
  /// Required.
  core.String? mfaPendingCredential;

  /// Proof of completion of the SMS based MFA challenge.
  GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo?
      phoneVerificationInfo;

  /// The ID of the Identity Platform tenant the user is signing in to.
  ///
  /// If not set, the user will sign in to the default Identity Platform
  /// project.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest({
    this.mfaPendingCredential,
    this.phoneVerificationInfo,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest.fromJson(core.Map _json)
      : this(
          mfaPendingCredential: _json.containsKey('mfaPendingCredential')
              ? _json['mfaPendingCredential'] as core.String
              : null,
          phoneVerificationInfo: _json.containsKey('phoneVerificationInfo')
              ? GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo
                  .fromJson(_json['phoneVerificationInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          tenantId: _json.containsKey('tenantId')
              ? _json['tenantId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mfaPendingCredential != null)
          'mfaPendingCredential': mfaPendingCredential!,
        if (phoneVerificationInfo != null)
          'phoneVerificationInfo': phoneVerificationInfo!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// FinalizeMfaSignIn response.
class GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse {
  /// ID token for the authenticated user.
  core.String? idToken;

  /// Extra phone auth info, including android verification proof.
  GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo? phoneAuthInfo;

  /// Refresh token for the authenticated user.
  core.String? refreshToken;

  GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse({
    this.idToken,
    this.phoneAuthInfo,
    this.refreshToken,
  });

  GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse.fromJson(core.Map _json)
      : this(
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.String
              : null,
          phoneAuthInfo: _json.containsKey('phoneAuthInfo')
              ? GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo
                  .fromJson(_json['phoneAuthInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          refreshToken: _json.containsKey('refreshToken')
              ? _json['refreshToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (idToken != null) 'idToken': idToken!,
        if (phoneAuthInfo != null) 'phoneAuthInfo': phoneAuthInfo!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
      };
}

/// Sends MFA enrollment verification SMS for a user.
class GoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest {
  /// User's ID token.
  ///
  /// Required.
  core.String? idToken;

  /// Verification info to authorize sending an SMS for phone verification.
  GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo? phoneEnrollmentInfo;

  /// The ID of the Identity Platform tenant that the user enrolling MFA belongs
  /// to.
  ///
  /// If not set, the user belongs to the default Identity Platform project.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest({
    this.idToken,
    this.phoneEnrollmentInfo,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest.fromJson(core.Map _json)
      : this(
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.String
              : null,
          phoneEnrollmentInfo: _json.containsKey('phoneEnrollmentInfo')
              ? GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo.fromJson(
                  _json['phoneEnrollmentInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          tenantId: _json.containsKey('tenantId')
              ? _json['tenantId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (idToken != null) 'idToken': idToken!,
        if (phoneEnrollmentInfo != null)
          'phoneEnrollmentInfo': phoneEnrollmentInfo!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// StartMfaEnrollment response.
class GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse {
  /// Verification info to authorize sending an SMS for phone verification.
  GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo? phoneSessionInfo;

  GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse({
    this.phoneSessionInfo,
  });

  GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse.fromJson(
      core.Map _json)
      : this(
          phoneSessionInfo: _json.containsKey('phoneSessionInfo')
              ? GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo.fromJson(
                  _json['phoneSessionInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (phoneSessionInfo != null) 'phoneSessionInfo': phoneSessionInfo!,
      };
}

/// App Verification info for a StartMfa request.
class GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo {
  /// Android only.
  ///
  /// Used by Google Play Services to identify the app for auto-retrieval.
  GoogleCloudIdentitytoolkitV2AutoRetrievalInfo? autoRetrievalInfo;

  /// iOS only.
  ///
  /// Receipt of successful app token validation with APNS.
  core.String? iosReceipt;

  /// iOS only.
  ///
  /// Secret delivered to iOS app via APNS.
  core.String? iosSecret;

  /// Required for enrollment.
  ///
  /// Phone number to be enrolled as MFA.
  core.String? phoneNumber;

  /// Web only.
  ///
  /// Recaptcha solution.
  core.String? recaptchaToken;

  /// Android only.
  ///
  /// Used to assert application identity in place of a recaptcha token. A
  /// SafetyNet Token can be generated via the
  /// [SafetyNet Android Attestation API](https://developer.android.com/training/safetynet/attestation.html),
  /// with the Base64 encoding of the `phone_number` field as the nonce.
  core.String? safetyNetToken;

  GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo({
    this.autoRetrievalInfo,
    this.iosReceipt,
    this.iosSecret,
    this.phoneNumber,
    this.recaptchaToken,
    this.safetyNetToken,
  });

  GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo.fromJson(core.Map _json)
      : this(
          autoRetrievalInfo: _json.containsKey('autoRetrievalInfo')
              ? GoogleCloudIdentitytoolkitV2AutoRetrievalInfo.fromJson(
                  _json['autoRetrievalInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          iosReceipt: _json.containsKey('iosReceipt')
              ? _json['iosReceipt'] as core.String
              : null,
          iosSecret: _json.containsKey('iosSecret')
              ? _json['iosSecret'] as core.String
              : null,
          phoneNumber: _json.containsKey('phoneNumber')
              ? _json['phoneNumber'] as core.String
              : null,
          recaptchaToken: _json.containsKey('recaptchaToken')
              ? _json['recaptchaToken'] as core.String
              : null,
          safetyNetToken: _json.containsKey('safetyNetToken')
              ? _json['safetyNetToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoRetrievalInfo != null) 'autoRetrievalInfo': autoRetrievalInfo!,
        if (iosReceipt != null) 'iosReceipt': iosReceipt!,
        if (iosSecret != null) 'iosSecret': iosSecret!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (recaptchaToken != null) 'recaptchaToken': recaptchaToken!,
        if (safetyNetToken != null) 'safetyNetToken': safetyNetToken!,
      };
}

/// Phone Verification info for a StartMfa response.
class GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo {
  /// An opaque string that represents the enrollment session.
  core.String? sessionInfo;

  GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo({
    this.sessionInfo,
  });

  GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo.fromJson(core.Map _json)
      : this(
          sessionInfo: _json.containsKey('sessionInfo')
              ? _json['sessionInfo'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sessionInfo != null) 'sessionInfo': sessionInfo!,
      };
}

/// Starts multi-factor sign-in by sending the multi-factor auth challenge.
class GoogleCloudIdentitytoolkitV2StartMfaSignInRequest {
  /// MFA enrollment id from the user's list of current MFA enrollments.
  ///
  /// Required.
  core.String? mfaEnrollmentId;

  /// Pending credential from first factor sign-in.
  ///
  /// Required.
  core.String? mfaPendingCredential;

  /// Verification info to authorize sending an SMS for phone verification.
  GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo? phoneSignInInfo;

  /// The ID of the Identity Platform tenant the user is signing in to.
  ///
  /// If not set, the user will sign in to the default Identity Platform
  /// project.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV2StartMfaSignInRequest({
    this.mfaEnrollmentId,
    this.mfaPendingCredential,
    this.phoneSignInInfo,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV2StartMfaSignInRequest.fromJson(core.Map _json)
      : this(
          mfaEnrollmentId: _json.containsKey('mfaEnrollmentId')
              ? _json['mfaEnrollmentId'] as core.String
              : null,
          mfaPendingCredential: _json.containsKey('mfaPendingCredential')
              ? _json['mfaPendingCredential'] as core.String
              : null,
          phoneSignInInfo: _json.containsKey('phoneSignInInfo')
              ? GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo.fromJson(
                  _json['phoneSignInInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          tenantId: _json.containsKey('tenantId')
              ? _json['tenantId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mfaEnrollmentId != null) 'mfaEnrollmentId': mfaEnrollmentId!,
        if (mfaPendingCredential != null)
          'mfaPendingCredential': mfaPendingCredential!,
        if (phoneSignInInfo != null) 'phoneSignInInfo': phoneSignInInfo!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// StartMfaSignIn response.
class GoogleCloudIdentitytoolkitV2StartMfaSignInResponse {
  /// MultiFactor sign-in session information specific to SMS-type second
  /// factors.
  ///
  /// Along with the one-time code retrieved from the sent SMS, the contents of
  /// this session information should be passed to FinalizeMfaSignIn to complete
  /// the sign in.
  GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo? phoneResponseInfo;

  GoogleCloudIdentitytoolkitV2StartMfaSignInResponse({
    this.phoneResponseInfo,
  });

  GoogleCloudIdentitytoolkitV2StartMfaSignInResponse.fromJson(core.Map _json)
      : this(
          phoneResponseInfo: _json.containsKey('phoneResponseInfo')
              ? GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo.fromJson(
                  _json['phoneResponseInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (phoneResponseInfo != null) 'phoneResponseInfo': phoneResponseInfo!,
      };
}

/// Withdraws MFA.
class GoogleCloudIdentitytoolkitV2WithdrawMfaRequest {
  /// User's ID token.
  ///
  /// Required.
  core.String? idToken;

  /// MFA enrollment id from a current MFA enrollment.
  ///
  /// Required.
  core.String? mfaEnrollmentId;

  /// The ID of the Identity Platform tenant that the user unenrolling MFA
  /// belongs to.
  ///
  /// If not set, the user belongs to the default Identity Platform project.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV2WithdrawMfaRequest({
    this.idToken,
    this.mfaEnrollmentId,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV2WithdrawMfaRequest.fromJson(core.Map _json)
      : this(
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.String
              : null,
          mfaEnrollmentId: _json.containsKey('mfaEnrollmentId')
              ? _json['mfaEnrollmentId'] as core.String
              : null,
          tenantId: _json.containsKey('tenantId')
              ? _json['tenantId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (idToken != null) 'idToken': idToken!,
        if (mfaEnrollmentId != null) 'mfaEnrollmentId': mfaEnrollmentId!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// Withdraws MultiFactorAuth response.
class GoogleCloudIdentitytoolkitV2WithdrawMfaResponse {
  /// ID token updated to reflect removal of the second factor.
  core.String? idToken;

  /// Refresh token updated to reflect removal of the second factor.
  core.String? refreshToken;

  GoogleCloudIdentitytoolkitV2WithdrawMfaResponse({
    this.idToken,
    this.refreshToken,
  });

  GoogleCloudIdentitytoolkitV2WithdrawMfaResponse.fromJson(core.Map _json)
      : this(
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.String
              : null,
          refreshToken: _json.containsKey('refreshToken')
              ? _json['refreshToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (idToken != null) 'idToken': idToken!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
      };
}

/// Specifies the audit configuration for a service.
///
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging. An AuditConfig must have one
/// or more AuditLogConfigs. If there are AuditConfigs for both `allServices`
/// and a specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted. Example Policy with
/// multiple AuditConfigs: { "audit_configs": \[ { "service": "allServices",
/// "audit_log_configs": \[ { "log_type": "DATA_READ", "exempted_members": \[
/// "user:jose@example.com" \] }, { "log_type": "DATA_WRITE" }, { "log_type":
/// "ADMIN_READ" } \] }, { "service": "sampleservice.googleapis.com",
/// "audit_log_configs": \[ { "log_type": "DATA_READ" }, { "log_type":
/// "DATA_WRITE", "exempted_members": \[ "user:aliya@example.com" \] } \] } \] }
/// For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts jose@example.com from DATA_READ logging, and
/// aliya@example.com from DATA_WRITE logging.
class GoogleIamV1AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<GoogleIamV1AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  GoogleIamV1AuditConfig({
    this.auditLogConfigs,
    this.service,
  });

  GoogleIamV1AuditConfig.fromJson(core.Map _json)
      : this(
          auditLogConfigs: _json.containsKey('auditLogConfigs')
              ? (_json['auditLogConfigs'] as core.List)
                  .map((value) => GoogleIamV1AuditLogConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: _json.containsKey('service')
              ? _json['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditLogConfigs != null) 'auditLogConfigs': auditLogConfigs!,
        if (service != null) 'service': service!,
      };
}

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": \[ { "log_type": "DATA_READ",
/// "exempted_members": \[ "user:jose@example.com" \] }, { "log_type":
/// "DATA_WRITE" } \] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
typedef GoogleIamV1AuditLogConfig = $AuditLogConfig;

/// Associates `members`, or principals, with a `role`.
class GoogleIamV1Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the principals in this
  /// binding. To learn which resources support conditions in their IAM
  /// policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  GoogleTypeExpr? condition;

  /// Specifies the principals requesting access for a Cloud Platform resource.
  ///
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. * `user:{emailid}`: An email address that represents a specific
  /// Google account. For example, `alice@example.com` . *
  /// `serviceAccount:{emailid}`: An email address that represents a service
  /// account. For example, `my-other-app@appspot.gserviceaccount.com`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `deleted:user:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a user that has
  /// been recently deleted. For example,
  /// `alice@example.com?uid=123456789012345678901`. If the user is recovered,
  /// this value reverts to `user:{emailid}` and the recovered user retains the
  /// role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a service account
  /// that has been recently deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. * `domain:{domain}`: The G Suite domain (primary)
  /// that represents all the users of that domain. For example, `google.com` or
  /// `example.com`.
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String? role;

  GoogleIamV1Binding({
    this.condition,
    this.members,
    this.role,
  });

  GoogleIamV1Binding.fromJson(core.Map _json)
      : this(
          condition: _json.containsKey('condition')
              ? GoogleTypeExpr.fromJson(
                  _json['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: _json.containsKey('members')
              ? (_json['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// Request message for `GetIamPolicy` method.
class GoogleIamV1GetIamPolicyRequest {
  /// OPTIONAL: A `GetPolicyOptions` object for specifying options to
  /// `GetIamPolicy`.
  GoogleIamV1GetPolicyOptions? options;

  GoogleIamV1GetIamPolicyRequest({
    this.options,
  });

  GoogleIamV1GetIamPolicyRequest.fromJson(core.Map _json)
      : this(
          options: _json.containsKey('options')
              ? GoogleIamV1GetPolicyOptions.fromJson(
                  _json['options'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null) 'options': options!,
      };
}

/// Encapsulates settings provided to GetIamPolicy.
class GoogleIamV1GetPolicyOptions {
  /// The maximum policy version that will be used to format the policy.
  ///
  /// Valid values are 0, 1, and 3. Requests specifying an invalid value will be
  /// rejected. Requests for policies with any conditional role bindings must
  /// specify version 3. Policies with no conditional role bindings may specify
  /// any valid value or leave the field unset. The policy in the response might
  /// use the policy version that you specified, or it might use a lower policy
  /// version. For example, if you specify version 3, but the policy has no
  /// conditional role bindings, the response uses version 1. To learn which
  /// resources support conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// Optional.
  core.int? requestedPolicyVersion;

  GoogleIamV1GetPolicyOptions({
    this.requestedPolicyVersion,
  });

  GoogleIamV1GetPolicyOptions.fromJson(core.Map _json)
      : this(
          requestedPolicyVersion: _json.containsKey('requestedPolicyVersion')
              ? _json['requestedPolicyVersion'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestedPolicyVersion != null)
          'requestedPolicyVersion': requestedPolicyVersion!,
      };
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members`, or principals, to a single `role`. Principals can be user
/// accounts, service accounts, Google groups, and domains (such as G Suite). A
/// `role` is a named list of permissions; each `role` can be an IAM predefined
/// role or a user-created custom role. For some types of Google Cloud
/// resources, a `binding` can also specify a `condition`, which is a logical
/// expression that allows access to a resource only if the expression evaluates
/// to `true`. A condition can add constraints based on attributes of the
/// request, the resource, or both. To learn which resources support conditions
/// in their IAM policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time \< timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time \< timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA=
/// version: 3 For a description of IAM and its features, see the
/// [IAM documentation](https://cloud.google.com/iam/docs/).
class GoogleIamV1Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<GoogleIamV1AuditConfig>? auditConfigs;

  /// Associates a list of `members`, or principals, with a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// principal. The `bindings` in a `Policy` can refer to up to 1,500
  /// principals; up to 250 of these principals can be Google groups. Each
  /// occurrence of a principal counts towards these limits. For example, if the
  /// `bindings` grant 50 different roles to `user:alice@example.com`, and not
  /// to any other principal, then you can add another 1,450 principals to the
  /// `bindings` in the `Policy`.
  core.List<GoogleIamV1Binding>? bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy. **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the format of the policy.
  ///
  /// Valid values are `0`, `1`, and `3`. Requests that specify an invalid value
  /// are rejected. Any operation that affects conditional role bindings must
  /// specify version `3`. This requirement applies to the following operations:
  /// * Getting a policy that includes a conditional role binding * Adding a
  /// conditional role binding to a policy * Changing a conditional role binding
  /// in a policy * Removing any role binding, with or without a condition, from
  /// a policy that includes conditions **Important:** If you use IAM
  /// Conditions, you must include the `etag` field whenever you call
  /// `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a
  /// version `3` policy with a version `1` policy, and all of the conditions in
  /// the version `3` policy are lost. If a policy does not include any
  /// conditions, operations on that policy may specify any valid version or
  /// leave the field unset. To learn which resources support conditions in
  /// their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int? version;

  GoogleIamV1Policy({
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  GoogleIamV1Policy.fromJson(core.Map _json)
      : this(
          auditConfigs: _json.containsKey('auditConfigs')
              ? (_json['auditConfigs'] as core.List)
                  .map((value) => GoogleIamV1AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: _json.containsKey('bindings')
              ? (_json['bindings'] as core.List)
                  .map((value) => GoogleIamV1Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Request message for `SetIamPolicy` method.
class GoogleIamV1SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects) might
  /// reject them.
  GoogleIamV1Policy? policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String? updateMask;

  GoogleIamV1SetIamPolicyRequest({
    this.policy,
    this.updateMask,
  });

  GoogleIamV1SetIamPolicyRequest.fromJson(core.Map _json)
      : this(
          policy: _json.containsKey('policy')
              ? GoogleIamV1Policy.fromJson(
                  _json['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: _json.containsKey('updateMask')
              ? _json['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef GoogleIamV1TestIamPermissionsRequest = $TestIamPermissionsRequest;

/// Response message for `TestIamPermissions` method.
typedef GoogleIamV1TestIamPermissionsResponse = $TestIamPermissionsResponse;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef GoogleProtobufEmpty = $Empty;

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() \< 100" Example
/// (Equality): title: "Requestor is owner" description: "Determines if
/// requestor is the document owner" expression: "document.owner ==
/// request.auth.claims.email" Example (Logic): title: "Public documents"
/// description: "Determine whether the document should be publicly visible"
/// expression: "document.type != 'private' && document.type != 'internal'"
/// Example (Data Manipulation): title: "Notification string" description:
/// "Create a notification string with a timestamp." expression: "'New message
/// received at ' + string(document.create_time)" The exact variables and
/// functions that may be referenced within an expression are determined by the
/// service that evaluates it. See the service documentation for additional
/// information.
typedef GoogleTypeExpr = $Expr;
