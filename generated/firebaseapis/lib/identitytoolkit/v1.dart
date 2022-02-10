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

/// Identity Toolkit API - v1
///
/// The Google Identity Toolkit API lets you use open standards to verify a
/// user's identity.
///
/// For more information, see <https://firebase.google.com/docs/auth/>
///
/// Create an instance of [IdentityToolkitApi] to access these resources:
///
/// - [AccountsResource]
/// - [ProjectsResource]
///   - [ProjectsAccountsResource]
///   - [ProjectsTenantsResource]
///     - [ProjectsTenantsAccountsResource]
/// - [V1Resource]
library identitytoolkit.v1;

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
  ProjectsResource get projects => ProjectsResource(_requester);
  V1Resource get v1 => V1Resource(_requester);

  IdentityToolkitApi(http.Client client,
      {core.String rootUrl = 'https://identitytoolkit.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AccountsResource {
  final commons.ApiRequester _requester;

  AccountsResource(commons.ApiRequester client) : _requester = client;

  /// If an email identifier is specified, checks and returns if any user
  /// account is registered with the email.
  ///
  /// If there is a registered account, fetches all providers associated with
  /// the account's email. If the provider ID of an Identity Provider (IdP) is
  /// specified, creates an authorization URI for the IdP. The user can be
  /// directed to this URI to sign in with the IdP. An
  /// [API key](https://cloud.google.com/docs/authentication/api-keys) is
  /// required in the request in order to identify the Google Cloud project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1CreateAuthUriResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1CreateAuthUriResponse> createAuthUri(
    GoogleCloudIdentitytoolkitV1CreateAuthUriRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/accounts:createAuthUri';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1CreateAuthUriResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a user's account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1DeleteAccountResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1DeleteAccountResponse> delete(
    GoogleCloudIdentitytoolkitV1DeleteAccountRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/accounts:delete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1DeleteAccountResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Experimental
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse>
      issueSamlResponse(
    GoogleCloudIdentitytoolkitV1IssueSamlResponseRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/accounts:issueSamlResponse';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets account information for all matched accounts.
  ///
  /// For an end user request, retrieves the account of the end user. For an
  /// admin request with Google OAuth 2.0 credential, retrieves one or multiple
  /// account(s) with matching criteria.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1GetAccountInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1GetAccountInfoResponse> lookup(
    GoogleCloudIdentitytoolkitV1GetAccountInfoRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/accounts:lookup';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1GetAccountInfoResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Resets the password of an account either using an out-of-band code
  /// generated by sendOobCode or by specifying the email and password of the
  /// account to be modified.
  ///
  /// Can also check the purpose of an out-of-band code without consuming it.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1ResetPasswordResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1ResetPasswordResponse> resetPassword(
    GoogleCloudIdentitytoolkitV1ResetPasswordRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/accounts:resetPassword';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1ResetPasswordResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sends an out-of-band confirmation code for an account.
  ///
  /// Requests from a authenticated request can optionally return a link
  /// including the OOB code instead of sending it.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1GetOobCodeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1GetOobCodeResponse> sendOobCode(
    GoogleCloudIdentitytoolkitV1GetOobCodeRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/accounts:sendOobCode';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1GetOobCodeResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sends a SMS verification code for phone number sign-in.
  ///
  /// An [API key](https://cloud.google.com/docs/authentication/api-keys) is
  /// required in the request in order to identify the Google Cloud project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse>
      sendVerificationCode(
    GoogleCloudIdentitytoolkitV1SendVerificationCodeRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/accounts:sendVerificationCode';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Signs in or signs up a user by exchanging a custom Auth token.
  ///
  /// Upon a successful sign-in or sign-up, a new Identity Platform ID token and
  /// refresh token are issued for the user. An
  /// [API key](https://cloud.google.com/docs/authentication/api-keys) is
  /// required in the request in order to identify the Google Cloud project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse>
      signInWithCustomToken(
    GoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/accounts:signInWithCustomToken';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Signs in or signs up a user with a out-of-band code from an email link.
  ///
  /// If a user does not exist with the given email address, a user record will
  /// be created. If the sign-in succeeds, an Identity Platform ID and refresh
  /// token are issued for the authenticated user. An
  /// [API key](https://cloud.google.com/docs/authentication/api-keys) is
  /// required in the request in order to identify the Google Cloud project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse>
      signInWithEmailLink(
    GoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/accounts:signInWithEmailLink';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Signs in or signs up a user with iOS Game Center credentials.
  ///
  /// If the sign-in succeeds, a new Identity Platform ID token and refresh
  /// token are issued for the authenticated user. The bundle ID is required in
  /// the request header as `x-ios-bundle-identifier`. An
  /// [API key](https://cloud.google.com/docs/authentication/api-keys) is
  /// required in the request in order to identify the Google Cloud project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse>
      signInWithGameCenter(
    GoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/accounts:signInWithGameCenter';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Signs in or signs up a user using credentials from an Identity Provider
  /// (IdP).
  ///
  /// This is done by manually providing an IdP credential, or by providing the
  /// authorization response obtained via the authorization request from
  /// CreateAuthUri. If the sign-in succeeds, a new Identity Platform ID token
  /// and refresh token are issued for the authenticated user. A new Identity
  /// Platform user account will be created if the user has not previously
  /// signed in to the IdP with the same account. In addition, when the "One
  /// account per email address" setting is enabled, there should not be an
  /// existing Identity Platform user account with the same email address for a
  /// new user account to be created. An
  /// [API key](https://cloud.google.com/docs/authentication/api-keys) is
  /// required in the request in order to identify the Google Cloud project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1SignInWithIdpResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1SignInWithIdpResponse> signInWithIdp(
    GoogleCloudIdentitytoolkitV1SignInWithIdpRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/accounts:signInWithIdp';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1SignInWithIdpResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Signs in a user with email and password.
  ///
  /// If the sign-in succeeds, a new Identity Platform ID token and refresh
  /// token are issued for the authenticated user. An
  /// [API key](https://cloud.google.com/docs/authentication/api-keys) is
  /// required in the request in order to identify the Google Cloud project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse>
      signInWithPassword(
    GoogleCloudIdentitytoolkitV1SignInWithPasswordRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/accounts:signInWithPassword';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Completes a phone number authentication attempt.
  ///
  /// If a user already exists with the given phone number, an ID token is
  /// minted for that user. Otherwise, a new user is created and associated with
  /// the phone number. This method may also be used to link a phone number to
  /// an existing user. An
  /// [API key](https://cloud.google.com/docs/authentication/api-keys) is
  /// required in the request in order to identify the Google Cloud project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse>
      signInWithPhoneNumber(
    GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/accounts:signInWithPhoneNumber';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Signs up a new email and password user or anonymous user, or upgrades an
  /// anonymous user to email and password.
  ///
  /// For an admin request with a Google OAuth 2.0 credential with the proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control),
  /// creates a new anonymous, email and password, or phone number user. An
  /// [API key](https://cloud.google.com/docs/authentication/api-keys) is
  /// required in the request in order to identify the Google Cloud project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1SignUpResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1SignUpResponse> signUp(
    GoogleCloudIdentitytoolkitV1SignUpRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/accounts:signUp';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1SignUpResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates account-related information for the specified user by setting
  /// specific fields or applying action codes.
  ///
  /// Requests from administrators and end users are supported.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1SetAccountInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1SetAccountInfoResponse> update(
    GoogleCloudIdentitytoolkitV1SetAccountInfoRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/accounts:update';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1SetAccountInfoResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Verifies an iOS client is a real iOS device.
  ///
  /// If the request is valid, a reciept will be sent in the response and a
  /// secret will be sent via Apple Push Notification Service. The client should
  /// send both of them back to certain Identity Platform APIs in a later call
  /// (for example, /accounts:sendVerificationCode), in order to verify the
  /// client. The bundle ID is required in the request header as
  /// `x-ios-bundle-identifier`. An
  /// [API key](https://cloud.google.com/docs/authentication/api-keys) is
  /// required in the request in order to identify the Google Cloud project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1VerifyIosClientResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1VerifyIosClientResponse>
      verifyIosClient(
    GoogleCloudIdentitytoolkitV1VerifyIosClientRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/accounts:verifyIosClient';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1VerifyIosClientResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsAccountsResource get accounts_1 =>
      ProjectsAccountsResource(_requester);
  ProjectsTenantsResource get tenants => ProjectsTenantsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Signs up a new email and password user or anonymous user, or upgrades an
  /// anonymous user to email and password.
  ///
  /// For an admin request with a Google OAuth 2.0 credential with the proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control),
  /// creates a new anonymous, email and password, or phone number user. An
  /// [API key](https://cloud.google.com/docs/authentication/api-keys) is
  /// required in the request in order to identify the Google Cloud project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The project ID of the project which the user should
  /// belong to. Specifying this field requires a Google OAuth 2.0 credential
  /// with the proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  /// If this is not set, the target project is inferred from the scope
  /// associated to the Bearer access token.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1SignUpResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1SignUpResponse> accounts(
    GoogleCloudIdentitytoolkitV1SignUpRequest request,
    core.String targetProjectId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/projects/' + core.Uri.encodeFull('$targetProjectId') + '/accounts';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1SignUpResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a session cookie for the given Identity Platform ID token.
  ///
  /// The session cookie is used by the client to preserve the user's login
  /// state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The ID of the project that the account belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse>
      createSessionCookie(
    GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest request,
    core.String targetProjectId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        ':createSessionCookie';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Looks up user accounts within a project or a tenant based on conditions in
  /// the request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The ID of the project to which the result is scoped.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1QueryUserInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1QueryUserInfoResponse> queryAccounts(
    GoogleCloudIdentitytoolkitV1QueryUserInfoRequest request,
    core.String targetProjectId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        ':queryAccounts';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1QueryUserInfoResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAccountsResource {
  final commons.ApiRequester _requester;

  ProjectsAccountsResource(commons.ApiRequester client) : _requester = client;

  /// Uploads multiple accounts into the Google Cloud project.
  ///
  /// If there is a problem uploading one or more of the accounts, the rest will
  /// be uploaded, and a list of the errors will be returned. To use this method
  /// requires a Google OAuth 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The Project ID of the Identity Platform project which
  /// the account belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1UploadAccountResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1UploadAccountResponse> batchCreate(
    GoogleCloudIdentitytoolkitV1UploadAccountRequest request,
    core.String targetProjectId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/accounts:batchCreate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1UploadAccountResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Batch deletes multiple accounts.
  ///
  /// For accounts that fail to be deleted, error info is contained in the
  /// response. The method ignores accounts that do not exist or are duplicated
  /// in the request. This method requires a Google OAuth 2.0 credential with
  /// proper permissions.
  /// (https://cloud.google.com/identity-platform/docs/access-control)
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - If `tenant_id` is specified, the ID of the Google
  /// Cloud project that the Identity Platform tenant belongs to. Otherwise, the
  /// ID of the Google Cloud project that accounts belong to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse>
      batchDelete(
    GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest request,
    core.String targetProjectId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/accounts:batchDelete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Download account information for all accounts on the project in a
  /// paginated manner.
  ///
  /// To use this method requires a Google OAuth 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control)..
  /// Furthermore, additional permissions are needed to get password hash,
  /// password salt, and password version from accounts; otherwise these fields
  /// are redacted.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - If `tenant_id` is specified, the ID of the Google
  /// Cloud project that the Identity Platform tenant belongs to. Otherwise, the
  /// ID of the Google Cloud project that the accounts belong to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [delegatedProjectNumber] - null
  ///
  /// [maxResults] - The maximum number of results to return. Must be at least 1
  /// and no greater than 1000. By default, it is 20.
  ///
  /// [nextPageToken] - The pagination token from the response of a previous
  /// request.
  ///
  /// [tenantId] - The ID of the Identity Platform tenant the accounts belongs
  /// to. If not specified, accounts on the Identity Platform project are
  /// returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1DownloadAccountResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1DownloadAccountResponse> batchGet(
    core.String targetProjectId, {
    core.String? delegatedProjectNumber,
    core.int? maxResults,
    core.String? nextPageToken,
    core.String? tenantId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (delegatedProjectNumber != null)
        'delegatedProjectNumber': [delegatedProjectNumber],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (nextPageToken != null) 'nextPageToken': [nextPageToken],
      if (tenantId != null) 'tenantId': [tenantId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/accounts:batchGet';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1DownloadAccountResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a user's account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The ID of the project which the account belongs to.
  /// Should only be specified in authenticated requests that specify local_id
  /// of an account.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1DeleteAccountResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1DeleteAccountResponse> delete(
    GoogleCloudIdentitytoolkitV1DeleteAccountRequest request,
    core.String targetProjectId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/accounts:delete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1DeleteAccountResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets account information for all matched accounts.
  ///
  /// For an end user request, retrieves the account of the end user. For an
  /// admin request with Google OAuth 2.0 credential, retrieves one or multiple
  /// account(s) with matching criteria.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The ID of the Google Cloud project that the account or
  /// the Identity Platform tenant specified by `tenant_id` belongs to. Should
  /// only be specified by authenticated requests bearing a Google OAuth 2.0
  /// credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1GetAccountInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1GetAccountInfoResponse> lookup(
    GoogleCloudIdentitytoolkitV1GetAccountInfoRequest request,
    core.String targetProjectId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/accounts:lookup';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1GetAccountInfoResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Looks up user accounts within a project or a tenant based on conditions in
  /// the request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The ID of the project to which the result is scoped.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1QueryUserInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1QueryUserInfoResponse> query(
    GoogleCloudIdentitytoolkitV1QueryUserInfoRequest request,
    core.String targetProjectId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/accounts:query';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1QueryUserInfoResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sends an out-of-band confirmation code for an account.
  ///
  /// Requests from a authenticated request can optionally return a link
  /// including the OOB code instead of sending it.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The Project ID of the Identity Platform project which
  /// the account belongs to. To specify this field, it requires a Google OAuth
  /// 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1GetOobCodeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1GetOobCodeResponse> sendOobCode(
    GoogleCloudIdentitytoolkitV1GetOobCodeRequest request,
    core.String targetProjectId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/accounts:sendOobCode';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1GetOobCodeResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates account-related information for the specified user by setting
  /// specific fields or applying action codes.
  ///
  /// Requests from administrators and end users are supported.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The project ID for the project that the account
  /// belongs to. Specifying this field requires Google OAuth 2.0 credential
  /// with proper permissions
  /// (https://cloud.google.com/identity-platform/docs/access-control). Requests
  /// from end users should pass an Identity Platform ID token instead.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1SetAccountInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1SetAccountInfoResponse> update(
    GoogleCloudIdentitytoolkitV1SetAccountInfoRequest request,
    core.String targetProjectId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/accounts:update';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1SetAccountInfoResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTenantsResource {
  final commons.ApiRequester _requester;

  ProjectsTenantsAccountsResource get accounts_1 =>
      ProjectsTenantsAccountsResource(_requester);

  ProjectsTenantsResource(commons.ApiRequester client) : _requester = client;

  /// Signs up a new email and password user or anonymous user, or upgrades an
  /// anonymous user to email and password.
  ///
  /// For an admin request with a Google OAuth 2.0 credential with the proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control),
  /// creates a new anonymous, email and password, or phone number user. An
  /// [API key](https://cloud.google.com/docs/authentication/api-keys) is
  /// required in the request in order to identify the Google Cloud project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The project ID of the project which the user should
  /// belong to. Specifying this field requires a Google OAuth 2.0 credential
  /// with the proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  /// If this is not set, the target project is inferred from the scope
  /// associated to the Bearer access token.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tenantId] - The ID of the Identity Platform tenant to create a user
  /// under. If not set, the user will be created under the default Identity
  /// Platform project.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1SignUpResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1SignUpResponse> accounts(
    GoogleCloudIdentitytoolkitV1SignUpRequest request,
    core.String targetProjectId,
    core.String tenantId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/tenants/' +
        core.Uri.encodeFull('$tenantId') +
        '/accounts';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1SignUpResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a session cookie for the given Identity Platform ID token.
  ///
  /// The session cookie is used by the client to preserve the user's login
  /// state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The ID of the project that the account belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tenantId] - The tenant ID of the Identity Platform tenant the account
  /// belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse>
      createSessionCookie(
    GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest request,
    core.String targetProjectId,
    core.String tenantId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/tenants/' +
        core.Uri.encodeFull('$tenantId') +
        ':createSessionCookie';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTenantsAccountsResource {
  final commons.ApiRequester _requester;

  ProjectsTenantsAccountsResource(commons.ApiRequester client)
      : _requester = client;

  /// Uploads multiple accounts into the Google Cloud project.
  ///
  /// If there is a problem uploading one or more of the accounts, the rest will
  /// be uploaded, and a list of the errors will be returned. To use this method
  /// requires a Google OAuth 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The Project ID of the Identity Platform project which
  /// the account belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tenantId] - The ID of the Identity Platform tenant the account belongs
  /// to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1UploadAccountResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1UploadAccountResponse> batchCreate(
    GoogleCloudIdentitytoolkitV1UploadAccountRequest request,
    core.String targetProjectId,
    core.String tenantId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/tenants/' +
        core.Uri.encodeFull('$tenantId') +
        '/accounts:batchCreate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1UploadAccountResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Batch deletes multiple accounts.
  ///
  /// For accounts that fail to be deleted, error info is contained in the
  /// response. The method ignores accounts that do not exist or are duplicated
  /// in the request. This method requires a Google OAuth 2.0 credential with
  /// proper permissions.
  /// (https://cloud.google.com/identity-platform/docs/access-control)
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - If `tenant_id` is specified, the ID of the Google
  /// Cloud project that the Identity Platform tenant belongs to. Otherwise, the
  /// ID of the Google Cloud project that accounts belong to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tenantId] - If the accounts belong to an Identity Platform tenant, the ID
  /// of the tenant. If the accounts belong to an default Identity Platform
  /// project, the field is not needed.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse>
      batchDelete(
    GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest request,
    core.String targetProjectId,
    core.String tenantId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/tenants/' +
        core.Uri.encodeFull('$tenantId') +
        '/accounts:batchDelete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Download account information for all accounts on the project in a
  /// paginated manner.
  ///
  /// To use this method requires a Google OAuth 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control)..
  /// Furthermore, additional permissions are needed to get password hash,
  /// password salt, and password version from accounts; otherwise these fields
  /// are redacted.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - If `tenant_id` is specified, the ID of the Google
  /// Cloud project that the Identity Platform tenant belongs to. Otherwise, the
  /// ID of the Google Cloud project that the accounts belong to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tenantId] - The ID of the Identity Platform tenant the accounts belongs
  /// to. If not specified, accounts on the Identity Platform project are
  /// returned.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [delegatedProjectNumber] - null
  ///
  /// [maxResults] - The maximum number of results to return. Must be at least 1
  /// and no greater than 1000. By default, it is 20.
  ///
  /// [nextPageToken] - The pagination token from the response of a previous
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1DownloadAccountResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1DownloadAccountResponse> batchGet(
    core.String targetProjectId,
    core.String tenantId, {
    core.String? delegatedProjectNumber,
    core.int? maxResults,
    core.String? nextPageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (delegatedProjectNumber != null)
        'delegatedProjectNumber': [delegatedProjectNumber],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (nextPageToken != null) 'nextPageToken': [nextPageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/tenants/' +
        core.Uri.encodeFull('$tenantId') +
        '/accounts:batchGet';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1DownloadAccountResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a user's account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The ID of the project which the account belongs to.
  /// Should only be specified in authenticated requests that specify local_id
  /// of an account.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tenantId] - The ID of the tenant that the account belongs to, if
  /// applicable. Only require to be specified for authenticated requests
  /// bearing a Google OAuth 2.0 credential that specify local_id of an account
  /// that belongs to an Identity Platform tenant.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1DeleteAccountResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1DeleteAccountResponse> delete(
    GoogleCloudIdentitytoolkitV1DeleteAccountRequest request,
    core.String targetProjectId,
    core.String tenantId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/tenants/' +
        core.Uri.encodeFull('$tenantId') +
        '/accounts:delete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1DeleteAccountResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets account information for all matched accounts.
  ///
  /// For an end user request, retrieves the account of the end user. For an
  /// admin request with Google OAuth 2.0 credential, retrieves one or multiple
  /// account(s) with matching criteria.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The ID of the Google Cloud project that the account or
  /// the Identity Platform tenant specified by `tenant_id` belongs to. Should
  /// only be specified by authenticated requests bearing a Google OAuth 2.0
  /// credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tenantId] - The ID of the tenant that the account belongs to. Should only
  /// be specified by authenticated requests from a developer.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1GetAccountInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1GetAccountInfoResponse> lookup(
    GoogleCloudIdentitytoolkitV1GetAccountInfoRequest request,
    core.String targetProjectId,
    core.String tenantId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/tenants/' +
        core.Uri.encodeFull('$tenantId') +
        '/accounts:lookup';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1GetAccountInfoResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Looks up user accounts within a project or a tenant based on conditions in
  /// the request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The ID of the project to which the result is scoped.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tenantId] - The ID of the tenant to which the result is scoped.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1QueryUserInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1QueryUserInfoResponse> query(
    GoogleCloudIdentitytoolkitV1QueryUserInfoRequest request,
    core.String targetProjectId,
    core.String tenantId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/tenants/' +
        core.Uri.encodeFull('$tenantId') +
        '/accounts:query';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1QueryUserInfoResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sends an out-of-band confirmation code for an account.
  ///
  /// Requests from a authenticated request can optionally return a link
  /// including the OOB code instead of sending it.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The Project ID of the Identity Platform project which
  /// the account belongs to. To specify this field, it requires a Google OAuth
  /// 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tenantId] - The tenant ID of the Identity Platform tenant the account
  /// belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1GetOobCodeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1GetOobCodeResponse> sendOobCode(
    GoogleCloudIdentitytoolkitV1GetOobCodeRequest request,
    core.String targetProjectId,
    core.String tenantId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/tenants/' +
        core.Uri.encodeFull('$tenantId') +
        '/accounts:sendOobCode';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1GetOobCodeResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates account-related information for the specified user by setting
  /// specific fields or applying action codes.
  ///
  /// Requests from administrators and end users are supported.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The project ID for the project that the account
  /// belongs to. Specifying this field requires Google OAuth 2.0 credential
  /// with proper permissions
  /// (https://cloud.google.com/identity-platform/docs/access-control). Requests
  /// from end users should pass an Identity Platform ID token instead.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tenantId] - The tenant ID of the Identity Platform tenant that the
  /// account belongs to. Requests from end users should pass an Identity
  /// Platform ID token rather than setting this field.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1SetAccountInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1SetAccountInfoResponse> update(
    GoogleCloudIdentitytoolkitV1SetAccountInfoRequest request,
    core.String targetProjectId,
    core.String tenantId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/tenants/' +
        core.Uri.encodeFull('$tenantId') +
        '/accounts:update';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1SetAccountInfoResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class V1Resource {
  final commons.ApiRequester _requester;

  V1Resource(commons.ApiRequester client) : _requester = client;

  /// Gets a project's public Identity Toolkit configuration.
  ///
  /// (Legacy) This method also supports authenticated calls from a developer to
  /// retrieve non-public configuration.
  ///
  /// Request parameters:
  ///
  /// [androidPackageName] - Android package name to check against the real
  /// android package name. If this field is provided, and sha1_cert_hash is not
  /// provided, the action will throw an error if this does not match the real
  /// android package name.
  ///
  /// [clientId] - The RP OAuth client ID. If set, a check will be performed to
  /// ensure that the OAuth client is valid for the retrieved project and the
  /// request rejected with a client error if not valid.
  ///
  /// [delegatedProjectNumber] - Project Number of the delegated project
  /// request. This field should only be used as part of the Firebase V1
  /// migration.
  ///
  /// [firebaseAppId] - The Firebase app ID, for applications that use Firebase.
  /// This can be found in the Firebase console for your project. If set, a
  /// check will be performed to ensure that the app ID is valid for the
  /// retrieved project. If not valid, the request will be rejected with a
  /// client error.
  ///
  /// [iosBundleId] - iOS bundle id to check against the real ios bundle id. If
  /// this field is provided, the action will throw an error if this does not
  /// match the real iOS bundle id.
  ///
  /// [projectNumber] - Project number of the configuration to retrieve. This
  /// field is deprecated and should not be used by new integrations.
  ///
  /// [returnDynamicLink] - Whether dynamic link should be returned.
  ///
  /// [sha1Cert] - SHA-1 Android application cert hash. If set, a check will be
  /// performed to ensure that the cert hash is valid for the retrieved project
  /// and android_package_name.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1GetProjectConfigResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1GetProjectConfigResponse>
      getProjects({
    core.String? androidPackageName,
    core.String? clientId,
    core.String? delegatedProjectNumber,
    core.String? firebaseAppId,
    core.String? iosBundleId,
    core.String? projectNumber,
    core.bool? returnDynamicLink,
    core.String? sha1Cert,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (androidPackageName != null)
        'androidPackageName': [androidPackageName],
      if (clientId != null) 'clientId': [clientId],
      if (delegatedProjectNumber != null)
        'delegatedProjectNumber': [delegatedProjectNumber],
      if (firebaseAppId != null) 'firebaseAppId': [firebaseAppId],
      if (iosBundleId != null) 'iosBundleId': [iosBundleId],
      if (projectNumber != null) 'projectNumber': [projectNumber],
      if (returnDynamicLink != null)
        'returnDynamicLink': ['${returnDynamicLink}'],
      if (sha1Cert != null) 'sha1Cert': [sha1Cert],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/projects';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1GetProjectConfigResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves public keys of the legacy Identity Toolkit token signer to
  /// enable third parties to verify the legacy ID token.
  ///
  /// For now the X509 pem cert is the only format supported.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse>
      getPublicKeys({
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/publicKeys';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets parameters needed for generating a reCAPTCHA challenge.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse>
      getRecaptchaParams({
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/recaptchaParams';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the set of public keys of the session cookie JSON Web Token
  /// (JWT) signer that can be used to validate the session cookie created
  /// through createSessionCookie.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse>
      getSessionCookiePublicKeys({
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/sessionCookiePublicKeys';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

/// The parameters for Argon2 hashing algorithm.
class GoogleCloudIdentitytoolkitV1Argon2Parameters {
  /// The additional associated data, if provided, is appended to the hash value
  /// to provide an additional layer of security.
  ///
  /// A base64-encoded string if specified via JSON.
  core.String? associatedData;
  core.List<core.int> get associatedDataAsBytes =>
      convert.base64.decode(associatedData!);

  set associatedDataAsBytes(core.List<core.int> _bytes) {
    associatedData =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The desired hash length in bytes.
  ///
  /// Minimum is 4 and maximum is 1024.
  ///
  /// Required.
  core.int? hashLengthBytes;

  /// Must not be HASH_TYPE_UNSPECIFIED.
  ///
  /// Required.
  /// Possible string values are:
  /// - "HASH_TYPE_UNSPECIFIED" : The hash type is not specified.
  /// - "ARGON2_D" : An Argon2 variant, Argon2d.
  /// - "ARGON2_ID" : An Argon2 variant, Argonid. Recommended.
  /// - "ARGON2_I" : An Argon2 variant, Argon2i.
  core.String? hashType;

  /// The number of iterations to perform.
  ///
  /// Minimum is 1, maximum is 16.
  ///
  /// Required.
  core.int? iterations;

  /// The memory cost in kibibytes.
  ///
  /// Maximum is 32768.
  ///
  /// Required.
  core.int? memoryCostKib;

  /// The degree of parallelism, also called threads or lanes.
  ///
  /// Minimum is 1, maximum is 16.
  ///
  /// Required.
  core.int? parallelism;

  /// The version of the Argon2 algorithm.
  ///
  /// This defaults to VERSION_13 if not specified.
  /// Possible string values are:
  /// - "VERSION_UNSPECIFIED" : The version is not specified.
  /// - "VERSION_10" : The previous version, 0x10.
  /// - "VERSION_13" : The current version, 0x13. The default value for version.
  core.String? version;

  GoogleCloudIdentitytoolkitV1Argon2Parameters({
    this.associatedData,
    this.hashLengthBytes,
    this.hashType,
    this.iterations,
    this.memoryCostKib,
    this.parallelism,
    this.version,
  });

  GoogleCloudIdentitytoolkitV1Argon2Parameters.fromJson(core.Map _json)
      : this(
          associatedData: _json.containsKey('associatedData')
              ? _json['associatedData'] as core.String
              : null,
          hashLengthBytes: _json.containsKey('hashLengthBytes')
              ? _json['hashLengthBytes'] as core.int
              : null,
          hashType: _json.containsKey('hashType')
              ? _json['hashType'] as core.String
              : null,
          iterations: _json.containsKey('iterations')
              ? _json['iterations'] as core.int
              : null,
          memoryCostKib: _json.containsKey('memoryCostKib')
              ? _json['memoryCostKib'] as core.int
              : null,
          parallelism: _json.containsKey('parallelism')
              ? _json['parallelism'] as core.int
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (associatedData != null) 'associatedData': associatedData!,
        if (hashLengthBytes != null) 'hashLengthBytes': hashLengthBytes!,
        if (hashType != null) 'hashType': hashType!,
        if (iterations != null) 'iterations': iterations!,
        if (memoryCostKib != null) 'memoryCostKib': memoryCostKib!,
        if (parallelism != null) 'parallelism': parallelism!,
        if (version != null) 'version': version!,
      };
}

/// The information required to auto-retrieve an SMS.
typedef GoogleCloudIdentitytoolkitV1AutoRetrievalInfo = $AutoRetrievalInfo;

/// Request message for BatchDeleteAccounts.
class GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest {
  /// Whether to force deleting accounts that are not in disabled state.
  ///
  /// If false, only disabled accounts will be deleted, and accounts that are
  /// not disabled will be added to the `errors`.
  core.bool? force;

  /// List of user IDs to be deleted.
  ///
  /// Required.
  core.List<core.String>? localIds;

  /// If the accounts belong to an Identity Platform tenant, the ID of the
  /// tenant.
  ///
  /// If the accounts belong to an default Identity Platform project, the field
  /// is not needed.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest({
    this.force,
    this.localIds,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest.fromJson(
      core.Map _json)
      : this(
          force:
              _json.containsKey('force') ? _json['force'] as core.bool : null,
          localIds: _json.containsKey('localIds')
              ? (_json['localIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          tenantId: _json.containsKey('tenantId')
              ? _json['tenantId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (force != null) 'force': force!,
        if (localIds != null) 'localIds': localIds!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// Response message to BatchDeleteAccounts.
class GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse {
  /// Detailed error info for accounts that cannot be deleted.
  core.List<GoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo>? errors;

  GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse({
    this.errors,
  });

  GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse.fromJson(
      core.Map _json)
      : this(
          errors: _json.containsKey('errors')
              ? (_json['errors'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errors != null) 'errors': errors!,
      };
}

/// Error info for account failed to be deleted.
class GoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo {
  /// The index of the errored item in the original local_ids field.
  core.int? index;

  /// The corresponding user ID.
  core.String? localId;

  /// Detailed error message.
  core.String? message;

  GoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo({
    this.index,
    this.localId,
    this.message,
  });

  GoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo.fromJson(core.Map _json)
      : this(
          index: _json.containsKey('index') ? _json['index'] as core.int : null,
          localId: _json.containsKey('localId')
              ? _json['localId'] as core.String
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (index != null) 'index': index!,
        if (localId != null) 'localId': localId!,
        if (message != null) 'message': message!,
      };
}

/// Request message for CreateAuthUri.
class GoogleCloudIdentitytoolkitV1CreateAuthUriRequest {
  core.String? appId;

  /// Used for the Google provider.
  ///
  /// The type of the authentication flow to be used. If present, this should be
  /// `CODE_FLOW` to specify the authorization code flow. Otherwise, the default
  /// ID Token flow will be used.
  core.String? authFlowType;

  /// An opaque string used to maintain contextual information between the
  /// authentication request and the callback from the IdP.
  core.String? context;

  /// A valid URL for the IdP to redirect the user back to.
  ///
  /// The URL cannot contain fragments or the reserved `state` query parameter.
  core.String? continueUri;

  /// Additional customized query parameters to be added to the authorization
  /// URI.
  ///
  /// The following parameters are reserved and cannot be added: `client_id`,
  /// `response_type`, `scope`, `redirect_uri`, `state`. For the Microsoft
  /// provider, the Azure AD tenant to sign-in to can be specified in the
  /// `tenant` custom parameter.
  core.Map<core.String, core.String>? customParameter;

  /// Used for the Google provider.
  ///
  /// The G Suite hosted domain of the user in order to restrict sign-in to
  /// users at that domain.
  core.String? hostedDomain;

  /// The email identifier of the user account to fetch associated providers
  /// for.
  ///
  /// At least one of the fields `identifier` and `provider_id` must be set. The
  /// length of the email address should be less than 256 characters and in the
  /// format of `name@domain.tld`. The email address should also match the
  /// [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec production.
  core.String? identifier;
  core.String? oauthConsumerKey;

  /// Additional space-delimited OAuth 2.0 scopes specifying the scope of the
  /// authentication request with the IdP.
  ///
  /// Used for OAuth 2.0 IdPs. For the Google provider, the authorization code
  /// flow will be used if this field is set.
  core.String? oauthScope;
  core.String? openidRealm;
  core.String? otaApp;

  /// The provider ID of the IdP for the user to sign in with.
  ///
  /// This should be a provider ID enabled for sign-in, which is either from the
  /// list of
  /// [default supported IdPs](https://cloud.google.com/identity-platform/docs/reference/rest/v2/defaultSupportedIdps/list),
  /// or of the format `oidc.*` or `saml.*`. Some examples are `google.com`,
  /// `facebook.com`, `oidc.testapp`, and `saml.testapp`. At least one of the
  /// fields `identifier` and `provider_id` must be set.
  core.String? providerId;

  /// A session ID that can be verified against in SignInWithIdp to prevent
  /// session fixation attacks.
  ///
  /// If absent, a random string will be generated and returned as the session
  /// ID.
  core.String? sessionId;

  /// The ID of the Identity Platform tenant to create an authorization URI or
  /// lookup an email identifier for.
  ///
  /// If not set, the operation will be performed in the default Identity
  /// Platform instance in the project.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV1CreateAuthUriRequest({
    this.appId,
    this.authFlowType,
    this.context,
    this.continueUri,
    this.customParameter,
    this.hostedDomain,
    this.identifier,
    this.oauthConsumerKey,
    this.oauthScope,
    this.openidRealm,
    this.otaApp,
    this.providerId,
    this.sessionId,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV1CreateAuthUriRequest.fromJson(core.Map _json)
      : this(
          appId:
              _json.containsKey('appId') ? _json['appId'] as core.String : null,
          authFlowType: _json.containsKey('authFlowType')
              ? _json['authFlowType'] as core.String
              : null,
          context: _json.containsKey('context')
              ? _json['context'] as core.String
              : null,
          continueUri: _json.containsKey('continueUri')
              ? _json['continueUri'] as core.String
              : null,
          customParameter: _json.containsKey('customParameter')
              ? (_json['customParameter']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          hostedDomain: _json.containsKey('hostedDomain')
              ? _json['hostedDomain'] as core.String
              : null,
          identifier: _json.containsKey('identifier')
              ? _json['identifier'] as core.String
              : null,
          oauthConsumerKey: _json.containsKey('oauthConsumerKey')
              ? _json['oauthConsumerKey'] as core.String
              : null,
          oauthScope: _json.containsKey('oauthScope')
              ? _json['oauthScope'] as core.String
              : null,
          openidRealm: _json.containsKey('openidRealm')
              ? _json['openidRealm'] as core.String
              : null,
          otaApp: _json.containsKey('otaApp')
              ? _json['otaApp'] as core.String
              : null,
          providerId: _json.containsKey('providerId')
              ? _json['providerId'] as core.String
              : null,
          sessionId: _json.containsKey('sessionId')
              ? _json['sessionId'] as core.String
              : null,
          tenantId: _json.containsKey('tenantId')
              ? _json['tenantId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appId != null) 'appId': appId!,
        if (authFlowType != null) 'authFlowType': authFlowType!,
        if (context != null) 'context': context!,
        if (continueUri != null) 'continueUri': continueUri!,
        if (customParameter != null) 'customParameter': customParameter!,
        if (hostedDomain != null) 'hostedDomain': hostedDomain!,
        if (identifier != null) 'identifier': identifier!,
        if (oauthConsumerKey != null) 'oauthConsumerKey': oauthConsumerKey!,
        if (oauthScope != null) 'oauthScope': oauthScope!,
        if (openidRealm != null) 'openidRealm': openidRealm!,
        if (otaApp != null) 'otaApp': otaApp!,
        if (providerId != null) 'providerId': providerId!,
        if (sessionId != null) 'sessionId': sessionId!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// Response message for CreateAuthUri.
class GoogleCloudIdentitytoolkitV1CreateAuthUriResponse {
  core.List<core.String>? allProviders;

  /// The authorization URI for the requested provider.
  ///
  /// Present only when a provider ID is set in the request.
  core.String? authUri;

  /// Whether a CAPTCHA is needed because there have been too many failed login
  /// attempts by the user.
  ///
  /// Present only when a registered email identifier is set in the request.
  core.bool? captchaRequired;

  /// Whether the user has previously signed in with the provider ID in the
  /// request.
  ///
  /// Present only when a registered email identifier is set in the request.
  core.bool? forExistingProvider;
  core.String? kind;

  /// The provider ID from the request, if provided.
  core.String? providerId;

  /// Whether the email identifier represents an existing account.
  ///
  /// Present only when an email identifier is set in the request.
  core.bool? registered;

  /// The session ID from the request, or a random string generated by
  /// CreateAuthUri if absent.
  ///
  /// It is used to prevent session fixation attacks.
  core.String? sessionId;

  /// The list of sign-in methods that the user has previously used.
  ///
  /// Each element is one of `password`, `emailLink`, or the provider ID of an
  /// IdP. Present only when a registered email identifier is set in the
  /// request.
  core.List<core.String>? signinMethods;

  GoogleCloudIdentitytoolkitV1CreateAuthUriResponse({
    this.allProviders,
    this.authUri,
    this.captchaRequired,
    this.forExistingProvider,
    this.kind,
    this.providerId,
    this.registered,
    this.sessionId,
    this.signinMethods,
  });

  GoogleCloudIdentitytoolkitV1CreateAuthUriResponse.fromJson(core.Map _json)
      : this(
          allProviders: _json.containsKey('allProviders')
              ? (_json['allProviders'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          authUri: _json.containsKey('authUri')
              ? _json['authUri'] as core.String
              : null,
          captchaRequired: _json.containsKey('captchaRequired')
              ? _json['captchaRequired'] as core.bool
              : null,
          forExistingProvider: _json.containsKey('forExistingProvider')
              ? _json['forExistingProvider'] as core.bool
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          providerId: _json.containsKey('providerId')
              ? _json['providerId'] as core.String
              : null,
          registered: _json.containsKey('registered')
              ? _json['registered'] as core.bool
              : null,
          sessionId: _json.containsKey('sessionId')
              ? _json['sessionId'] as core.String
              : null,
          signinMethods: _json.containsKey('signinMethods')
              ? (_json['signinMethods'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allProviders != null) 'allProviders': allProviders!,
        if (authUri != null) 'authUri': authUri!,
        if (captchaRequired != null) 'captchaRequired': captchaRequired!,
        if (forExistingProvider != null)
          'forExistingProvider': forExistingProvider!,
        if (kind != null) 'kind': kind!,
        if (providerId != null) 'providerId': providerId!,
        if (registered != null) 'registered': registered!,
        if (sessionId != null) 'sessionId': sessionId!,
        if (signinMethods != null) 'signinMethods': signinMethods!,
      };
}

/// Request message for CreateSessionCookie.
class GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest {
  /// A valid Identity Platform ID token.
  ///
  /// Required.
  core.String? idToken;

  /// The tenant ID of the Identity Platform tenant the account belongs to.
  core.String? tenantId;

  /// The number of seconds until the session cookie expires.
  ///
  /// Specify a duration in seconds, between five minutes and fourteen days,
  /// inclusively.
  core.String? validDuration;

  GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest({
    this.idToken,
    this.tenantId,
    this.validDuration,
  });

  GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest.fromJson(
      core.Map _json)
      : this(
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.String
              : null,
          tenantId: _json.containsKey('tenantId')
              ? _json['tenantId'] as core.String
              : null,
          validDuration: _json.containsKey('validDuration')
              ? _json['validDuration'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (idToken != null) 'idToken': idToken!,
        if (tenantId != null) 'tenantId': tenantId!,
        if (validDuration != null) 'validDuration': validDuration!,
      };
}

/// Response message for CreateSessionCookie.
class GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse {
  /// The session cookie that has been created from the Identity Platform ID
  /// token specified in the request.
  ///
  /// It is in the form of a JSON Web Token (JWT). Always present.
  core.String? sessionCookie;

  GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse({
    this.sessionCookie,
  });

  GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse.fromJson(
      core.Map _json)
      : this(
          sessionCookie: _json.containsKey('sessionCookie')
              ? _json['sessionCookie'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sessionCookie != null) 'sessionCookie': sessionCookie!,
      };
}

/// Request message for DeleteAccount.
class GoogleCloudIdentitytoolkitV1DeleteAccountRequest {
  core.String? delegatedProjectNumber;

  /// The Identity Platform ID token of the account to delete.
  ///
  /// Require to be specified for requests from end users that lack Google OAuth
  /// 2.0 credential. Authenticated requests bearing a Google OAuth2 credential
  /// with proper permissions may pass local_id to specify the account to delete
  /// alternatively.
  core.String? idToken;

  /// The ID of user account to delete.
  ///
  /// Specifying this field requires a Google OAuth 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  /// Requests from users lacking the credential should pass an ID token
  /// instead.
  core.String? localId;

  /// The ID of the project which the account belongs to.
  ///
  /// Should only be specified in authenticated requests that specify local_id
  /// of an account.
  core.String? targetProjectId;

  /// The ID of the tenant that the account belongs to, if applicable.
  ///
  /// Only require to be specified for authenticated requests bearing a Google
  /// OAuth 2.0 credential that specify local_id of an account that belongs to
  /// an Identity Platform tenant.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV1DeleteAccountRequest({
    this.delegatedProjectNumber,
    this.idToken,
    this.localId,
    this.targetProjectId,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV1DeleteAccountRequest.fromJson(core.Map _json)
      : this(
          delegatedProjectNumber: _json.containsKey('delegatedProjectNumber')
              ? _json['delegatedProjectNumber'] as core.String
              : null,
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.String
              : null,
          localId: _json.containsKey('localId')
              ? _json['localId'] as core.String
              : null,
          targetProjectId: _json.containsKey('targetProjectId')
              ? _json['targetProjectId'] as core.String
              : null,
          tenantId: _json.containsKey('tenantId')
              ? _json['tenantId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (delegatedProjectNumber != null)
          'delegatedProjectNumber': delegatedProjectNumber!,
        if (idToken != null) 'idToken': idToken!,
        if (localId != null) 'localId': localId!,
        if (targetProjectId != null) 'targetProjectId': targetProjectId!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// Response message for DeleteAccount.
class GoogleCloudIdentitytoolkitV1DeleteAccountResponse {
  core.String? kind;

  GoogleCloudIdentitytoolkitV1DeleteAccountResponse({
    this.kind,
  });

  GoogleCloudIdentitytoolkitV1DeleteAccountResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
      };
}

/// Response message for DownloadAccount.
class GoogleCloudIdentitytoolkitV1DownloadAccountResponse {
  core.String? kind;

  /// If there are more accounts to be downloaded, a token that can be passed
  /// back to DownloadAccount to get more accounts.
  ///
  /// Otherwise, this is blank.
  core.String? nextPageToken;

  /// All accounts belonging to the project/tenant limited by max_results in the
  /// request.
  core.List<GoogleCloudIdentitytoolkitV1UserInfo>? users;

  GoogleCloudIdentitytoolkitV1DownloadAccountResponse({
    this.kind,
    this.nextPageToken,
    this.users,
  });

  GoogleCloudIdentitytoolkitV1DownloadAccountResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          users: _json.containsKey('users')
              ? (_json['users'] as core.List)
                  .map((value) => GoogleCloudIdentitytoolkitV1UserInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (users != null) 'users': users!,
      };
}

/// Email template
class GoogleCloudIdentitytoolkitV1EmailTemplate {
  /// Email body
  core.String? body;

  /// Whether the body or subject of the email is customized.
  core.bool? customized;

  /// Whether the template is disabled.
  ///
  /// If true, a default template will be used.
  core.bool? disabled;

  /// Email body format
  /// Possible string values are:
  /// - "EMAIL_BODY_FORMAT_UNSPECIFIED" : Default value. Do not use.
  /// - "PLAINTEXT" : Email body is in plain text format.
  /// - "HTML" : Email body is in HTML format.
  core.String? format;

  /// From address of the email
  core.String? from;

  /// From display name
  core.String? fromDisplayName;

  /// Local part of From address
  core.String? fromLocalPart;

  /// Value is in III language code format (e.g. "zh-CN", "es").
  ///
  /// Both '-' and '_' separators are accepted.
  core.String? locale;

  /// Reply-to address
  core.String? replyTo;

  /// Subject of the email
  core.String? subject;

  GoogleCloudIdentitytoolkitV1EmailTemplate({
    this.body,
    this.customized,
    this.disabled,
    this.format,
    this.from,
    this.fromDisplayName,
    this.fromLocalPart,
    this.locale,
    this.replyTo,
    this.subject,
  });

  GoogleCloudIdentitytoolkitV1EmailTemplate.fromJson(core.Map _json)
      : this(
          body: _json.containsKey('body') ? _json['body'] as core.String : null,
          customized: _json.containsKey('customized')
              ? _json['customized'] as core.bool
              : null,
          disabled: _json.containsKey('disabled')
              ? _json['disabled'] as core.bool
              : null,
          format: _json.containsKey('format')
              ? _json['format'] as core.String
              : null,
          from: _json.containsKey('from') ? _json['from'] as core.String : null,
          fromDisplayName: _json.containsKey('fromDisplayName')
              ? _json['fromDisplayName'] as core.String
              : null,
          fromLocalPart: _json.containsKey('fromLocalPart')
              ? _json['fromLocalPart'] as core.String
              : null,
          locale: _json.containsKey('locale')
              ? _json['locale'] as core.String
              : null,
          replyTo: _json.containsKey('replyTo')
              ? _json['replyTo'] as core.String
              : null,
          subject: _json.containsKey('subject')
              ? _json['subject'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (body != null) 'body': body!,
        if (customized != null) 'customized': customized!,
        if (disabled != null) 'disabled': disabled!,
        if (format != null) 'format': format!,
        if (from != null) 'from': from!,
        if (fromDisplayName != null) 'fromDisplayName': fromDisplayName!,
        if (fromLocalPart != null) 'fromLocalPart': fromLocalPart!,
        if (locale != null) 'locale': locale!,
        if (replyTo != null) 'replyTo': replyTo!,
        if (subject != null) 'subject': subject!,
      };
}

/// Error information explaining why an account cannot be uploaded.
///
/// batch upload.
class GoogleCloudIdentitytoolkitV1ErrorInfo {
  /// The index of the item, range is \[0, request.size - 1\]
  core.int? index;

  /// Detailed error message
  core.String? message;

  GoogleCloudIdentitytoolkitV1ErrorInfo({
    this.index,
    this.message,
  });

  GoogleCloudIdentitytoolkitV1ErrorInfo.fromJson(core.Map _json)
      : this(
          index: _json.containsKey('index') ? _json['index'] as core.int : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (index != null) 'index': index!,
        if (message != null) 'message': message!,
      };
}

/// Federated user identifier at an Identity Provider.
class GoogleCloudIdentitytoolkitV1FederatedUserIdentifier {
  /// The ID of supported identity providers.
  ///
  /// This should be a provider ID enabled for sign-in, which is either from the
  /// list of
  /// [default supported IdPs](https://cloud.google.com/identity-platform/docs/reference/rest/v2/defaultSupportedIdps/list),
  /// or of the format `oidc.*` or `saml.*`. Some examples are `google.com`,
  /// `facebook.com`, `oidc.testapp`, and `saml.testapp`.
  core.String? providerId;

  /// The user ID of the account at the third-party Identity Provider specified
  /// by `provider_id`.
  core.String? rawId;

  GoogleCloudIdentitytoolkitV1FederatedUserIdentifier({
    this.providerId,
    this.rawId,
  });

  GoogleCloudIdentitytoolkitV1FederatedUserIdentifier.fromJson(core.Map _json)
      : this(
          providerId: _json.containsKey('providerId')
              ? _json['providerId'] as core.String
              : null,
          rawId:
              _json.containsKey('rawId') ? _json['rawId'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (providerId != null) 'providerId': providerId!,
        if (rawId != null) 'rawId': rawId!,
      };
}

/// Request message for GetAccountInfo.
class GoogleCloudIdentitytoolkitV1GetAccountInfoRequest {
  core.String? delegatedProjectNumber;

  /// The email address of one or more accounts to fetch.
  ///
  /// The length of email should be less than 256 characters and in the format
  /// of `name@domain.tld`. The email should also match the
  /// [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec production. Should
  /// only be specified by authenticated requests from a developer.
  core.List<core.String>? email;

  /// The federated user identifier of one or more accounts to fetch.
  ///
  /// Should only be specified by authenticated requests bearing a Google OAuth
  /// 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  core.List<GoogleCloudIdentitytoolkitV1FederatedUserIdentifier>?
      federatedUserId;

  /// The Identity Platform ID token of the account to fetch.
  ///
  /// Require to be specified for requests from end users.
  core.String? idToken;

  /// The initial email of one or more accounts to fetch.
  ///
  /// The length of email should be less than 256 characters and in the format
  /// of `name@domain.tld`. The email should also match the
  /// [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec production. Should
  /// only be specified by authenticated requests from a developer.
  core.List<core.String>? initialEmail;

  /// The ID of one or more accounts to fetch.
  ///
  /// Should only be specified by authenticated requests bearing a Google OAuth
  /// 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  core.List<core.String>? localId;

  /// The phone number of one or more accounts to fetch.
  ///
  /// Should only be specified by authenticated requests from a developer and
  /// should be in E.164 format, for example, +15555555555.
  core.List<core.String>? phoneNumber;

  /// The ID of the Google Cloud project that the account or the Identity
  /// Platform tenant specified by `tenant_id` belongs to.
  ///
  /// Should only be specified by authenticated requests bearing a Google OAuth
  /// 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  core.String? targetProjectId;

  /// The ID of the tenant that the account belongs to.
  ///
  /// Should only be specified by authenticated requests from a developer.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV1GetAccountInfoRequest({
    this.delegatedProjectNumber,
    this.email,
    this.federatedUserId,
    this.idToken,
    this.initialEmail,
    this.localId,
    this.phoneNumber,
    this.targetProjectId,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV1GetAccountInfoRequest.fromJson(core.Map _json)
      : this(
          delegatedProjectNumber: _json.containsKey('delegatedProjectNumber')
              ? _json['delegatedProjectNumber'] as core.String
              : null,
          email: _json.containsKey('email')
              ? (_json['email'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          federatedUserId: _json.containsKey('federatedUserId')
              ? (_json['federatedUserId'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitV1FederatedUserIdentifier
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.String
              : null,
          initialEmail: _json.containsKey('initialEmail')
              ? (_json['initialEmail'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          localId: _json.containsKey('localId')
              ? (_json['localId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          phoneNumber: _json.containsKey('phoneNumber')
              ? (_json['phoneNumber'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          targetProjectId: _json.containsKey('targetProjectId')
              ? _json['targetProjectId'] as core.String
              : null,
          tenantId: _json.containsKey('tenantId')
              ? _json['tenantId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (delegatedProjectNumber != null)
          'delegatedProjectNumber': delegatedProjectNumber!,
        if (email != null) 'email': email!,
        if (federatedUserId != null) 'federatedUserId': federatedUserId!,
        if (idToken != null) 'idToken': idToken!,
        if (initialEmail != null) 'initialEmail': initialEmail!,
        if (localId != null) 'localId': localId!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (targetProjectId != null) 'targetProjectId': targetProjectId!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// Response message for GetAccountInfo.
class GoogleCloudIdentitytoolkitV1GetAccountInfoResponse {
  core.String? kind;

  /// The information of specific user account(s) matching the parameters in the
  /// request.
  core.List<GoogleCloudIdentitytoolkitV1UserInfo>? users;

  GoogleCloudIdentitytoolkitV1GetAccountInfoResponse({
    this.kind,
    this.users,
  });

  GoogleCloudIdentitytoolkitV1GetAccountInfoResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          users: _json.containsKey('users')
              ? (_json['users'] as core.List)
                  .map((value) => GoogleCloudIdentitytoolkitV1UserInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (users != null) 'users': users!,
      };
}

/// Request message for GetOobCode.
class GoogleCloudIdentitytoolkitV1GetOobCodeRequest {
  /// If an associated android app can handle the OOB code, whether or not to
  /// install the android app on the device where the link is opened if the app
  /// is not already installed.
  core.bool? androidInstallApp;

  /// If an associated android app can handle the OOB code, the minimum version
  /// of the app.
  ///
  /// If the version on the device is lower than this version then the user is
  /// taken to Google Play Store to upgrade the app.
  core.String? androidMinimumVersion;

  /// If an associated android app can handle the OOB code, the Android package
  /// name of the android app that will handle the callback when this OOB code
  /// is used.
  ///
  /// This will allow the correct app to open if it is already installed, or
  /// allow Google Play Store to open to the correct app if it is not yet
  /// installed.
  core.String? androidPackageName;

  /// When set to true, the OOB code link will be be sent as a Universal Link or
  /// an Android App Link and will be opened by the corresponding app if
  /// installed.
  ///
  /// If not set, or set to false, the OOB code will be sent to the web widget
  /// first and then on continue will redirect to the app if installed.
  core.bool? canHandleCodeInApp;

  /// For a PASSWORD_RESET request, a reCaptcha response is required when the
  /// system detects possible abuse activity.
  ///
  /// In those cases, this is the response from the reCaptcha challenge used to
  /// verify the caller.
  core.String? captchaResp;
  core.String? challenge;

  /// The Url to continue after user clicks the link sent in email.
  ///
  /// This is the url that will allow the web widget to handle the OOB code.
  core.String? continueUrl;

  /// In order to ensure that the url used can be easily opened up in iOS or
  /// android, we create a
  /// [Firebase Dynamic Link](https://firebase.google.com/docs/dynamic-links).
  ///
  /// Most Identity Platform projects will only have one Dynamic Link domain
  /// enabled, and can leave this field blank. This field contains a specified
  /// Dynamic Link domain for projects that have multiple enabled.
  core.String? dynamicLinkDomain;

  /// The account's email address to send the OOB code to, and generally the
  /// email address of the account that needs to be updated.
  ///
  /// Required for PASSWORD_RESET, EMAIL_SIGNIN, and VERIFY_EMAIL. Only required
  /// for VERIFY_AND_CHANGE_EMAIL requests when return_oob_link is set to true.
  /// In this case, it is the original email of the user.
  core.String? email;

  /// If an associated iOS app can handle the OOB code, the App Store id of this
  /// app.
  ///
  /// This will allow App Store to open to the correct app if the app is not yet
  /// installed.
  core.String? iOSAppStoreId;

  /// If an associated iOS app can handle the OOB code, the iOS bundle id of
  /// this app.
  ///
  /// This will allow the correct app to open if it is already installed.
  core.String? iOSBundleId;

  /// An ID token for the account.
  ///
  /// It is required for VERIFY_AND_CHANGE_EMAIL and VERIFY_EMAIL requests
  /// unless return_oob_link is set to true.
  core.String? idToken;

  /// The email address the account is being updated to.
  ///
  /// Required only for VERIFY_AND_CHANGE_EMAIL requests.
  core.String? newEmail;

  /// The type of out-of-band (OOB) code to send.
  ///
  /// Depending on this value, other fields in this request will be required
  /// and/or have different meanings. There are 4 different OOB codes that can
  /// be sent: * PASSWORD_RESET * EMAIL_SIGNIN * VERIFY_EMAIL *
  /// VERIFY_AND_CHANGE_EMAIL
  ///
  /// Required.
  /// Possible string values are:
  /// - "OOB_REQ_TYPE_UNSPECIFIED" : Oob code type is not specified.
  /// - "PASSWORD_RESET" : reset password
  /// - "OLD_EMAIL_AGREE"
  /// - "NEW_EMAIL_ACCEPT"
  /// - "VERIFY_EMAIL" : verify the account's email address by sending an email
  /// - "RECOVER_EMAIL"
  /// - "EMAIL_SIGNIN" : sign in with email only
  /// - "VERIFY_AND_CHANGE_EMAIL" : This flow sends an email to the specified
  /// new email, and when applied by clicking the link in the email changes the
  /// account's email to the new email. Used when the account must have verified
  /// email at all times, such as MFA accounts.
  /// - "REVERT_SECOND_FACTOR_ADDITION"
  core.String? requestType;

  /// Whether the confirmation link containing the OOB code should be returned
  /// in the response (no email is sent).
  ///
  /// Used when a developer wants to construct the email template and send it on
  /// their own. By default this is false; to specify this field, and to set it
  /// to true, it requires a Google OAuth 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control)
  core.bool? returnOobLink;

  /// The Project ID of the Identity Platform project which the account belongs
  /// to.
  ///
  /// To specify this field, it requires a Google OAuth 2.0 credential with
  /// proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  core.String? targetProjectId;

  /// The tenant ID of the Identity Platform tenant the account belongs to.
  core.String? tenantId;

  /// The IP address of the caller.
  ///
  /// Required only for PASSWORD_RESET requests.
  core.String? userIp;

  GoogleCloudIdentitytoolkitV1GetOobCodeRequest({
    this.androidInstallApp,
    this.androidMinimumVersion,
    this.androidPackageName,
    this.canHandleCodeInApp,
    this.captchaResp,
    this.challenge,
    this.continueUrl,
    this.dynamicLinkDomain,
    this.email,
    this.iOSAppStoreId,
    this.iOSBundleId,
    this.idToken,
    this.newEmail,
    this.requestType,
    this.returnOobLink,
    this.targetProjectId,
    this.tenantId,
    this.userIp,
  });

  GoogleCloudIdentitytoolkitV1GetOobCodeRequest.fromJson(core.Map _json)
      : this(
          androidInstallApp: _json.containsKey('androidInstallApp')
              ? _json['androidInstallApp'] as core.bool
              : null,
          androidMinimumVersion: _json.containsKey('androidMinimumVersion')
              ? _json['androidMinimumVersion'] as core.String
              : null,
          androidPackageName: _json.containsKey('androidPackageName')
              ? _json['androidPackageName'] as core.String
              : null,
          canHandleCodeInApp: _json.containsKey('canHandleCodeInApp')
              ? _json['canHandleCodeInApp'] as core.bool
              : null,
          captchaResp: _json.containsKey('captchaResp')
              ? _json['captchaResp'] as core.String
              : null,
          challenge: _json.containsKey('challenge')
              ? _json['challenge'] as core.String
              : null,
          continueUrl: _json.containsKey('continueUrl')
              ? _json['continueUrl'] as core.String
              : null,
          dynamicLinkDomain: _json.containsKey('dynamicLinkDomain')
              ? _json['dynamicLinkDomain'] as core.String
              : null,
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          iOSAppStoreId: _json.containsKey('iOSAppStoreId')
              ? _json['iOSAppStoreId'] as core.String
              : null,
          iOSBundleId: _json.containsKey('iOSBundleId')
              ? _json['iOSBundleId'] as core.String
              : null,
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.String
              : null,
          newEmail: _json.containsKey('newEmail')
              ? _json['newEmail'] as core.String
              : null,
          requestType: _json.containsKey('requestType')
              ? _json['requestType'] as core.String
              : null,
          returnOobLink: _json.containsKey('returnOobLink')
              ? _json['returnOobLink'] as core.bool
              : null,
          targetProjectId: _json.containsKey('targetProjectId')
              ? _json['targetProjectId'] as core.String
              : null,
          tenantId: _json.containsKey('tenantId')
              ? _json['tenantId'] as core.String
              : null,
          userIp: _json.containsKey('userIp')
              ? _json['userIp'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidInstallApp != null) 'androidInstallApp': androidInstallApp!,
        if (androidMinimumVersion != null)
          'androidMinimumVersion': androidMinimumVersion!,
        if (androidPackageName != null)
          'androidPackageName': androidPackageName!,
        if (canHandleCodeInApp != null)
          'canHandleCodeInApp': canHandleCodeInApp!,
        if (captchaResp != null) 'captchaResp': captchaResp!,
        if (challenge != null) 'challenge': challenge!,
        if (continueUrl != null) 'continueUrl': continueUrl!,
        if (dynamicLinkDomain != null) 'dynamicLinkDomain': dynamicLinkDomain!,
        if (email != null) 'email': email!,
        if (iOSAppStoreId != null) 'iOSAppStoreId': iOSAppStoreId!,
        if (iOSBundleId != null) 'iOSBundleId': iOSBundleId!,
        if (idToken != null) 'idToken': idToken!,
        if (newEmail != null) 'newEmail': newEmail!,
        if (requestType != null) 'requestType': requestType!,
        if (returnOobLink != null) 'returnOobLink': returnOobLink!,
        if (targetProjectId != null) 'targetProjectId': targetProjectId!,
        if (tenantId != null) 'tenantId': tenantId!,
        if (userIp != null) 'userIp': userIp!,
      };
}

/// Response message for GetOobCode.
class GoogleCloudIdentitytoolkitV1GetOobCodeResponse {
  /// If return_oob_link is false in the request, the email address the
  /// verification was sent to.
  core.String? email;
  core.String? kind;

  /// If return_oob_link is true in the request, the OOB code to send.
  core.String? oobCode;

  /// If return_oob_link is true in the request, the OOB link to be sent to the
  /// user.
  ///
  /// This returns the constructed link including
  /// [Firebase Dynamic Link](https://firebase.google.com/docs/dynamic-links)
  /// related parameters.
  core.String? oobLink;

  GoogleCloudIdentitytoolkitV1GetOobCodeResponse({
    this.email,
    this.kind,
    this.oobCode,
    this.oobLink,
  });

  GoogleCloudIdentitytoolkitV1GetOobCodeResponse.fromJson(core.Map _json)
      : this(
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          oobCode: _json.containsKey('oobCode')
              ? _json['oobCode'] as core.String
              : null,
          oobLink: _json.containsKey('oobLink')
              ? _json['oobLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (kind != null) 'kind': kind!,
        if (oobCode != null) 'oobCode': oobCode!,
        if (oobLink != null) 'oobLink': oobLink!,
      };
}

/// Response message for GetProjectConfig.
class GoogleCloudIdentitytoolkitV1GetProjectConfigResponse {
  /// Whether to allow password account sign up.
  ///
  /// This field is only returned for authenticated calls from a developer.
  core.bool? allowPasswordUser;

  /// Google Cloud API key.
  ///
  /// This field is only returned for authenticated calls from a developer.
  core.String? apiKey;

  /// Authorized domains for widget redirect.
  core.List<core.String>? authorizedDomains;

  /// Email template for change email.
  ///
  /// This field is only returned for authenticated calls from a developer.
  GoogleCloudIdentitytoolkitV1EmailTemplate? changeEmailTemplate;

  /// The Firebase Dynamic Links domain used to construct links for redirects to
  /// native apps.
  core.String? dynamicLinksDomain;

  /// Whether anonymous user is enabled.
  ///
  /// This field is only returned for authenticated calls from a developer.
  core.bool? enableAnonymousUser;

  /// OAuth2 provider config.
  ///
  /// This field is only returned for authenticated calls from a developer.
  core.List<GoogleCloudIdentitytoolkitV1IdpConfig>? idpConfig;

  /// Reset password email template for legacy Firebase V1 app.
  ///
  /// This field is only returned for authenticated calls from a developer.
  GoogleCloudIdentitytoolkitV1EmailTemplate? legacyResetPasswordTemplate;

  /// The project id of the retrieved configuration.
  core.String? projectId;

  /// Email template for reset password.
  ///
  /// This field is only returned for authenticated calls from a developer.
  GoogleCloudIdentitytoolkitV1EmailTemplate? resetPasswordTemplate;

  /// Email template for reverting second factor additions.
  ///
  /// This field is only returned for authenticated calls from a developer.
  GoogleCloudIdentitytoolkitV1EmailTemplate? revertSecondFactorAdditionTemplate;

  /// Whether to use email sending.
  ///
  /// This field is only returned for authenticated calls from a developer.
  core.bool? useEmailSending;

  /// Email template for verify email.
  ///
  /// This field is only returned for authenticated calls from a developer.
  GoogleCloudIdentitytoolkitV1EmailTemplate? verifyEmailTemplate;

  GoogleCloudIdentitytoolkitV1GetProjectConfigResponse({
    this.allowPasswordUser,
    this.apiKey,
    this.authorizedDomains,
    this.changeEmailTemplate,
    this.dynamicLinksDomain,
    this.enableAnonymousUser,
    this.idpConfig,
    this.legacyResetPasswordTemplate,
    this.projectId,
    this.resetPasswordTemplate,
    this.revertSecondFactorAdditionTemplate,
    this.useEmailSending,
    this.verifyEmailTemplate,
  });

  GoogleCloudIdentitytoolkitV1GetProjectConfigResponse.fromJson(core.Map _json)
      : this(
          allowPasswordUser: _json.containsKey('allowPasswordUser')
              ? _json['allowPasswordUser'] as core.bool
              : null,
          apiKey: _json.containsKey('apiKey')
              ? _json['apiKey'] as core.String
              : null,
          authorizedDomains: _json.containsKey('authorizedDomains')
              ? (_json['authorizedDomains'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          changeEmailTemplate: _json.containsKey('changeEmailTemplate')
              ? GoogleCloudIdentitytoolkitV1EmailTemplate.fromJson(
                  _json['changeEmailTemplate']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dynamicLinksDomain: _json.containsKey('dynamicLinksDomain')
              ? _json['dynamicLinksDomain'] as core.String
              : null,
          enableAnonymousUser: _json.containsKey('enableAnonymousUser')
              ? _json['enableAnonymousUser'] as core.bool
              : null,
          idpConfig: _json.containsKey('idpConfig')
              ? (_json['idpConfig'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitV1IdpConfig.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          legacyResetPasswordTemplate:
              _json.containsKey('legacyResetPasswordTemplate')
                  ? GoogleCloudIdentitytoolkitV1EmailTemplate.fromJson(
                      _json['legacyResetPasswordTemplate']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          resetPasswordTemplate: _json.containsKey('resetPasswordTemplate')
              ? GoogleCloudIdentitytoolkitV1EmailTemplate.fromJson(
                  _json['resetPasswordTemplate']
                      as core.Map<core.String, core.dynamic>)
              : null,
          revertSecondFactorAdditionTemplate:
              _json.containsKey('revertSecondFactorAdditionTemplate')
                  ? GoogleCloudIdentitytoolkitV1EmailTemplate.fromJson(
                      _json['revertSecondFactorAdditionTemplate']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          useEmailSending: _json.containsKey('useEmailSending')
              ? _json['useEmailSending'] as core.bool
              : null,
          verifyEmailTemplate: _json.containsKey('verifyEmailTemplate')
              ? GoogleCloudIdentitytoolkitV1EmailTemplate.fromJson(
                  _json['verifyEmailTemplate']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowPasswordUser != null) 'allowPasswordUser': allowPasswordUser!,
        if (apiKey != null) 'apiKey': apiKey!,
        if (authorizedDomains != null) 'authorizedDomains': authorizedDomains!,
        if (changeEmailTemplate != null)
          'changeEmailTemplate': changeEmailTemplate!,
        if (dynamicLinksDomain != null)
          'dynamicLinksDomain': dynamicLinksDomain!,
        if (enableAnonymousUser != null)
          'enableAnonymousUser': enableAnonymousUser!,
        if (idpConfig != null) 'idpConfig': idpConfig!,
        if (legacyResetPasswordTemplate != null)
          'legacyResetPasswordTemplate': legacyResetPasswordTemplate!,
        if (projectId != null) 'projectId': projectId!,
        if (resetPasswordTemplate != null)
          'resetPasswordTemplate': resetPasswordTemplate!,
        if (revertSecondFactorAdditionTemplate != null)
          'revertSecondFactorAdditionTemplate':
              revertSecondFactorAdditionTemplate!,
        if (useEmailSending != null) 'useEmailSending': useEmailSending!,
        if (verifyEmailTemplate != null)
          'verifyEmailTemplate': verifyEmailTemplate!,
      };
}

/// Response message for GetRecaptchaParam.
class GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse {
  core.String? kind;

  /// The reCAPTCHA v2 site key used to invoke the reCAPTCHA service.
  ///
  /// Always present.
  core.String? recaptchaSiteKey;
  core.String? recaptchaStoken;

  GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse({
    this.kind,
    this.recaptchaSiteKey,
    this.recaptchaStoken,
  });

  GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          recaptchaSiteKey: _json.containsKey('recaptchaSiteKey')
              ? _json['recaptchaSiteKey'] as core.String
              : null,
          recaptchaStoken: _json.containsKey('recaptchaStoken')
              ? _json['recaptchaStoken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (recaptchaSiteKey != null) 'recaptchaSiteKey': recaptchaSiteKey!,
        if (recaptchaStoken != null) 'recaptchaStoken': recaptchaStoken!,
      };
}

/// Response message for GetSessionCookiePublicKeys.
class GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse {
  /// Public keys of the session cookie signer, formatted as \[JSON Web Keys
  /// (JWK)\](https://tools.ietf.org/html/rfc7517).
  core.List<GoogleCloudIdentitytoolkitV1OpenIdConnectKey>? keys;

  GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse({
    this.keys,
  });

  GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse.fromJson(
      core.Map _json)
      : this(
          keys: _json.containsKey('keys')
              ? (_json['keys'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitV1OpenIdConnectKey.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keys != null) 'keys': keys!,
      };
}

/// Config of an identity provider.
class GoogleCloudIdentitytoolkitV1IdpConfig {
  /// OAuth2 client ID.
  core.String? clientId;

  /// True if allows the user to sign in with the provider.
  core.bool? enabled;

  /// Percent of users who will be prompted/redirected federated login for this
  /// IdP
  core.int? experimentPercent;

  /// Name of the identity provider.
  /// Possible string values are:
  /// - "PROVIDER_UNSPECIFIED"
  /// - "MSLIVE" : Microsoft Live as identity provider.
  /// - "GOOGLE" : Google as identity provider.
  /// - "FACEBOOK" : Facebook as identity provider.
  /// - "PAYPAL" : PayPal as identity provider.
  /// - "TWITTER" : Twitter as identity provider.
  /// - "YAHOO" : Yahoo as identity provider.
  /// - "AOL" : AOL as identity provider.
  /// - "GITHUB" : GitHub as identity provider.
  /// - "GOOGLE_PLAY_GAMES" : Google Play Games as identity provider.
  /// - "LINKEDIN" : LinkedIn as identity provider.
  /// - "IOS_GAME_CENTER" : iOS Game Center as identity provider.
  core.String? provider;

  /// OAuth2 client secret.
  core.String? secret;

  /// Whitelisted client IDs for audience check.
  core.List<core.String>? whitelistedAudiences;

  GoogleCloudIdentitytoolkitV1IdpConfig({
    this.clientId,
    this.enabled,
    this.experimentPercent,
    this.provider,
    this.secret,
    this.whitelistedAudiences,
  });

  GoogleCloudIdentitytoolkitV1IdpConfig.fromJson(core.Map _json)
      : this(
          clientId: _json.containsKey('clientId')
              ? _json['clientId'] as core.String
              : null,
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
          experimentPercent: _json.containsKey('experimentPercent')
              ? _json['experimentPercent'] as core.int
              : null,
          provider: _json.containsKey('provider')
              ? _json['provider'] as core.String
              : null,
          secret: _json.containsKey('secret')
              ? _json['secret'] as core.String
              : null,
          whitelistedAudiences: _json.containsKey('whitelistedAudiences')
              ? (_json['whitelistedAudiences'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientId != null) 'clientId': clientId!,
        if (enabled != null) 'enabled': enabled!,
        if (experimentPercent != null) 'experimentPercent': experimentPercent!,
        if (provider != null) 'provider': provider!,
        if (secret != null) 'secret': secret!,
        if (whitelistedAudiences != null)
          'whitelistedAudiences': whitelistedAudiences!,
      };
}

/// Request message for IssueSamlResponse.
class GoogleCloudIdentitytoolkitV1IssueSamlResponseRequest {
  /// The Identity Platform ID token.
  ///
  /// It will be verified and then converted to a new SAMLResponse.
  core.String? idToken;

  /// Relying Party identifier, which is the audience of issued SAMLResponse.
  core.String? rpId;

  /// SAML app entity id specified in Google Admin Console for each app.
  ///
  /// If developers want to redirect to a third-party app rather than a G Suite
  /// app, they'll probably they need this. When it's used, we'll return a
  /// RelayState. This includes a SAMLRequest, which can be used to trigger a
  /// SP-initiated SAML flow to redirect to the real app.
  core.String? samlAppEntityId;

  GoogleCloudIdentitytoolkitV1IssueSamlResponseRequest({
    this.idToken,
    this.rpId,
    this.samlAppEntityId,
  });

  GoogleCloudIdentitytoolkitV1IssueSamlResponseRequest.fromJson(core.Map _json)
      : this(
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.String
              : null,
          rpId: _json.containsKey('rpId') ? _json['rpId'] as core.String : null,
          samlAppEntityId: _json.containsKey('samlAppEntityId')
              ? _json['samlAppEntityId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (idToken != null) 'idToken': idToken!,
        if (rpId != null) 'rpId': rpId!,
        if (samlAppEntityId != null) 'samlAppEntityId': samlAppEntityId!,
      };
}

/// Response for IssueSamlResponse request.
class GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse {
  /// The ACS endpoint which consumes the returned SAMLResponse.
  core.String? acsEndpoint;

  /// Email of the user.
  core.String? email;

  /// First name of the user.
  core.String? firstName;

  /// Whether the logged in user was created by this request.
  core.bool? isNewUser;

  /// Last name of the user.
  core.String? lastName;

  /// Generated RelayState.
  core.String? relayState;

  /// Signed SAMLResponse created for the Relying Party.
  core.String? samlResponse;

  GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse({
    this.acsEndpoint,
    this.email,
    this.firstName,
    this.isNewUser,
    this.lastName,
    this.relayState,
    this.samlResponse,
  });

  GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse.fromJson(core.Map _json)
      : this(
          acsEndpoint: _json.containsKey('acsEndpoint')
              ? _json['acsEndpoint'] as core.String
              : null,
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          firstName: _json.containsKey('firstName')
              ? _json['firstName'] as core.String
              : null,
          isNewUser: _json.containsKey('isNewUser')
              ? _json['isNewUser'] as core.bool
              : null,
          lastName: _json.containsKey('lastName')
              ? _json['lastName'] as core.String
              : null,
          relayState: _json.containsKey('relayState')
              ? _json['relayState'] as core.String
              : null,
          samlResponse: _json.containsKey('samlResponse')
              ? _json['samlResponse'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acsEndpoint != null) 'acsEndpoint': acsEndpoint!,
        if (email != null) 'email': email!,
        if (firstName != null) 'firstName': firstName!,
        if (isNewUser != null) 'isNewUser': isNewUser!,
        if (lastName != null) 'lastName': lastName!,
        if (relayState != null) 'relayState': relayState!,
        if (samlResponse != null) 'samlResponse': samlResponse!,
      };
}

/// Information on which multi-factor authentication (MFA) providers are enabled
/// for an account.
class GoogleCloudIdentitytoolkitV1MfaEnrollment {
  /// Display name for this mfa option e.g. "corp cell phone".
  core.String? displayName;

  /// Timestamp when the account enrolled this second factor.
  core.String? enrolledAt;

  /// ID of this MFA option.
  core.String? mfaEnrollmentId;

  /// Normally this will show the phone number associated with this enrollment.
  ///
  /// In some situations, such as after a first factor sign in, it will only
  /// show the obfuscated version of the associated phone number.
  core.String? phoneInfo;

  /// Unobfuscated phone_info.
  ///
  /// Output only.
  core.String? unobfuscatedPhoneInfo;

  GoogleCloudIdentitytoolkitV1MfaEnrollment({
    this.displayName,
    this.enrolledAt,
    this.mfaEnrollmentId,
    this.phoneInfo,
    this.unobfuscatedPhoneInfo,
  });

  GoogleCloudIdentitytoolkitV1MfaEnrollment.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          enrolledAt: _json.containsKey('enrolledAt')
              ? _json['enrolledAt'] as core.String
              : null,
          mfaEnrollmentId: _json.containsKey('mfaEnrollmentId')
              ? _json['mfaEnrollmentId'] as core.String
              : null,
          phoneInfo: _json.containsKey('phoneInfo')
              ? _json['phoneInfo'] as core.String
              : null,
          unobfuscatedPhoneInfo: _json.containsKey('unobfuscatedPhoneInfo')
              ? _json['unobfuscatedPhoneInfo'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (enrolledAt != null) 'enrolledAt': enrolledAt!,
        if (mfaEnrollmentId != null) 'mfaEnrollmentId': mfaEnrollmentId!,
        if (phoneInfo != null) 'phoneInfo': phoneInfo!,
        if (unobfuscatedPhoneInfo != null)
          'unobfuscatedPhoneInfo': unobfuscatedPhoneInfo!,
      };
}

class GoogleCloudIdentitytoolkitV1MfaFactor {
  /// Display name for this mfa option e.g. "corp cell phone".
  core.String? displayName;

  /// Phone number to receive OTP for MFA.
  core.String? phoneInfo;

  GoogleCloudIdentitytoolkitV1MfaFactor({
    this.displayName,
    this.phoneInfo,
  });

  GoogleCloudIdentitytoolkitV1MfaFactor.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          phoneInfo: _json.containsKey('phoneInfo')
              ? _json['phoneInfo'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (phoneInfo != null) 'phoneInfo': phoneInfo!,
      };
}

/// Multi-factor authentication related information.
class GoogleCloudIdentitytoolkitV1MfaInfo {
  /// The second factors the user has enrolled.
  core.List<GoogleCloudIdentitytoolkitV1MfaEnrollment>? enrollments;

  GoogleCloudIdentitytoolkitV1MfaInfo({
    this.enrollments,
  });

  GoogleCloudIdentitytoolkitV1MfaInfo.fromJson(core.Map _json)
      : this(
          enrollments: _json.containsKey('enrollments')
              ? (_json['enrollments'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitV1MfaEnrollment.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enrollments != null) 'enrollments': enrollments!,
      };
}

/// Represents a public key of the session cookie signer, formatted as a \[JSON
/// Web Key (JWK)\](https://tools.ietf.org/html/rfc7517).
class GoogleCloudIdentitytoolkitV1OpenIdConnectKey {
  /// Signature algorithm.
  core.String? alg;

  /// Exponent for the RSA public key, it is represented as the base64url
  /// encoding of the value's big endian representation.
  core.String? e;

  /// Unique string to identify this key.
  core.String? kid;

  /// Key type.
  core.String? kty;

  /// Modulus for the RSA public key, it is represented as the base64url
  /// encoding of the value's big endian representation.
  core.String? n;

  /// Key use.
  core.String? use;

  GoogleCloudIdentitytoolkitV1OpenIdConnectKey({
    this.alg,
    this.e,
    this.kid,
    this.kty,
    this.n,
    this.use,
  });

  GoogleCloudIdentitytoolkitV1OpenIdConnectKey.fromJson(core.Map _json)
      : this(
          alg: _json.containsKey('alg') ? _json['alg'] as core.String : null,
          e: _json.containsKey('e') ? _json['e'] as core.String : null,
          kid: _json.containsKey('kid') ? _json['kid'] as core.String : null,
          kty: _json.containsKey('kty') ? _json['kty'] as core.String : null,
          n: _json.containsKey('n') ? _json['n'] as core.String : null,
          use: _json.containsKey('use') ? _json['use'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alg != null) 'alg': alg!,
        if (e != null) 'e': e!,
        if (kid != null) 'kid': kid!,
        if (kty != null) 'kty': kty!,
        if (n != null) 'n': n!,
        if (use != null) 'use': use!,
      };
}

/// Information about the user as provided by various Identity Providers.
class GoogleCloudIdentitytoolkitV1ProviderUserInfo {
  /// The user's display name at the Identity Provider.
  core.String? displayName;

  /// The user's email address at the Identity Provider.
  core.String? email;

  /// The user's identifier at the Identity Provider.
  core.String? federatedId;

  /// The user's phone number at the Identity Provider.
  core.String? phoneNumber;

  /// The user's profile photo URL at the Identity Provider.
  core.String? photoUrl;

  /// The ID of the Identity Provider.
  core.String? providerId;

  /// The user's raw identifier directly returned from Identity Provider.
  core.String? rawId;

  /// The user's screen_name at Twitter or login name at GitHub.
  core.String? screenName;

  GoogleCloudIdentitytoolkitV1ProviderUserInfo({
    this.displayName,
    this.email,
    this.federatedId,
    this.phoneNumber,
    this.photoUrl,
    this.providerId,
    this.rawId,
    this.screenName,
  });

  GoogleCloudIdentitytoolkitV1ProviderUserInfo.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          federatedId: _json.containsKey('federatedId')
              ? _json['federatedId'] as core.String
              : null,
          phoneNumber: _json.containsKey('phoneNumber')
              ? _json['phoneNumber'] as core.String
              : null,
          photoUrl: _json.containsKey('photoUrl')
              ? _json['photoUrl'] as core.String
              : null,
          providerId: _json.containsKey('providerId')
              ? _json['providerId'] as core.String
              : null,
          rawId:
              _json.containsKey('rawId') ? _json['rawId'] as core.String : null,
          screenName: _json.containsKey('screenName')
              ? _json['screenName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (email != null) 'email': email!,
        if (federatedId != null) 'federatedId': federatedId!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (photoUrl != null) 'photoUrl': photoUrl!,
        if (providerId != null) 'providerId': providerId!,
        if (rawId != null) 'rawId': rawId!,
        if (screenName != null) 'screenName': screenName!,
      };
}

/// Request message for QueryUserInfo.
class GoogleCloudIdentitytoolkitV1QueryUserInfoRequest {
  /// Query conditions used to filter results.
  ///
  /// If more than one is passed, only the first SqlExpression is evaluated.
  core.List<GoogleCloudIdentitytoolkitV1SqlExpression>? expression;

  /// The maximum number of accounts to return with an upper limit of __500__.
  ///
  /// Defaults to _500_. Only valid when `return_user_info` is set to `true`.
  core.String? limit;

  /// The number of accounts to skip from the beginning of matching records.
  ///
  /// Only valid when `return_user_info` is set to `true`.
  core.String? offset;

  /// The order for sorting query result.
  ///
  /// Defaults to __ascending__ order. Only valid when `return_user_info` is set
  /// to `true`.
  /// Possible string values are:
  /// - "ORDER_UNSPECIFIED" : Order is not specified.
  /// - "ASC" : Sort on ascending order.
  /// - "DESC" : Sort on descending order.
  core.String? order;

  /// If `true`, this request will return the accounts matching the query.
  ///
  /// If `false`, only the __count__ of accounts matching the query will be
  /// returned. Defaults to `true`.
  core.bool? returnUserInfo;

  /// The field to use for sorting user accounts.
  ///
  /// Defaults to `USER_ID`. Note: when `phone_number` is specified in
  /// `expression`, the result ignores the sorting. Only valid when
  /// `return_user_info` is set to `true`.
  /// Possible string values are:
  /// - "SORT_BY_FIELD_UNSPECIFIED" : Sort field is not specified.
  /// - "USER_ID" : Sort result by userId.
  /// - "NAME" : Sort result by name.
  /// - "CREATED_AT" : Sort result by createdAt.
  /// - "LAST_LOGIN_AT" : Sort result by lastLoginAt.
  /// - "USER_EMAIL" : Sort result by userEmail.
  core.String? sortBy;

  /// The ID of the tenant to which the result is scoped.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV1QueryUserInfoRequest({
    this.expression,
    this.limit,
    this.offset,
    this.order,
    this.returnUserInfo,
    this.sortBy,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV1QueryUserInfoRequest.fromJson(core.Map _json)
      : this(
          expression: _json.containsKey('expression')
              ? (_json['expression'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitV1SqlExpression.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          limit:
              _json.containsKey('limit') ? _json['limit'] as core.String : null,
          offset: _json.containsKey('offset')
              ? _json['offset'] as core.String
              : null,
          order:
              _json.containsKey('order') ? _json['order'] as core.String : null,
          returnUserInfo: _json.containsKey('returnUserInfo')
              ? _json['returnUserInfo'] as core.bool
              : null,
          sortBy: _json.containsKey('sortBy')
              ? _json['sortBy'] as core.String
              : null,
          tenantId: _json.containsKey('tenantId')
              ? _json['tenantId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expression != null) 'expression': expression!,
        if (limit != null) 'limit': limit!,
        if (offset != null) 'offset': offset!,
        if (order != null) 'order': order!,
        if (returnUserInfo != null) 'returnUserInfo': returnUserInfo!,
        if (sortBy != null) 'sortBy': sortBy!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// Response message for QueryUserInfo.
class GoogleCloudIdentitytoolkitV1QueryUserInfoResponse {
  /// If `return_user_info` in the request is true, this is the number of
  /// returned accounts in this message.
  ///
  /// Otherwise, this is the total number of accounts matching the query.
  core.String? recordsCount;

  /// If `return_user_info` in the request is true, this is the accounts
  /// matching the query.
  core.List<GoogleCloudIdentitytoolkitV1UserInfo>? userInfo;

  GoogleCloudIdentitytoolkitV1QueryUserInfoResponse({
    this.recordsCount,
    this.userInfo,
  });

  GoogleCloudIdentitytoolkitV1QueryUserInfoResponse.fromJson(core.Map _json)
      : this(
          recordsCount: _json.containsKey('recordsCount')
              ? _json['recordsCount'] as core.String
              : null,
          userInfo: _json.containsKey('userInfo')
              ? (_json['userInfo'] as core.List)
                  .map((value) => GoogleCloudIdentitytoolkitV1UserInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (recordsCount != null) 'recordsCount': recordsCount!,
        if (userInfo != null) 'userInfo': userInfo!,
      };
}

/// Request message for ResetPassword.
class GoogleCloudIdentitytoolkitV1ResetPasswordRequest {
  /// The email of the account to be modified.
  ///
  /// Specify this and the old password in order to change an account's password
  /// without using an out-of-band code.
  core.String? email;

  /// The new password to be set for this account.
  ///
  /// Specifying this field will result in a change to the account and consume
  /// the out-of-band code if one was specified and it was of type
  /// PASSWORD_RESET.
  core.String? newPassword;

  /// The current password of the account to be modified.
  ///
  /// Specify this and email to change an account's password without using an
  /// out-of-band code.
  core.String? oldPassword;

  /// An out-of-band (OOB) code generated by GetOobCode request.
  ///
  /// Specify only this parameter (or only this parameter and a tenant ID) to
  /// get the out-of-band code's type in the response without mutating the
  /// account's state. Only a PASSWORD_RESET out-of-band code can be consumed
  /// via this method.
  core.String? oobCode;

  /// The tenant ID of the Identity Platform tenant the account belongs to.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV1ResetPasswordRequest({
    this.email,
    this.newPassword,
    this.oldPassword,
    this.oobCode,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV1ResetPasswordRequest.fromJson(core.Map _json)
      : this(
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          newPassword: _json.containsKey('newPassword')
              ? _json['newPassword'] as core.String
              : null,
          oldPassword: _json.containsKey('oldPassword')
              ? _json['oldPassword'] as core.String
              : null,
          oobCode: _json.containsKey('oobCode')
              ? _json['oobCode'] as core.String
              : null,
          tenantId: _json.containsKey('tenantId')
              ? _json['tenantId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (newPassword != null) 'newPassword': newPassword!,
        if (oldPassword != null) 'oldPassword': oldPassword!,
        if (oobCode != null) 'oobCode': oobCode!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// Response message for ResetPassword.
class GoogleCloudIdentitytoolkitV1ResetPasswordResponse {
  /// The email associated with the out-of-band code that was used.
  core.String? email;
  core.String? kind;
  GoogleCloudIdentitytoolkitV1MfaEnrollment? mfaInfo;
  core.String? newEmail;

  ///
  /// Possible string values are:
  /// - "OOB_REQ_TYPE_UNSPECIFIED" : Oob code type is not specified.
  /// - "PASSWORD_RESET" : reset password
  /// - "OLD_EMAIL_AGREE"
  /// - "NEW_EMAIL_ACCEPT"
  /// - "VERIFY_EMAIL" : verify the account's email address by sending an email
  /// - "RECOVER_EMAIL"
  /// - "EMAIL_SIGNIN" : sign in with email only
  /// - "VERIFY_AND_CHANGE_EMAIL" : This flow sends an email to the specified
  /// new email, and when applied by clicking the link in the email changes the
  /// account's email to the new email. Used when the account must have verified
  /// email at all times, such as MFA accounts.
  /// - "REVERT_SECOND_FACTOR_ADDITION"
  core.String? requestType;

  GoogleCloudIdentitytoolkitV1ResetPasswordResponse({
    this.email,
    this.kind,
    this.mfaInfo,
    this.newEmail,
    this.requestType,
  });

  GoogleCloudIdentitytoolkitV1ResetPasswordResponse.fromJson(core.Map _json)
      : this(
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          mfaInfo: _json.containsKey('mfaInfo')
              ? GoogleCloudIdentitytoolkitV1MfaEnrollment.fromJson(
                  _json['mfaInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          newEmail: _json.containsKey('newEmail')
              ? _json['newEmail'] as core.String
              : null,
          requestType: _json.containsKey('requestType')
              ? _json['requestType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (kind != null) 'kind': kind!,
        if (mfaInfo != null) 'mfaInfo': mfaInfo!,
        if (newEmail != null) 'newEmail': newEmail!,
        if (requestType != null) 'requestType': requestType!,
      };
}

/// Request message for SendVerificationCode.
///
/// At least one of (`ios_receipt` and `ios_secret`), `recaptcha_token`, or
/// `safety_net_token` must be specified to verify the verification code is
/// being sent on behalf of a real app and not an emulator.
class GoogleCloudIdentitytoolkitV1SendVerificationCodeRequest {
  /// Android only.
  ///
  /// Used by Google Play Services to identify the app for auto-retrieval.
  GoogleCloudIdentitytoolkitV1AutoRetrievalInfo? autoRetrievalInfo;

  /// Receipt of successful iOS app token validation.
  ///
  /// At least one of (`ios_receipt` and `ios_secret`), `recaptcha_token`, or
  /// `safety_net_token` must be specified to verify the verification code is
  /// being sent on behalf of a real app and not an emulator. This should come
  /// from the response of verifyIosClient. If present, the caller should also
  /// provide the `ios_secret`, as well as a bundle ID in the
  /// `x-ios-bundle-identifier` header, which must match the bundle ID from the
  /// verifyIosClient request.
  core.String? iosReceipt;

  /// Secret delivered to iOS app as a push notification.
  ///
  /// Should be passed with an `ios_receipt` as well as the
  /// `x-ios-bundle-identifier` header.
  core.String? iosSecret;

  /// The phone number to send the verification code to in E.164 format.
  core.String? phoneNumber;

  /// Recaptcha token for app verification.
  ///
  /// At least one of (`ios_receipt` and `ios_secret`), `recaptcha_token`, or
  /// `safety_net_token` must be specified to verify the verification code is
  /// being sent on behalf of a real app and not an emulator. The recaptcha
  /// should be generated by calling getRecaptchaParams and the recaptcha token
  /// will be generated on user completion of the recaptcha challenge.
  core.String? recaptchaToken;

  /// Android only.
  ///
  /// Used to assert application identity in place of a recaptcha token. At
  /// least one of (`ios_receipt` and `ios_secret`), `recaptcha_token`, or
  /// `safety_net_token` must be specified to verify the verification code is
  /// being sent on behalf of a real app and not an emulator. A SafetyNet Token
  /// can be generated via the
  /// [SafetyNet Android Attestation API](https://developer.android.com/training/safetynet/attestation.html),
  /// with the Base64 encoding of the `phone_number` field as the nonce.
  core.String? safetyNetToken;

  /// Tenant ID of the Identity Platform tenant the user is signing in to.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV1SendVerificationCodeRequest({
    this.autoRetrievalInfo,
    this.iosReceipt,
    this.iosSecret,
    this.phoneNumber,
    this.recaptchaToken,
    this.safetyNetToken,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV1SendVerificationCodeRequest.fromJson(
      core.Map _json)
      : this(
          autoRetrievalInfo: _json.containsKey('autoRetrievalInfo')
              ? GoogleCloudIdentitytoolkitV1AutoRetrievalInfo.fromJson(
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
          tenantId: _json.containsKey('tenantId')
              ? _json['tenantId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoRetrievalInfo != null) 'autoRetrievalInfo': autoRetrievalInfo!,
        if (iosReceipt != null) 'iosReceipt': iosReceipt!,
        if (iosSecret != null) 'iosSecret': iosSecret!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (recaptchaToken != null) 'recaptchaToken': recaptchaToken!,
        if (safetyNetToken != null) 'safetyNetToken': safetyNetToken!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// Response message for SendVerificationCode.
class GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse {
  /// Encrypted session information.
  ///
  /// This can be used in signInWithPhoneNumber to authenticate the phone
  /// number.
  core.String? sessionInfo;

  GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse({
    this.sessionInfo,
  });

  GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse.fromJson(
      core.Map _json)
      : this(
          sessionInfo: _json.containsKey('sessionInfo')
              ? _json['sessionInfo'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sessionInfo != null) 'sessionInfo': sessionInfo!,
      };
}

/// Request message for SetAccountInfo.
class GoogleCloudIdentitytoolkitV1SetAccountInfoRequest {
  core.String? captchaChallenge;

  /// The response from reCaptcha challenge.
  ///
  /// This is required when the system detects possible abuse activities.
  core.String? captchaResponse;

  /// The timestamp in milliseconds when the account was created.
  core.String? createdAt;

  /// JSON formatted custom attributes to be stored in the Identity Platform ID
  /// token.
  ///
  /// Specifying this field requires a Google OAuth 2.0 credential with proper
  /// permissions
  /// (https://cloud.google.com/identity-platform/docs/access-control).
  core.String? customAttributes;
  core.String? delegatedProjectNumber;

  /// The account's attributes to be deleted.
  core.List<core.String>? deleteAttribute;

  /// The Identity Providers to unlink from the user's account.
  core.List<core.String>? deleteProvider;

  /// If true, marks the account as disabled, meaning the user will no longer be
  /// able to sign-in.
  core.bool? disableUser;

  /// The user's new display name to be updated in the account's attributes.
  ///
  /// The length of the display name must be less than or equal to 256
  /// characters.
  core.String? displayName;

  /// The user's new email to be updated in the account's attributes.
  ///
  /// The length of email should be less than 256 characters and in the format
  /// of `name@domain.tld`. The email should also match the
  /// [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec production.
  core.String? email;

  /// Whether the user's email has been verified.
  ///
  /// Specifying this field requires a Google OAuth 2.0 credential with proper
  /// permissions
  /// (https://cloud.google.com/identity-platform/docs/access-control).
  core.bool? emailVerified;

  /// A valid Identity Platform ID token.
  ///
  /// Required when attempting to change user-related information.
  core.String? idToken;
  core.String? instanceId;

  /// The timestamp in milliseconds when the account last logged in.
  core.String? lastLoginAt;

  /// The provider to be linked to the user's account.
  ///
  /// Specifying this field requires a Google OAuth 2.0 credential with proper
  /// permissions
  /// (https://cloud.google.com/identity-platform/docs/access-control).
  GoogleCloudIdentitytoolkitV1ProviderUserInfo? linkProviderUserInfo;

  /// The ID of the user.
  ///
  /// Specifying this field requires a Google OAuth 2.0 credential with proper
  /// permissions
  /// (https://cloud.google.com/identity-platform/docs/access-control). For
  /// requests from end-users, an ID token should be passed instead.
  core.String? localId;

  /// The multi-factor authentication related information to be set on the
  /// user's account.
  ///
  /// This will overwrite any previous multi-factor related information on the
  /// account. Specifying this field requires a Google OAuth 2.0 credential with
  /// proper permissions
  /// (https://cloud.google.com/identity-platform/docs/access-control).
  GoogleCloudIdentitytoolkitV1MfaInfo? mfa;

  /// The out-of-band code to be applied on the user's account.
  ///
  /// The following out-of-band code types are supported: * VERIFY_EMAIL *
  /// RECOVER_EMAIL * REVERT_SECOND_FACTOR_ADDITION * VERIFY_AND_CHANGE_EMAIL
  core.String? oobCode;

  /// The user's new password to be updated in the account's attributes.
  ///
  /// The password must be at least 6 characters long.
  core.String? password;

  /// The phone number to be updated in the account's attributes.
  core.String? phoneNumber;

  /// The user's new photo URL for the account's profile photo to be updated in
  /// the account's attributes.
  ///
  /// The length of the URL must be less than or equal to 2048 characters.
  core.String? photoUrl;

  /// The Identity Providers that the account should be associated with.
  core.List<core.String>? provider;

  /// Whether or not to return an ID and refresh token.
  ///
  /// Should always be true.
  core.bool? returnSecureToken;

  /// The project ID for the project that the account belongs to.
  ///
  /// Specifying this field requires Google OAuth 2.0 credential with proper
  /// permissions
  /// (https://cloud.google.com/identity-platform/docs/access-control). Requests
  /// from end users should pass an Identity Platform ID token instead.
  core.String? targetProjectId;

  /// The tenant ID of the Identity Platform tenant that the account belongs to.
  ///
  /// Requests from end users should pass an Identity Platform ID token rather
  /// than setting this field.
  core.String? tenantId;

  /// Whether the account should be restricted to only using federated login.
  core.bool? upgradeToFederatedLogin;

  /// Specifies the minimum timestamp in seconds for an Identity Platform ID
  /// token to be considered valid.
  core.String? validSince;

  GoogleCloudIdentitytoolkitV1SetAccountInfoRequest({
    this.captchaChallenge,
    this.captchaResponse,
    this.createdAt,
    this.customAttributes,
    this.delegatedProjectNumber,
    this.deleteAttribute,
    this.deleteProvider,
    this.disableUser,
    this.displayName,
    this.email,
    this.emailVerified,
    this.idToken,
    this.instanceId,
    this.lastLoginAt,
    this.linkProviderUserInfo,
    this.localId,
    this.mfa,
    this.oobCode,
    this.password,
    this.phoneNumber,
    this.photoUrl,
    this.provider,
    this.returnSecureToken,
    this.targetProjectId,
    this.tenantId,
    this.upgradeToFederatedLogin,
    this.validSince,
  });

  GoogleCloudIdentitytoolkitV1SetAccountInfoRequest.fromJson(core.Map _json)
      : this(
          captchaChallenge: _json.containsKey('captchaChallenge')
              ? _json['captchaChallenge'] as core.String
              : null,
          captchaResponse: _json.containsKey('captchaResponse')
              ? _json['captchaResponse'] as core.String
              : null,
          createdAt: _json.containsKey('createdAt')
              ? _json['createdAt'] as core.String
              : null,
          customAttributes: _json.containsKey('customAttributes')
              ? _json['customAttributes'] as core.String
              : null,
          delegatedProjectNumber: _json.containsKey('delegatedProjectNumber')
              ? _json['delegatedProjectNumber'] as core.String
              : null,
          deleteAttribute: _json.containsKey('deleteAttribute')
              ? (_json['deleteAttribute'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          deleteProvider: _json.containsKey('deleteProvider')
              ? (_json['deleteProvider'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          disableUser: _json.containsKey('disableUser')
              ? _json['disableUser'] as core.bool
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          emailVerified: _json.containsKey('emailVerified')
              ? _json['emailVerified'] as core.bool
              : null,
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.String
              : null,
          instanceId: _json.containsKey('instanceId')
              ? _json['instanceId'] as core.String
              : null,
          lastLoginAt: _json.containsKey('lastLoginAt')
              ? _json['lastLoginAt'] as core.String
              : null,
          linkProviderUserInfo: _json.containsKey('linkProviderUserInfo')
              ? GoogleCloudIdentitytoolkitV1ProviderUserInfo.fromJson(
                  _json['linkProviderUserInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          localId: _json.containsKey('localId')
              ? _json['localId'] as core.String
              : null,
          mfa: _json.containsKey('mfa')
              ? GoogleCloudIdentitytoolkitV1MfaInfo.fromJson(
                  _json['mfa'] as core.Map<core.String, core.dynamic>)
              : null,
          oobCode: _json.containsKey('oobCode')
              ? _json['oobCode'] as core.String
              : null,
          password: _json.containsKey('password')
              ? _json['password'] as core.String
              : null,
          phoneNumber: _json.containsKey('phoneNumber')
              ? _json['phoneNumber'] as core.String
              : null,
          photoUrl: _json.containsKey('photoUrl')
              ? _json['photoUrl'] as core.String
              : null,
          provider: _json.containsKey('provider')
              ? (_json['provider'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          returnSecureToken: _json.containsKey('returnSecureToken')
              ? _json['returnSecureToken'] as core.bool
              : null,
          targetProjectId: _json.containsKey('targetProjectId')
              ? _json['targetProjectId'] as core.String
              : null,
          tenantId: _json.containsKey('tenantId')
              ? _json['tenantId'] as core.String
              : null,
          upgradeToFederatedLogin: _json.containsKey('upgradeToFederatedLogin')
              ? _json['upgradeToFederatedLogin'] as core.bool
              : null,
          validSince: _json.containsKey('validSince')
              ? _json['validSince'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (captchaChallenge != null) 'captchaChallenge': captchaChallenge!,
        if (captchaResponse != null) 'captchaResponse': captchaResponse!,
        if (createdAt != null) 'createdAt': createdAt!,
        if (customAttributes != null) 'customAttributes': customAttributes!,
        if (delegatedProjectNumber != null)
          'delegatedProjectNumber': delegatedProjectNumber!,
        if (deleteAttribute != null) 'deleteAttribute': deleteAttribute!,
        if (deleteProvider != null) 'deleteProvider': deleteProvider!,
        if (disableUser != null) 'disableUser': disableUser!,
        if (displayName != null) 'displayName': displayName!,
        if (email != null) 'email': email!,
        if (emailVerified != null) 'emailVerified': emailVerified!,
        if (idToken != null) 'idToken': idToken!,
        if (instanceId != null) 'instanceId': instanceId!,
        if (lastLoginAt != null) 'lastLoginAt': lastLoginAt!,
        if (linkProviderUserInfo != null)
          'linkProviderUserInfo': linkProviderUserInfo!,
        if (localId != null) 'localId': localId!,
        if (mfa != null) 'mfa': mfa!,
        if (oobCode != null) 'oobCode': oobCode!,
        if (password != null) 'password': password!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (photoUrl != null) 'photoUrl': photoUrl!,
        if (provider != null) 'provider': provider!,
        if (returnSecureToken != null) 'returnSecureToken': returnSecureToken!,
        if (targetProjectId != null) 'targetProjectId': targetProjectId!,
        if (tenantId != null) 'tenantId': tenantId!,
        if (upgradeToFederatedLogin != null)
          'upgradeToFederatedLogin': upgradeToFederatedLogin!,
        if (validSince != null) 'validSince': validSince!,
      };
}

/// Response message for SetAccountInfo
class GoogleCloudIdentitytoolkitV1SetAccountInfoResponse {
  core.String? displayName;
  core.String? email;

  /// Whether the account's email has been verified.
  core.bool? emailVerified;

  /// The number of seconds until the Identity Platform ID token expires.
  core.String? expiresIn;

  /// An Identity Platform ID token for the account.
  ///
  /// This is used for legacy user sign up.
  core.String? idToken;
  core.String? kind;

  /// The ID of the authenticated user.
  core.String? localId;

  /// The new email that has been set on the user's account attributes.
  core.String? newEmail;
  core.String? passwordHash;
  core.String? photoUrl;

  /// The linked Identity Providers on the account.
  core.List<GoogleCloudIdentitytoolkitV1ProviderUserInfo>? providerUserInfo;

  /// A refresh token for the account.
  ///
  /// This is used for legacy user sign up.
  core.String? refreshToken;

  GoogleCloudIdentitytoolkitV1SetAccountInfoResponse({
    this.displayName,
    this.email,
    this.emailVerified,
    this.expiresIn,
    this.idToken,
    this.kind,
    this.localId,
    this.newEmail,
    this.passwordHash,
    this.photoUrl,
    this.providerUserInfo,
    this.refreshToken,
  });

  GoogleCloudIdentitytoolkitV1SetAccountInfoResponse.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          emailVerified: _json.containsKey('emailVerified')
              ? _json['emailVerified'] as core.bool
              : null,
          expiresIn: _json.containsKey('expiresIn')
              ? _json['expiresIn'] as core.String
              : null,
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          localId: _json.containsKey('localId')
              ? _json['localId'] as core.String
              : null,
          newEmail: _json.containsKey('newEmail')
              ? _json['newEmail'] as core.String
              : null,
          passwordHash: _json.containsKey('passwordHash')
              ? _json['passwordHash'] as core.String
              : null,
          photoUrl: _json.containsKey('photoUrl')
              ? _json['photoUrl'] as core.String
              : null,
          providerUserInfo: _json.containsKey('providerUserInfo')
              ? (_json['providerUserInfo'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitV1ProviderUserInfo.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          refreshToken: _json.containsKey('refreshToken')
              ? _json['refreshToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (email != null) 'email': email!,
        if (emailVerified != null) 'emailVerified': emailVerified!,
        if (expiresIn != null) 'expiresIn': expiresIn!,
        if (idToken != null) 'idToken': idToken!,
        if (kind != null) 'kind': kind!,
        if (localId != null) 'localId': localId!,
        if (newEmail != null) 'newEmail': newEmail!,
        if (passwordHash != null) 'passwordHash': passwordHash!,
        if (photoUrl != null) 'photoUrl': photoUrl!,
        if (providerUserInfo != null) 'providerUserInfo': providerUserInfo!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
      };
}

/// Request message for SignInWithCustomToken.
class GoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest {
  core.String? delegatedProjectNumber;
  core.String? instanceId;

  /// Should always be true.
  core.bool? returnSecureToken;

  /// The ID of the Identity Platform tenant the user is signing in to.
  ///
  /// If present, the ID should match the tenant_id in the token.
  core.String? tenantId;

  /// The custom Auth token asserted by the developer.
  ///
  /// The token should be a \[JSON Web Token
  /// (JWT)\](https://tools.ietf.org/html/rfc7519) that includes the claims
  /// listed in the
  /// [API reference](https://cloud.google.com/identity-platform/docs/reference/rest/client/)
  /// under the "Custom Token Claims" section.
  ///
  /// Required.
  core.String? token;

  GoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest({
    this.delegatedProjectNumber,
    this.instanceId,
    this.returnSecureToken,
    this.tenantId,
    this.token,
  });

  GoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest.fromJson(
      core.Map _json)
      : this(
          delegatedProjectNumber: _json.containsKey('delegatedProjectNumber')
              ? _json['delegatedProjectNumber'] as core.String
              : null,
          instanceId: _json.containsKey('instanceId')
              ? _json['instanceId'] as core.String
              : null,
          returnSecureToken: _json.containsKey('returnSecureToken')
              ? _json['returnSecureToken'] as core.bool
              : null,
          tenantId: _json.containsKey('tenantId')
              ? _json['tenantId'] as core.String
              : null,
          token:
              _json.containsKey('token') ? _json['token'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (delegatedProjectNumber != null)
          'delegatedProjectNumber': delegatedProjectNumber!,
        if (instanceId != null) 'instanceId': instanceId!,
        if (returnSecureToken != null) 'returnSecureToken': returnSecureToken!,
        if (tenantId != null) 'tenantId': tenantId!,
        if (token != null) 'token': token!,
      };
}

/// Response message for SignInWithCustomToken.
class GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse {
  /// The number of seconds until the ID token expires.
  core.String? expiresIn;

  /// An Identity Platform ID token for the authenticated user.
  core.String? idToken;

  /// Whether the authenticated user was created by this request.
  core.bool? isNewUser;
  core.String? kind;

  /// An Identity Platform refresh token for the authenticated user.
  core.String? refreshToken;

  GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse({
    this.expiresIn,
    this.idToken,
    this.isNewUser,
    this.kind,
    this.refreshToken,
  });

  GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse.fromJson(
      core.Map _json)
      : this(
          expiresIn: _json.containsKey('expiresIn')
              ? _json['expiresIn'] as core.String
              : null,
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.String
              : null,
          isNewUser: _json.containsKey('isNewUser')
              ? _json['isNewUser'] as core.bool
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          refreshToken: _json.containsKey('refreshToken')
              ? _json['refreshToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expiresIn != null) 'expiresIn': expiresIn!,
        if (idToken != null) 'idToken': idToken!,
        if (isNewUser != null) 'isNewUser': isNewUser!,
        if (kind != null) 'kind': kind!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
      };
}

/// Request message for SignInWithEmailLink
class GoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest {
  /// The email address the sign-in link was sent to.
  ///
  /// The length of email should be less than 256 characters and in the format
  /// of `name@domain.tld`. The email should also match the
  /// [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec production.
  ///
  /// Required.
  core.String? email;

  /// A valid ID token for an Identity Platform account.
  ///
  /// If passed, this request will link the email address to the user
  /// represented by this ID token and enable sign-in with email link on the
  /// account for the future.
  core.String? idToken;

  /// The out-of-band code from the email link.
  ///
  /// Required.
  core.String? oobCode;

  /// The ID of the Identity Platform tenant the user is signing in to.
  ///
  /// If not set, the user will sign in to the default Identity Platform
  /// project.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest({
    this.email,
    this.idToken,
    this.oobCode,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest.fromJson(
      core.Map _json)
      : this(
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.String
              : null,
          oobCode: _json.containsKey('oobCode')
              ? _json['oobCode'] as core.String
              : null,
          tenantId: _json.containsKey('tenantId')
              ? _json['tenantId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (idToken != null) 'idToken': idToken!,
        if (oobCode != null) 'oobCode': oobCode!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// Response message for SignInWithEmailLink.
class GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse {
  /// The email the user signed in with.
  ///
  /// Always present in the response.
  core.String? email;

  /// The number of seconds until the ID token expires.
  core.String? expiresIn;

  /// An Identity Platform ID token for the authenticated user.
  core.String? idToken;

  /// Whether the authenticated user was created by this request.
  core.bool? isNewUser;
  core.String? kind;

  /// The ID of the authenticated user.
  ///
  /// Always present in the response.
  core.String? localId;

  /// Info on which multi-factor authentication providers are enabled.
  ///
  /// Present if the user needs to complete the sign-in using multi-factor
  /// authentication.
  core.List<GoogleCloudIdentitytoolkitV1MfaEnrollment>? mfaInfo;

  /// An opaque string that functions as proof that the user has successfully
  /// passed the first factor check.
  core.String? mfaPendingCredential;

  /// Refresh token for the authenticated user.
  core.String? refreshToken;

  GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse({
    this.email,
    this.expiresIn,
    this.idToken,
    this.isNewUser,
    this.kind,
    this.localId,
    this.mfaInfo,
    this.mfaPendingCredential,
    this.refreshToken,
  });

  GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse.fromJson(
      core.Map _json)
      : this(
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          expiresIn: _json.containsKey('expiresIn')
              ? _json['expiresIn'] as core.String
              : null,
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.String
              : null,
          isNewUser: _json.containsKey('isNewUser')
              ? _json['isNewUser'] as core.bool
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          localId: _json.containsKey('localId')
              ? _json['localId'] as core.String
              : null,
          mfaInfo: _json.containsKey('mfaInfo')
              ? (_json['mfaInfo'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitV1MfaEnrollment.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          mfaPendingCredential: _json.containsKey('mfaPendingCredential')
              ? _json['mfaPendingCredential'] as core.String
              : null,
          refreshToken: _json.containsKey('refreshToken')
              ? _json['refreshToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (expiresIn != null) 'expiresIn': expiresIn!,
        if (idToken != null) 'idToken': idToken!,
        if (isNewUser != null) 'isNewUser': isNewUser!,
        if (kind != null) 'kind': kind!,
        if (localId != null) 'localId': localId!,
        if (mfaInfo != null) 'mfaInfo': mfaInfo!,
        if (mfaPendingCredential != null)
          'mfaPendingCredential': mfaPendingCredential!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
      };
}

/// Request message for SignInWithGameCenter
class GoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest {
  /// The user's Game Center display name.
  core.String? displayName;

  /// A valid ID token for an Identity Platform account.
  ///
  /// If present, this request will link the Game Center player ID to the
  /// account represented by this ID token.
  core.String? idToken;

  /// The user's Game Center player ID.
  ///
  /// Required.
  core.String? playerId;

  /// The URL to fetch the Apple public key in order to verify the given
  /// signature is signed by Apple.
  ///
  /// Required.
  core.String? publicKeyUrl;

  /// A random string used to generate the given signature.
  ///
  /// Required.
  core.String? salt;

  /// The verification signature data generated by Apple.
  ///
  /// Required.
  core.String? signature;

  /// The ID of the Identity Platform tenant the user is signing in to.
  core.String? tenantId;

  /// The time when the signature was created by Apple, in milliseconds since
  /// the epoch.
  ///
  /// Required.
  core.String? timestamp;

  GoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest({
    this.displayName,
    this.idToken,
    this.playerId,
    this.publicKeyUrl,
    this.salt,
    this.signature,
    this.tenantId,
    this.timestamp,
  });

  GoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest.fromJson(
      core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.String
              : null,
          playerId: _json.containsKey('playerId')
              ? _json['playerId'] as core.String
              : null,
          publicKeyUrl: _json.containsKey('publicKeyUrl')
              ? _json['publicKeyUrl'] as core.String
              : null,
          salt: _json.containsKey('salt') ? _json['salt'] as core.String : null,
          signature: _json.containsKey('signature')
              ? _json['signature'] as core.String
              : null,
          tenantId: _json.containsKey('tenantId')
              ? _json['tenantId'] as core.String
              : null,
          timestamp: _json.containsKey('timestamp')
              ? _json['timestamp'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (idToken != null) 'idToken': idToken!,
        if (playerId != null) 'playerId': playerId!,
        if (publicKeyUrl != null) 'publicKeyUrl': publicKeyUrl!,
        if (salt != null) 'salt': salt!,
        if (signature != null) 'signature': signature!,
        if (tenantId != null) 'tenantId': tenantId!,
        if (timestamp != null) 'timestamp': timestamp!,
      };
}

/// Response message for SignInWithGameCenter
class GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse {
  /// Display name of the authenticated user.
  core.String? displayName;

  /// The number of seconds until the ID token expires.
  core.String? expiresIn;

  /// An Identity Platform ID token for the authenticated user.
  core.String? idToken;

  /// Whether the logged in user was created by this request.
  core.bool? isNewUser;

  /// The ID of the authenticated user.
  ///
  /// Always present in the response.
  core.String? localId;

  /// The user's Game Center player ID.
  core.String? playerId;

  /// An Identity Platform refresh token for the authenticated user.
  core.String? refreshToken;

  GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse({
    this.displayName,
    this.expiresIn,
    this.idToken,
    this.isNewUser,
    this.localId,
    this.playerId,
    this.refreshToken,
  });

  GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse.fromJson(
      core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          expiresIn: _json.containsKey('expiresIn')
              ? _json['expiresIn'] as core.String
              : null,
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.String
              : null,
          isNewUser: _json.containsKey('isNewUser')
              ? _json['isNewUser'] as core.bool
              : null,
          localId: _json.containsKey('localId')
              ? _json['localId'] as core.String
              : null,
          playerId: _json.containsKey('playerId')
              ? _json['playerId'] as core.String
              : null,
          refreshToken: _json.containsKey('refreshToken')
              ? _json['refreshToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (expiresIn != null) 'expiresIn': expiresIn!,
        if (idToken != null) 'idToken': idToken!,
        if (isNewUser != null) 'isNewUser': isNewUser!,
        if (localId != null) 'localId': localId!,
        if (playerId != null) 'playerId': playerId!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
      };
}

/// Request message for SignInWithIdp.
class GoogleCloudIdentitytoolkitV1SignInWithIdpRequest {
  core.bool? autoCreate;
  core.String? delegatedProjectNumber;

  /// A valid Identity Platform ID token.
  ///
  /// If passed, the user's account at the IdP will be linked to the account
  /// represented by this ID token.
  core.String? idToken;
  core.String? pendingIdToken;

  /// An opaque string from a previous SignInWithIdp response.
  ///
  /// If set, it can be used to repeat the sign-in operation from the previous
  /// SignInWithIdp operation.
  core.String? pendingToken;

  /// If the user is signing in with an authorization response obtained via a
  /// previous CreateAuthUri authorization request, this is the body of the HTTP
  /// POST callback from the IdP, if present.
  ///
  /// Otherwise, if the user is signing in with a manually provided IdP
  /// credential, this should be a URL-encoded form that contains the credential
  /// (e.g. an ID token or access token for OAuth 2.0 IdPs) and the provider ID
  /// of the IdP that issued the credential. For example, if the user is signing
  /// in to the Google provider using a Google ID token, this should be set to
  /// `id_token=[GOOGLE_ID_TOKEN]&providerId=google.com`, where
  /// `[GOOGLE_ID_TOKEN]` should be replaced with the Google ID token. If the
  /// user is signing in to the Facebook provider using a Facebook
  /// authentication token, this should be set to
  /// `id_token=[FACEBOOK_AUTHENTICATION_TOKEN]&providerId=facebook.com&nonce=
  /// [NONCE]`, where `[FACEBOOK_AUTHENTICATION_TOKEN]` should be replaced with
  /// the Facebook authentication token. Nonce is required for validating the
  /// token. The request will fail if no nonce is provided. If the user is
  /// signing in to the Facebook provider using a Facebook access token, this
  /// should be set to
  /// `access_token=[FACEBOOK_ACCESS_TOKEN]&providerId=facebook.com`, where
  /// `[FACEBOOK_ACCESS_TOKEN]` should be replaced with the Facebook access
  /// token. If the user is signing in to the Twitter provider using a Twitter
  /// OAuth 1.0 credential, this should be set to
  /// `access_token=[TWITTER_ACCESS_TOKEN]&oauth_token_secret=[TWITTER_TOKEN_SECRET]&providerId=twitter.com`,
  /// where `[TWITTER_ACCESS_TOKEN]` and `[TWITTER_TOKEN_SECRET]` should be
  /// replaced with the Twitter OAuth access token and Twitter OAuth token
  /// secret respectively.
  core.String? postBody;

  /// The URL to which the IdP redirects the user back.
  ///
  /// This can be set to `http://localhost` if the user is signing in with a
  /// manually provided IdP credential.
  ///
  /// Required.
  core.String? requestUri;

  /// Whether or not to return OAuth credentials from the IdP on the following
  /// errors: `FEDERATED_USER_ID_ALREADY_LINKED` and `EMAIL_EXISTS`.
  core.bool? returnIdpCredential;

  /// Whether or not to return the OAuth refresh token from the IdP, if
  /// available.
  core.bool? returnRefreshToken;

  /// Should always be true.
  core.bool? returnSecureToken;

  /// The session ID returned from a previous CreateAuthUri call.
  ///
  /// This field is verified against that session ID to prevent session fixation
  /// attacks. Required if the user is signing in with an authorization response
  /// from a previous CreateAuthUri authorization request.
  core.String? sessionId;

  /// The ID of the Identity Platform tenant the user is signing in to.
  ///
  /// If not set, the user will sign in to the default Identity Platform
  /// project.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV1SignInWithIdpRequest({
    this.autoCreate,
    this.delegatedProjectNumber,
    this.idToken,
    this.pendingIdToken,
    this.pendingToken,
    this.postBody,
    this.requestUri,
    this.returnIdpCredential,
    this.returnRefreshToken,
    this.returnSecureToken,
    this.sessionId,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV1SignInWithIdpRequest.fromJson(core.Map _json)
      : this(
          autoCreate: _json.containsKey('autoCreate')
              ? _json['autoCreate'] as core.bool
              : null,
          delegatedProjectNumber: _json.containsKey('delegatedProjectNumber')
              ? _json['delegatedProjectNumber'] as core.String
              : null,
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.String
              : null,
          pendingIdToken: _json.containsKey('pendingIdToken')
              ? _json['pendingIdToken'] as core.String
              : null,
          pendingToken: _json.containsKey('pendingToken')
              ? _json['pendingToken'] as core.String
              : null,
          postBody: _json.containsKey('postBody')
              ? _json['postBody'] as core.String
              : null,
          requestUri: _json.containsKey('requestUri')
              ? _json['requestUri'] as core.String
              : null,
          returnIdpCredential: _json.containsKey('returnIdpCredential')
              ? _json['returnIdpCredential'] as core.bool
              : null,
          returnRefreshToken: _json.containsKey('returnRefreshToken')
              ? _json['returnRefreshToken'] as core.bool
              : null,
          returnSecureToken: _json.containsKey('returnSecureToken')
              ? _json['returnSecureToken'] as core.bool
              : null,
          sessionId: _json.containsKey('sessionId')
              ? _json['sessionId'] as core.String
              : null,
          tenantId: _json.containsKey('tenantId')
              ? _json['tenantId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoCreate != null) 'autoCreate': autoCreate!,
        if (delegatedProjectNumber != null)
          'delegatedProjectNumber': delegatedProjectNumber!,
        if (idToken != null) 'idToken': idToken!,
        if (pendingIdToken != null) 'pendingIdToken': pendingIdToken!,
        if (pendingToken != null) 'pendingToken': pendingToken!,
        if (postBody != null) 'postBody': postBody!,
        if (requestUri != null) 'requestUri': requestUri!,
        if (returnIdpCredential != null)
          'returnIdpCredential': returnIdpCredential!,
        if (returnRefreshToken != null)
          'returnRefreshToken': returnRefreshToken!,
        if (returnSecureToken != null) 'returnSecureToken': returnSecureToken!,
        if (sessionId != null) 'sessionId': sessionId!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// Response message for SignInWithIdp.
class GoogleCloudIdentitytoolkitV1SignInWithIdpResponse {
  /// The opaque string set in CreateAuthUri that is used to maintain contextual
  /// information between the authentication request and the callback from the
  /// IdP.
  core.String? context;

  /// The date of birth for the user's account at the IdP.
  core.String? dateOfBirth;

  /// The display name for the user's account at the IdP.
  core.String? displayName;

  /// The email address of the user's account at the IdP.
  core.String? email;

  /// Whether or not there is an existing Identity Platform user account with
  /// the same email address but linked to a different account at the same IdP.
  ///
  /// Only present if the "One account per email address" setting is enabled and
  /// the email address at the IdP is verified.
  core.bool? emailRecycled;

  /// Whether the user account's email address is verified.
  core.bool? emailVerified;

  /// The error message returned if `return_idp_credential` is set to `true` and
  /// either the `FEDERATED_USER_ID_ALREADY_LINKED` or `EMAIL_EXISTS` error is
  /// encountered.
  ///
  /// This field's value is either `FEDERATED_USER_ID_ALREADY_LINKED` or
  /// `EMAIL_EXISTS`.
  core.String? errorMessage;

  /// The number of seconds until the Identity Platform ID token expires.
  core.String? expiresIn;

  /// The user's account ID at the IdP.
  ///
  /// Always present in the response.
  core.String? federatedId;

  /// The first name for the user's account at the IdP.
  core.String? firstName;

  /// The full name for the user's account at the IdP.
  core.String? fullName;

  /// An Identity Platform ID token for the authenticated user.
  core.String? idToken;
  core.String? inputEmail;

  /// Whether or not a new Identity Platform account was created for the
  /// authenticated user.
  core.bool? isNewUser;
  core.String? kind;

  /// The language preference for the user's account at the IdP.
  core.String? language;

  /// The last name for the user's account at the IdP.
  core.String? lastName;

  /// The ID of the authenticated Identity Platform user.
  ///
  /// Always present in the response.
  core.String? localId;

  /// Info on which multi-factor authentication providers are enabled for the
  /// account.
  ///
  /// Present if the user needs to complete the sign-in using multi-factor
  /// authentication.
  core.List<GoogleCloudIdentitytoolkitV1MfaEnrollment>? mfaInfo;

  /// An opaque string that functions as proof that the user has successfully
  /// passed the first factor authentication.
  core.String? mfaPendingCredential;

  /// Whether or not there is an existing Identity Platform user account with
  /// the same email address as the current account signed in at the IdP, and
  /// the account's email addresss is not verified at the IdP.
  ///
  /// The user will need to sign in to the existing Identity Platform account
  /// and then link the current credential from the IdP to it. Only present if
  /// the "One account per email address" setting is enabled.
  core.bool? needConfirmation;
  core.bool? needEmail;

  /// The nickname for the user's account at the IdP.
  core.String? nickName;

  /// The OAuth access token from the IdP, if available.
  core.String? oauthAccessToken;

  /// The OAuth 2.0 authorization code, if available.
  ///
  /// Only present for the Google provider.
  core.String? oauthAuthorizationCode;

  /// The number of seconds until the OAuth access token from the IdP expires.
  core.int? oauthExpireIn;

  /// The OpenID Connect ID token from the IdP, if available.
  core.String? oauthIdToken;

  /// The OAuth 2.0 refresh token from the IdP, if available and
  /// `return_refresh_token` is set to `true`.
  core.String? oauthRefreshToken;

  /// The OAuth 1.0 token secret from the IdP, if available.
  ///
  /// Only present for the Twitter provider.
  core.String? oauthTokenSecret;

  /// The main (top-level) email address of the user's Identity Platform
  /// account, if different from the email address at the IdP.
  ///
  /// Only present if the "One account per email address" setting is enabled.
  core.String? originalEmail;

  /// An opaque string that can be used as a credential from the IdP the user is
  /// signing into.
  ///
  /// The pending token obtained here can be set in a future SignInWithIdp
  /// request to sign the same user in with the IdP again.
  core.String? pendingToken;

  /// The URL of the user's profile picture at the IdP.
  core.String? photoUrl;

  /// The provider ID of the IdP that the user is signing in to.
  ///
  /// Always present in the response.
  core.String? providerId;

  /// The stringified JSON response containing all the data corresponding to the
  /// user's account at the IdP.
  core.String? rawUserInfo;

  /// An Identity Platform refresh token for the authenticated user.
  core.String? refreshToken;

  /// The screen name for the user's account at the Twitter IdP or the login
  /// name for the user's account at the GitHub IdP.
  core.String? screenName;

  /// The value of the `tenant_id` field in the request.
  core.String? tenantId;

  /// The time zone for the user's account at the IdP.
  core.String? timeZone;

  /// A list of provider IDs that the user can sign in to in order to resolve a
  /// `need_confirmation` error.
  ///
  /// Only present if `need_confirmation` is set to `true`.
  core.List<core.String>? verifiedProvider;

  GoogleCloudIdentitytoolkitV1SignInWithIdpResponse({
    this.context,
    this.dateOfBirth,
    this.displayName,
    this.email,
    this.emailRecycled,
    this.emailVerified,
    this.errorMessage,
    this.expiresIn,
    this.federatedId,
    this.firstName,
    this.fullName,
    this.idToken,
    this.inputEmail,
    this.isNewUser,
    this.kind,
    this.language,
    this.lastName,
    this.localId,
    this.mfaInfo,
    this.mfaPendingCredential,
    this.needConfirmation,
    this.needEmail,
    this.nickName,
    this.oauthAccessToken,
    this.oauthAuthorizationCode,
    this.oauthExpireIn,
    this.oauthIdToken,
    this.oauthRefreshToken,
    this.oauthTokenSecret,
    this.originalEmail,
    this.pendingToken,
    this.photoUrl,
    this.providerId,
    this.rawUserInfo,
    this.refreshToken,
    this.screenName,
    this.tenantId,
    this.timeZone,
    this.verifiedProvider,
  });

  GoogleCloudIdentitytoolkitV1SignInWithIdpResponse.fromJson(core.Map _json)
      : this(
          context: _json.containsKey('context')
              ? _json['context'] as core.String
              : null,
          dateOfBirth: _json.containsKey('dateOfBirth')
              ? _json['dateOfBirth'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          emailRecycled: _json.containsKey('emailRecycled')
              ? _json['emailRecycled'] as core.bool
              : null,
          emailVerified: _json.containsKey('emailVerified')
              ? _json['emailVerified'] as core.bool
              : null,
          errorMessage: _json.containsKey('errorMessage')
              ? _json['errorMessage'] as core.String
              : null,
          expiresIn: _json.containsKey('expiresIn')
              ? _json['expiresIn'] as core.String
              : null,
          federatedId: _json.containsKey('federatedId')
              ? _json['federatedId'] as core.String
              : null,
          firstName: _json.containsKey('firstName')
              ? _json['firstName'] as core.String
              : null,
          fullName: _json.containsKey('fullName')
              ? _json['fullName'] as core.String
              : null,
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.String
              : null,
          inputEmail: _json.containsKey('inputEmail')
              ? _json['inputEmail'] as core.String
              : null,
          isNewUser: _json.containsKey('isNewUser')
              ? _json['isNewUser'] as core.bool
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          language: _json.containsKey('language')
              ? _json['language'] as core.String
              : null,
          lastName: _json.containsKey('lastName')
              ? _json['lastName'] as core.String
              : null,
          localId: _json.containsKey('localId')
              ? _json['localId'] as core.String
              : null,
          mfaInfo: _json.containsKey('mfaInfo')
              ? (_json['mfaInfo'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitV1MfaEnrollment.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          mfaPendingCredential: _json.containsKey('mfaPendingCredential')
              ? _json['mfaPendingCredential'] as core.String
              : null,
          needConfirmation: _json.containsKey('needConfirmation')
              ? _json['needConfirmation'] as core.bool
              : null,
          needEmail: _json.containsKey('needEmail')
              ? _json['needEmail'] as core.bool
              : null,
          nickName: _json.containsKey('nickName')
              ? _json['nickName'] as core.String
              : null,
          oauthAccessToken: _json.containsKey('oauthAccessToken')
              ? _json['oauthAccessToken'] as core.String
              : null,
          oauthAuthorizationCode: _json.containsKey('oauthAuthorizationCode')
              ? _json['oauthAuthorizationCode'] as core.String
              : null,
          oauthExpireIn: _json.containsKey('oauthExpireIn')
              ? _json['oauthExpireIn'] as core.int
              : null,
          oauthIdToken: _json.containsKey('oauthIdToken')
              ? _json['oauthIdToken'] as core.String
              : null,
          oauthRefreshToken: _json.containsKey('oauthRefreshToken')
              ? _json['oauthRefreshToken'] as core.String
              : null,
          oauthTokenSecret: _json.containsKey('oauthTokenSecret')
              ? _json['oauthTokenSecret'] as core.String
              : null,
          originalEmail: _json.containsKey('originalEmail')
              ? _json['originalEmail'] as core.String
              : null,
          pendingToken: _json.containsKey('pendingToken')
              ? _json['pendingToken'] as core.String
              : null,
          photoUrl: _json.containsKey('photoUrl')
              ? _json['photoUrl'] as core.String
              : null,
          providerId: _json.containsKey('providerId')
              ? _json['providerId'] as core.String
              : null,
          rawUserInfo: _json.containsKey('rawUserInfo')
              ? _json['rawUserInfo'] as core.String
              : null,
          refreshToken: _json.containsKey('refreshToken')
              ? _json['refreshToken'] as core.String
              : null,
          screenName: _json.containsKey('screenName')
              ? _json['screenName'] as core.String
              : null,
          tenantId: _json.containsKey('tenantId')
              ? _json['tenantId'] as core.String
              : null,
          timeZone: _json.containsKey('timeZone')
              ? _json['timeZone'] as core.String
              : null,
          verifiedProvider: _json.containsKey('verifiedProvider')
              ? (_json['verifiedProvider'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (context != null) 'context': context!,
        if (dateOfBirth != null) 'dateOfBirth': dateOfBirth!,
        if (displayName != null) 'displayName': displayName!,
        if (email != null) 'email': email!,
        if (emailRecycled != null) 'emailRecycled': emailRecycled!,
        if (emailVerified != null) 'emailVerified': emailVerified!,
        if (errorMessage != null) 'errorMessage': errorMessage!,
        if (expiresIn != null) 'expiresIn': expiresIn!,
        if (federatedId != null) 'federatedId': federatedId!,
        if (firstName != null) 'firstName': firstName!,
        if (fullName != null) 'fullName': fullName!,
        if (idToken != null) 'idToken': idToken!,
        if (inputEmail != null) 'inputEmail': inputEmail!,
        if (isNewUser != null) 'isNewUser': isNewUser!,
        if (kind != null) 'kind': kind!,
        if (language != null) 'language': language!,
        if (lastName != null) 'lastName': lastName!,
        if (localId != null) 'localId': localId!,
        if (mfaInfo != null) 'mfaInfo': mfaInfo!,
        if (mfaPendingCredential != null)
          'mfaPendingCredential': mfaPendingCredential!,
        if (needConfirmation != null) 'needConfirmation': needConfirmation!,
        if (needEmail != null) 'needEmail': needEmail!,
        if (nickName != null) 'nickName': nickName!,
        if (oauthAccessToken != null) 'oauthAccessToken': oauthAccessToken!,
        if (oauthAuthorizationCode != null)
          'oauthAuthorizationCode': oauthAuthorizationCode!,
        if (oauthExpireIn != null) 'oauthExpireIn': oauthExpireIn!,
        if (oauthIdToken != null) 'oauthIdToken': oauthIdToken!,
        if (oauthRefreshToken != null) 'oauthRefreshToken': oauthRefreshToken!,
        if (oauthTokenSecret != null) 'oauthTokenSecret': oauthTokenSecret!,
        if (originalEmail != null) 'originalEmail': originalEmail!,
        if (pendingToken != null) 'pendingToken': pendingToken!,
        if (photoUrl != null) 'photoUrl': photoUrl!,
        if (providerId != null) 'providerId': providerId!,
        if (rawUserInfo != null) 'rawUserInfo': rawUserInfo!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
        if (screenName != null) 'screenName': screenName!,
        if (tenantId != null) 'tenantId': tenantId!,
        if (timeZone != null) 'timeZone': timeZone!,
        if (verifiedProvider != null) 'verifiedProvider': verifiedProvider!,
      };
}

/// Request message for SignInWithPassword.
class GoogleCloudIdentitytoolkitV1SignInWithPasswordRequest {
  core.String? captchaChallenge;

  /// The reCAPTCHA token provided by the reCAPTCHA client-side integration.
  ///
  /// reCAPTCHA Enterprise uses it for risk assessment. Required when reCAPTCHA
  /// Enterprise is enabled.
  core.String? captchaResponse;
  core.String? delegatedProjectNumber;

  /// The email the user is signing in with.
  ///
  /// The length of email should be less than 256 characters and in the format
  /// of `name@domain.tld`. The email should also match the
  /// [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec production.
  ///
  /// Required.
  core.String? email;
  core.String? idToken;
  core.String? instanceId;

  /// The password the user provides to sign in to the account.
  ///
  /// Required.
  core.String? password;
  core.String? pendingIdToken;

  /// Should always be true.
  core.bool? returnSecureToken;

  /// The ID of the Identity Platform tenant the user is signing in to.
  ///
  /// If not set, the user will sign in to the default Identity Platform
  /// instance in the project.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV1SignInWithPasswordRequest({
    this.captchaChallenge,
    this.captchaResponse,
    this.delegatedProjectNumber,
    this.email,
    this.idToken,
    this.instanceId,
    this.password,
    this.pendingIdToken,
    this.returnSecureToken,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV1SignInWithPasswordRequest.fromJson(core.Map _json)
      : this(
          captchaChallenge: _json.containsKey('captchaChallenge')
              ? _json['captchaChallenge'] as core.String
              : null,
          captchaResponse: _json.containsKey('captchaResponse')
              ? _json['captchaResponse'] as core.String
              : null,
          delegatedProjectNumber: _json.containsKey('delegatedProjectNumber')
              ? _json['delegatedProjectNumber'] as core.String
              : null,
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.String
              : null,
          instanceId: _json.containsKey('instanceId')
              ? _json['instanceId'] as core.String
              : null,
          password: _json.containsKey('password')
              ? _json['password'] as core.String
              : null,
          pendingIdToken: _json.containsKey('pendingIdToken')
              ? _json['pendingIdToken'] as core.String
              : null,
          returnSecureToken: _json.containsKey('returnSecureToken')
              ? _json['returnSecureToken'] as core.bool
              : null,
          tenantId: _json.containsKey('tenantId')
              ? _json['tenantId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (captchaChallenge != null) 'captchaChallenge': captchaChallenge!,
        if (captchaResponse != null) 'captchaResponse': captchaResponse!,
        if (delegatedProjectNumber != null)
          'delegatedProjectNumber': delegatedProjectNumber!,
        if (email != null) 'email': email!,
        if (idToken != null) 'idToken': idToken!,
        if (instanceId != null) 'instanceId': instanceId!,
        if (password != null) 'password': password!,
        if (pendingIdToken != null) 'pendingIdToken': pendingIdToken!,
        if (returnSecureToken != null) 'returnSecureToken': returnSecureToken!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// Response message for SignInWithPassword.
class GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse {
  /// The user's display name stored in the account's attributes.
  core.String? displayName;

  /// The email of the authenticated user.
  ///
  /// Always present in the response.
  core.String? email;

  /// The number of seconds until the Identity Platform ID token expires.
  core.String? expiresIn;

  /// An Identity Platform ID token for the authenticated user.
  core.String? idToken;
  core.String? kind;

  /// The ID of the authenticated user.
  ///
  /// Always present in the response.
  core.String? localId;

  /// Info on which multi-factor authentication providers are enabled for the
  /// account.
  ///
  /// Present if the user needs to complete the sign-in using multi-factor
  /// authentication.
  core.List<GoogleCloudIdentitytoolkitV1MfaEnrollment>? mfaInfo;

  /// An opaque string that functions as proof that the user has successfully
  /// passed the first factor authentication.
  core.String? mfaPendingCredential;

  /// The OAuth2 access token.
  core.String? oauthAccessToken;
  core.String? oauthAuthorizationCode;

  /// The access token expiration time in seconds.
  core.int? oauthExpireIn;

  /// The user's profile picture stored in the account's attributes.
  core.String? profilePicture;

  /// An Identity Platform refresh token for the authenticated user.
  core.String? refreshToken;

  /// Whether the email is for an existing account.
  ///
  /// Always true.
  core.bool? registered;

  GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse({
    this.displayName,
    this.email,
    this.expiresIn,
    this.idToken,
    this.kind,
    this.localId,
    this.mfaInfo,
    this.mfaPendingCredential,
    this.oauthAccessToken,
    this.oauthAuthorizationCode,
    this.oauthExpireIn,
    this.profilePicture,
    this.refreshToken,
    this.registered,
  });

  GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse.fromJson(
      core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          expiresIn: _json.containsKey('expiresIn')
              ? _json['expiresIn'] as core.String
              : null,
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          localId: _json.containsKey('localId')
              ? _json['localId'] as core.String
              : null,
          mfaInfo: _json.containsKey('mfaInfo')
              ? (_json['mfaInfo'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitV1MfaEnrollment.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          mfaPendingCredential: _json.containsKey('mfaPendingCredential')
              ? _json['mfaPendingCredential'] as core.String
              : null,
          oauthAccessToken: _json.containsKey('oauthAccessToken')
              ? _json['oauthAccessToken'] as core.String
              : null,
          oauthAuthorizationCode: _json.containsKey('oauthAuthorizationCode')
              ? _json['oauthAuthorizationCode'] as core.String
              : null,
          oauthExpireIn: _json.containsKey('oauthExpireIn')
              ? _json['oauthExpireIn'] as core.int
              : null,
          profilePicture: _json.containsKey('profilePicture')
              ? _json['profilePicture'] as core.String
              : null,
          refreshToken: _json.containsKey('refreshToken')
              ? _json['refreshToken'] as core.String
              : null,
          registered: _json.containsKey('registered')
              ? _json['registered'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (email != null) 'email': email!,
        if (expiresIn != null) 'expiresIn': expiresIn!,
        if (idToken != null) 'idToken': idToken!,
        if (kind != null) 'kind': kind!,
        if (localId != null) 'localId': localId!,
        if (mfaInfo != null) 'mfaInfo': mfaInfo!,
        if (mfaPendingCredential != null)
          'mfaPendingCredential': mfaPendingCredential!,
        if (oauthAccessToken != null) 'oauthAccessToken': oauthAccessToken!,
        if (oauthAuthorizationCode != null)
          'oauthAuthorizationCode': oauthAuthorizationCode!,
        if (oauthExpireIn != null) 'oauthExpireIn': oauthExpireIn!,
        if (profilePicture != null) 'profilePicture': profilePicture!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
        if (registered != null) 'registered': registered!,
      };
}

/// Request message for SignInWithPhoneNumber.
class GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest {
  /// User-entered verification code from an SMS sent to the user's phone.
  core.String? code;

  /// A valid ID token for an Identity Platform account.
  ///
  /// If passed, this request will link the phone number to the user represented
  /// by this ID token if the phone number is not in use, or will reauthenticate
  /// the user if the phone number is already linked to the user.
  core.String? idToken;

  ///
  /// Possible string values are:
  /// - "VERIFY_OP_UNSPECIFIED" : Operation is not specified.
  /// - "SIGN_UP_OR_IN" : Verify operation is to sign up/sign in.
  /// - "REAUTH" : Verify operation is to reauth.
  /// - "UPDATE" : Verify operation is to update.
  /// - "LINK" : Verify operation is to link.
  core.String? operation;

  /// The user's phone number to sign in with.
  ///
  /// This is necessary in the case of uing a temporary proof, in which case it
  /// must match the phone number that was authenticated in the request that
  /// generated the temporary proof. This field is ignored if a session info is
  /// passed.
  core.String? phoneNumber;

  /// Encrypted session information from the response of sendVerificationCode.
  ///
  /// In the case of authenticating with an SMS code this must be specified, but
  /// in the case of using a temporary proof it can be unspecified.
  core.String? sessionInfo;

  /// A proof of the phone number verification, provided from a previous
  /// signInWithPhoneNumber request.
  ///
  /// If this is passed, the caller must also pass in the phone_number field the
  /// phone number that was verified in the previous request.
  core.String? temporaryProof;

  /// The ID of the Identity Platform tenant the user is signing in to.
  ///
  /// If not set, the user will sign in to the default Identity Platform
  /// project.
  core.String? tenantId;

  /// Do not use.
  core.String? verificationProof;

  GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest({
    this.code,
    this.idToken,
    this.operation,
    this.phoneNumber,
    this.sessionInfo,
    this.temporaryProof,
    this.tenantId,
    this.verificationProof,
  });

  GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest.fromJson(
      core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.String
              : null,
          operation: _json.containsKey('operation')
              ? _json['operation'] as core.String
              : null,
          phoneNumber: _json.containsKey('phoneNumber')
              ? _json['phoneNumber'] as core.String
              : null,
          sessionInfo: _json.containsKey('sessionInfo')
              ? _json['sessionInfo'] as core.String
              : null,
          temporaryProof: _json.containsKey('temporaryProof')
              ? _json['temporaryProof'] as core.String
              : null,
          tenantId: _json.containsKey('tenantId')
              ? _json['tenantId'] as core.String
              : null,
          verificationProof: _json.containsKey('verificationProof')
              ? _json['verificationProof'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (idToken != null) 'idToken': idToken!,
        if (operation != null) 'operation': operation!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (sessionInfo != null) 'sessionInfo': sessionInfo!,
        if (temporaryProof != null) 'temporaryProof': temporaryProof!,
        if (tenantId != null) 'tenantId': tenantId!,
        if (verificationProof != null) 'verificationProof': verificationProof!,
      };
}

/// Response message for SignInWithPhoneNumber.
class GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse {
  /// The number of seconds until the ID token expires.
  core.String? expiresIn;

  /// Identity Platform ID token for the authenticated user.
  core.String? idToken;

  /// Whether the authenticated user was created by this request.
  core.bool? isNewUser;

  /// The id of the authenticated user.
  ///
  /// Present in the case of a successful authentication. In the case when the
  /// phone could be verified but the account operation could not be performed,
  /// a temporary proof will be returned instead.
  core.String? localId;

  /// Phone number of the authenticated user.
  ///
  /// Always present in the response.
  core.String? phoneNumber;

  /// Refresh token for the authenticated user.
  core.String? refreshToken;

  /// A proof of the phone number verification, provided if a phone
  /// authentication is successful but the user operation fails.
  ///
  /// This happens when the request tries to link a phone number to a user with
  /// an ID token or reauthenticate with an ID token but the phone number is
  /// linked to a different user.
  core.String? temporaryProof;

  /// The number of seconds until the temporary proof expires.
  core.String? temporaryProofExpiresIn;

  /// Do not use.
  core.String? verificationProof;

  /// Do not use.
  core.String? verificationProofExpiresIn;

  GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse({
    this.expiresIn,
    this.idToken,
    this.isNewUser,
    this.localId,
    this.phoneNumber,
    this.refreshToken,
    this.temporaryProof,
    this.temporaryProofExpiresIn,
    this.verificationProof,
    this.verificationProofExpiresIn,
  });

  GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse.fromJson(
      core.Map _json)
      : this(
          expiresIn: _json.containsKey('expiresIn')
              ? _json['expiresIn'] as core.String
              : null,
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.String
              : null,
          isNewUser: _json.containsKey('isNewUser')
              ? _json['isNewUser'] as core.bool
              : null,
          localId: _json.containsKey('localId')
              ? _json['localId'] as core.String
              : null,
          phoneNumber: _json.containsKey('phoneNumber')
              ? _json['phoneNumber'] as core.String
              : null,
          refreshToken: _json.containsKey('refreshToken')
              ? _json['refreshToken'] as core.String
              : null,
          temporaryProof: _json.containsKey('temporaryProof')
              ? _json['temporaryProof'] as core.String
              : null,
          temporaryProofExpiresIn: _json.containsKey('temporaryProofExpiresIn')
              ? _json['temporaryProofExpiresIn'] as core.String
              : null,
          verificationProof: _json.containsKey('verificationProof')
              ? _json['verificationProof'] as core.String
              : null,
          verificationProofExpiresIn:
              _json.containsKey('verificationProofExpiresIn')
                  ? _json['verificationProofExpiresIn'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expiresIn != null) 'expiresIn': expiresIn!,
        if (idToken != null) 'idToken': idToken!,
        if (isNewUser != null) 'isNewUser': isNewUser!,
        if (localId != null) 'localId': localId!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
        if (temporaryProof != null) 'temporaryProof': temporaryProof!,
        if (temporaryProofExpiresIn != null)
          'temporaryProofExpiresIn': temporaryProofExpiresIn!,
        if (verificationProof != null) 'verificationProof': verificationProof!,
        if (verificationProofExpiresIn != null)
          'verificationProofExpiresIn': verificationProofExpiresIn!,
      };
}

/// Request message for SignUp.
class GoogleCloudIdentitytoolkitV1SignUpRequest {
  core.String? captchaChallenge;

  /// The reCAPTCHA token provided by the reCAPTCHA client-side integration.
  ///
  /// reCAPTCHA Enterprise uses it for assessment. Required when reCAPTCHA
  /// enterprise is enabled.
  core.String? captchaResponse;

  /// Whether the user will be disabled upon creation.
  ///
  /// Disabled accounts are inaccessible except for requests bearing a Google
  /// OAuth2 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  core.bool? disabled;

  /// The display name of the user to be created.
  core.String? displayName;

  /// The email to assign to the created user.
  ///
  /// The length of the email should be less than 256 characters and in the
  /// format of `name@domain.tld`. The email should also match the
  /// [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec production. An
  /// anonymous user will be created if not provided.
  core.String? email;

  /// Whether the user's email is verified.
  ///
  /// Specifying this field requires a Google OAuth 2.0 credential with the
  /// proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  core.bool? emailVerified;

  /// A valid ID token for an Identity Platform user.
  ///
  /// If set, this request will link the authentication credential to the user
  /// represented by this ID token. For a non-admin request, both the `email`
  /// and `password` fields must be set. For an admin request, `local_id` must
  /// not be set.
  core.String? idToken;
  core.String? instanceId;

  /// The ID of the user to create.
  ///
  /// The ID must be unique within the project that the user is being created
  /// under. Specifying this field requires a Google OAuth 2.0 credential with
  /// the proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  core.String? localId;

  /// The multi-factor authentication providers for the user to create.
  core.List<GoogleCloudIdentitytoolkitV1MfaFactor>? mfaInfo;

  /// The password to assign to the created user.
  ///
  /// The password must be be at least 6 characters long. If set, the `email`
  /// field must also be set.
  core.String? password;

  /// The phone number of the user to create.
  ///
  /// Specifying this field requires a Google OAuth 2.0 credential with the
  /// proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  core.String? phoneNumber;

  /// The profile photo url of the user to create.
  core.String? photoUrl;

  /// The project ID of the project which the user should belong to.
  ///
  /// Specifying this field requires a Google OAuth 2.0 credential with the
  /// proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  /// If this is not set, the target project is inferred from the scope
  /// associated to the Bearer access token.
  core.String? targetProjectId;

  /// The ID of the Identity Platform tenant to create a user under.
  ///
  /// If not set, the user will be created under the default Identity Platform
  /// project.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV1SignUpRequest({
    this.captchaChallenge,
    this.captchaResponse,
    this.disabled,
    this.displayName,
    this.email,
    this.emailVerified,
    this.idToken,
    this.instanceId,
    this.localId,
    this.mfaInfo,
    this.password,
    this.phoneNumber,
    this.photoUrl,
    this.targetProjectId,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV1SignUpRequest.fromJson(core.Map _json)
      : this(
          captchaChallenge: _json.containsKey('captchaChallenge')
              ? _json['captchaChallenge'] as core.String
              : null,
          captchaResponse: _json.containsKey('captchaResponse')
              ? _json['captchaResponse'] as core.String
              : null,
          disabled: _json.containsKey('disabled')
              ? _json['disabled'] as core.bool
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          emailVerified: _json.containsKey('emailVerified')
              ? _json['emailVerified'] as core.bool
              : null,
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.String
              : null,
          instanceId: _json.containsKey('instanceId')
              ? _json['instanceId'] as core.String
              : null,
          localId: _json.containsKey('localId')
              ? _json['localId'] as core.String
              : null,
          mfaInfo: _json.containsKey('mfaInfo')
              ? (_json['mfaInfo'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitV1MfaFactor.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          password: _json.containsKey('password')
              ? _json['password'] as core.String
              : null,
          phoneNumber: _json.containsKey('phoneNumber')
              ? _json['phoneNumber'] as core.String
              : null,
          photoUrl: _json.containsKey('photoUrl')
              ? _json['photoUrl'] as core.String
              : null,
          targetProjectId: _json.containsKey('targetProjectId')
              ? _json['targetProjectId'] as core.String
              : null,
          tenantId: _json.containsKey('tenantId')
              ? _json['tenantId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (captchaChallenge != null) 'captchaChallenge': captchaChallenge!,
        if (captchaResponse != null) 'captchaResponse': captchaResponse!,
        if (disabled != null) 'disabled': disabled!,
        if (displayName != null) 'displayName': displayName!,
        if (email != null) 'email': email!,
        if (emailVerified != null) 'emailVerified': emailVerified!,
        if (idToken != null) 'idToken': idToken!,
        if (instanceId != null) 'instanceId': instanceId!,
        if (localId != null) 'localId': localId!,
        if (mfaInfo != null) 'mfaInfo': mfaInfo!,
        if (password != null) 'password': password!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (photoUrl != null) 'photoUrl': photoUrl!,
        if (targetProjectId != null) 'targetProjectId': targetProjectId!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// Response message for SignUp.
class GoogleCloudIdentitytoolkitV1SignUpResponse {
  /// The created user's display name.
  core.String? displayName;

  /// The created user's email.
  core.String? email;

  /// The number of seconds until the ID token expires.
  core.String? expiresIn;

  /// An Identity Platform ID token for the created user.
  ///
  /// This field is only set for non-admin requests.
  core.String? idToken;
  core.String? kind;

  /// The ID of the created user.
  ///
  /// Always present in the response.
  core.String? localId;

  /// An Identity Platform refresh token for the created user.
  ///
  /// This field is only set for non-admin requests.
  core.String? refreshToken;

  GoogleCloudIdentitytoolkitV1SignUpResponse({
    this.displayName,
    this.email,
    this.expiresIn,
    this.idToken,
    this.kind,
    this.localId,
    this.refreshToken,
  });

  GoogleCloudIdentitytoolkitV1SignUpResponse.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          expiresIn: _json.containsKey('expiresIn')
              ? _json['expiresIn'] as core.String
              : null,
          idToken: _json.containsKey('idToken')
              ? _json['idToken'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          localId: _json.containsKey('localId')
              ? _json['localId'] as core.String
              : null,
          refreshToken: _json.containsKey('refreshToken')
              ? _json['refreshToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (email != null) 'email': email!,
        if (expiresIn != null) 'expiresIn': expiresIn!,
        if (idToken != null) 'idToken': idToken!,
        if (kind != null) 'kind': kind!,
        if (localId != null) 'localId': localId!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
      };
}

/// Query conditions used to filter results.
class GoogleCloudIdentitytoolkitV1SqlExpression {
  /// A case insensitive string that the account's email should match.
  ///
  /// Only one of `email`, `phone_number`, or `user_id` should be specified in a
  /// SqlExpression. If more than one is specified, only the first (in that
  /// order) will be applied.
  core.String? email;

  /// A string that the account's phone number should match.
  ///
  /// Only one of `email`, `phone_number`, or `user_id` should be specified in a
  /// SqlExpression. If more than one is specified, only the first (in that
  /// order) will be applied.
  core.String? phoneNumber;

  /// A string that the account's local ID should match.
  ///
  /// Only one of `email`, `phone_number`, or `user_id` should be specified in a
  /// SqlExpression If more than one is specified, only the first (in that
  /// order) will be applied.
  core.String? userId;

  GoogleCloudIdentitytoolkitV1SqlExpression({
    this.email,
    this.phoneNumber,
    this.userId,
  });

  GoogleCloudIdentitytoolkitV1SqlExpression.fromJson(core.Map _json)
      : this(
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          phoneNumber: _json.containsKey('phoneNumber')
              ? _json['phoneNumber'] as core.String
              : null,
          userId: _json.containsKey('userId')
              ? _json['userId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (userId != null) 'userId': userId!,
      };
}

/// Request message for UploadAccount.
class GoogleCloudIdentitytoolkitV1UploadAccountRequest {
  /// Whether to overwrite an existing account in Identity Platform with a
  /// matching `local_id` in the request.
  ///
  /// If true, the existing account will be overwritten. If false, an error will
  /// be returned.
  core.bool? allowOverwrite;

  /// The parameters for Argon2 hashing algorithm.
  GoogleCloudIdentitytoolkitV1Argon2Parameters? argon2Parameters;

  /// The block size parameter used by the STANDARD_SCRYPT hashing function.
  ///
  /// This parameter, along with parallelization and cpu_mem_cost help tune the
  /// resources needed to hash a password, and should be tuned as processor
  /// speeds and memory technologies advance.
  core.int? blockSize;

  /// The CPU memory cost parameter to be used by the STANDARD_SCRYPT hashing
  /// function.
  ///
  /// This parameter, along with block_size and cpu_mem_cost help tune the
  /// resources needed to hash a password, and should be tuned as processor
  /// speeds and memory technologies advance.
  core.int? cpuMemCost;

  /// If true, the service will do the following list of checks before an
  /// account is uploaded: * Duplicate emails * Duplicate federated IDs *
  /// Federated ID provider validation If the duplication exists within the list
  /// of accounts to be uploaded, it will prevent the entire list from being
  /// uploaded.
  ///
  /// If the email or federated ID is a duplicate of a user already within the
  /// project/tenant, the account will not be uploaded, but the rest of the
  /// accounts will be unaffected. If false, these checks will be skipped.
  core.String? delegatedProjectNumber;

  /// The desired key length for the STANDARD_SCRYPT hashing function.
  ///
  /// Must be at least 1.
  core.int? dkLen;

  /// The hashing function used to hash the account passwords.
  ///
  /// Must be one of the following: * HMAC_SHA256 * HMAC_SHA1 * HMAC_MD5 *
  /// SCRYPT * PBKDF_SHA1 * MD5 * HMAC_SHA512 * SHA1 * BCRYPT * PBKDF2_SHA256 *
  /// SHA256 * SHA512 * STANDARD_SCRYPT * ARGON2
  ///
  /// Required.
  core.String? hashAlgorithm;

  /// Memory cost for hash calculation.
  ///
  /// Only required when the hashing function is SCRYPT.
  core.int? memoryCost;

  /// The parallelization cost parameter to be used by the STANDARD_SCRYPT
  /// hashing function.
  ///
  /// This parameter, along with block_size and cpu_mem_cost help tune the
  /// resources needed to hash a password, and should be tuned as processor
  /// speeds and memory technologies advance.
  core.int? parallelization;

  /// Password and salt order when verify password.
  /// Possible string values are:
  /// - "UNSPECIFIED_ORDER" : The order is not specified.
  /// - "SALT_AND_PASSWORD" : The order is salt first, and then password.
  /// - "PASSWORD_AND_SALT" : The order is password first, and then salt.
  core.String? passwordHashOrder;

  /// The number of rounds used for hash calculation.
  ///
  /// Only required for the following hashing functions: * MD5 * SHA1 * SHA256 *
  /// SHA512 * PBKDF_SHA1 * PBKDF2_SHA256 * SCRYPT
  core.int? rounds;

  /// One or more bytes to be inserted between the salt and plain text password.
  ///
  /// For stronger security, this should be a single non-printable character.
  core.String? saltSeparator;
  core.List<core.int> get saltSeparatorAsBytes =>
      convert.base64.decode(saltSeparator!);

  set saltSeparatorAsBytes(core.List<core.int> _bytes) {
    saltSeparator =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  core.bool? sanityCheck;

  /// The signer key used to hash the password.
  ///
  /// Required for the following hashing functions: * SCRYPT, * HMAC_MD5, *
  /// HMAC_SHA1, * HMAC_SHA256, * HMAC_SHA512
  core.String? signerKey;
  core.List<core.int> get signerKeyAsBytes => convert.base64.decode(signerKey!);

  set signerKeyAsBytes(core.List<core.int> _bytes) {
    signerKey =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The ID of the Identity Platform tenant the account belongs to.
  core.String? tenantId;

  /// A list of accounts to upload.
  core.List<GoogleCloudIdentitytoolkitV1UserInfo>? users;

  GoogleCloudIdentitytoolkitV1UploadAccountRequest({
    this.allowOverwrite,
    this.argon2Parameters,
    this.blockSize,
    this.cpuMemCost,
    this.delegatedProjectNumber,
    this.dkLen,
    this.hashAlgorithm,
    this.memoryCost,
    this.parallelization,
    this.passwordHashOrder,
    this.rounds,
    this.saltSeparator,
    this.sanityCheck,
    this.signerKey,
    this.tenantId,
    this.users,
  });

  GoogleCloudIdentitytoolkitV1UploadAccountRequest.fromJson(core.Map _json)
      : this(
          allowOverwrite: _json.containsKey('allowOverwrite')
              ? _json['allowOverwrite'] as core.bool
              : null,
          argon2Parameters: _json.containsKey('argon2Parameters')
              ? GoogleCloudIdentitytoolkitV1Argon2Parameters.fromJson(
                  _json['argon2Parameters']
                      as core.Map<core.String, core.dynamic>)
              : null,
          blockSize: _json.containsKey('blockSize')
              ? _json['blockSize'] as core.int
              : null,
          cpuMemCost: _json.containsKey('cpuMemCost')
              ? _json['cpuMemCost'] as core.int
              : null,
          delegatedProjectNumber: _json.containsKey('delegatedProjectNumber')
              ? _json['delegatedProjectNumber'] as core.String
              : null,
          dkLen: _json.containsKey('dkLen') ? _json['dkLen'] as core.int : null,
          hashAlgorithm: _json.containsKey('hashAlgorithm')
              ? _json['hashAlgorithm'] as core.String
              : null,
          memoryCost: _json.containsKey('memoryCost')
              ? _json['memoryCost'] as core.int
              : null,
          parallelization: _json.containsKey('parallelization')
              ? _json['parallelization'] as core.int
              : null,
          passwordHashOrder: _json.containsKey('passwordHashOrder')
              ? _json['passwordHashOrder'] as core.String
              : null,
          rounds:
              _json.containsKey('rounds') ? _json['rounds'] as core.int : null,
          saltSeparator: _json.containsKey('saltSeparator')
              ? _json['saltSeparator'] as core.String
              : null,
          sanityCheck: _json.containsKey('sanityCheck')
              ? _json['sanityCheck'] as core.bool
              : null,
          signerKey: _json.containsKey('signerKey')
              ? _json['signerKey'] as core.String
              : null,
          tenantId: _json.containsKey('tenantId')
              ? _json['tenantId'] as core.String
              : null,
          users: _json.containsKey('users')
              ? (_json['users'] as core.List)
                  .map((value) => GoogleCloudIdentitytoolkitV1UserInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowOverwrite != null) 'allowOverwrite': allowOverwrite!,
        if (argon2Parameters != null) 'argon2Parameters': argon2Parameters!,
        if (blockSize != null) 'blockSize': blockSize!,
        if (cpuMemCost != null) 'cpuMemCost': cpuMemCost!,
        if (delegatedProjectNumber != null)
          'delegatedProjectNumber': delegatedProjectNumber!,
        if (dkLen != null) 'dkLen': dkLen!,
        if (hashAlgorithm != null) 'hashAlgorithm': hashAlgorithm!,
        if (memoryCost != null) 'memoryCost': memoryCost!,
        if (parallelization != null) 'parallelization': parallelization!,
        if (passwordHashOrder != null) 'passwordHashOrder': passwordHashOrder!,
        if (rounds != null) 'rounds': rounds!,
        if (saltSeparator != null) 'saltSeparator': saltSeparator!,
        if (sanityCheck != null) 'sanityCheck': sanityCheck!,
        if (signerKey != null) 'signerKey': signerKey!,
        if (tenantId != null) 'tenantId': tenantId!,
        if (users != null) 'users': users!,
      };
}

/// Response message for UploadAccount.
class GoogleCloudIdentitytoolkitV1UploadAccountResponse {
  /// Detailed error info for accounts that cannot be uploaded.
  core.List<GoogleCloudIdentitytoolkitV1ErrorInfo>? error;
  core.String? kind;

  GoogleCloudIdentitytoolkitV1UploadAccountResponse({
    this.error,
    this.kind,
  });

  GoogleCloudIdentitytoolkitV1UploadAccountResponse.fromJson(core.Map _json)
      : this(
          error: _json.containsKey('error')
              ? (_json['error'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitV1ErrorInfo.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (error != null) 'error': error!,
        if (kind != null) 'kind': kind!,
      };
}

/// An Identity Platform account's information.
class GoogleCloudIdentitytoolkitV1UserInfo {
  /// The time, in milliseconds from epoch, when the account was created.
  core.String? createdAt;

  /// Custom claims to be added to any ID tokens minted for the account.
  ///
  /// Should be at most 1,000 characters in length and in valid JSON format.
  core.String? customAttributes;

  /// Whether this account has been authenticated using SignInWithCustomToken.
  ///
  /// Output only.
  core.bool? customAuth;

  /// The date of birth set for the account.
  ///
  /// This account attribute is not used by Identity Platform. It is available
  /// for informational purposes only.
  ///
  /// Output only.
  core.String? dateOfBirth;

  /// Whether the account is disabled.
  ///
  /// Disabled accounts are inaccessible except for requests bearing a Google
  /// OAuth2 credential with proper permissions.
  core.bool? disabled;

  /// The display name of the account.
  ///
  /// This account attribute is not used by Identity Platform. It is available
  /// for informational purposes only.
  core.String? displayName;

  /// The account's email address.
  ///
  /// The length of the email should be less than 256 characters and in the
  /// format of `name@domain.tld`. The email should also match the
  /// [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec.
  core.String? email;

  /// Whether the account can authenticate with email link.
  ///
  /// Output only.
  core.bool? emailLinkSignin;

  /// Whether the account's email address has been verified.
  core.bool? emailVerified;

  /// The first email address associated with this account.
  ///
  /// The account's initial email cannot be changed once set and is used to
  /// recover access to this account if lost via the RECOVER_EMAIL flow in
  /// GetOobCode. Should match the [RFC 822](https://tools.ietf.org/html/rfc822)
  /// addr-spec.
  core.String? initialEmail;

  /// The language preference of the account.
  ///
  /// This account attribute is not used by Identity Platform. It is available
  /// for informational purposes only.
  ///
  /// Output only.
  core.String? language;

  /// The last time, in milliseconds from epoch, this account was logged into.
  core.String? lastLoginAt;

  /// Timestamp when an ID token was last minted for this account.
  core.String? lastRefreshAt;

  /// The unique ID of the account.
  ///
  /// Immutable.
  core.String? localId;

  /// Information on which multi-factor authentication providers are enabled for
  /// this account.
  core.List<GoogleCloudIdentitytoolkitV1MfaEnrollment>? mfaInfo;

  /// The account's hashed password.
  ///
  /// Only accessible by requests bearing a Google OAuth2 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  core.String? passwordHash;
  core.List<core.int> get passwordHashAsBytes =>
      convert.base64.decode(passwordHash!);

  set passwordHashAsBytes(core.List<core.int> _bytes) {
    passwordHash =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The timestamp, in milliseconds from the epoch of 1970-01-01T00:00:00Z,
  /// when the account's password was last updated.
  core.double? passwordUpdatedAt;

  /// The account's phone number.
  core.String? phoneNumber;

  /// The URL of the account's profile photo.
  ///
  /// This account attribute is not used by Identity Platform. It is available
  /// for informational purposes only.
  core.String? photoUrl;

  /// Information about the user as provided by various Identity Providers.
  core.List<GoogleCloudIdentitytoolkitV1ProviderUserInfo>? providerUserInfo;

  /// Input only.
  ///
  /// Plain text password used to update a account's password. This field is
  /// only ever used as input in a request. Identity Platform uses
  /// cryptographically secure hashing when managing passwords and will never
  /// store or transmit a user's password in plain text.
  core.String? rawPassword;

  /// The account's password salt.
  ///
  /// Only accessible by requests bearing a Google OAuth2 credential with proper
  /// permissions.
  core.String? salt;
  core.List<core.int> get saltAsBytes => convert.base64.decode(salt!);

  set saltAsBytes(core.List<core.int> _bytes) {
    salt =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// This account's screen name at Twitter or login name at GitHub.
  ///
  /// Output only.
  core.String? screenName;

  /// ID of the tenant this account belongs to.
  ///
  /// Only set if this account belongs to a tenant.
  core.String? tenantId;

  /// The time zone preference of the account.
  ///
  /// This account attribute is not used by Identity Platform. It is available
  /// for informational purposes only.
  ///
  /// Output only.
  core.String? timeZone;

  /// Oldest timestamp, in seconds since epoch, that an ID token should be
  /// considered valid.
  ///
  /// All ID tokens issued before this time are considered invalid.
  core.String? validSince;

  /// The version of the account's password.
  ///
  /// Only accessible by requests bearing a Google OAuth2 credential with proper
  /// permissions.
  core.int? version;

  GoogleCloudIdentitytoolkitV1UserInfo({
    this.createdAt,
    this.customAttributes,
    this.customAuth,
    this.dateOfBirth,
    this.disabled,
    this.displayName,
    this.email,
    this.emailLinkSignin,
    this.emailVerified,
    this.initialEmail,
    this.language,
    this.lastLoginAt,
    this.lastRefreshAt,
    this.localId,
    this.mfaInfo,
    this.passwordHash,
    this.passwordUpdatedAt,
    this.phoneNumber,
    this.photoUrl,
    this.providerUserInfo,
    this.rawPassword,
    this.salt,
    this.screenName,
    this.tenantId,
    this.timeZone,
    this.validSince,
    this.version,
  });

  GoogleCloudIdentitytoolkitV1UserInfo.fromJson(core.Map _json)
      : this(
          createdAt: _json.containsKey('createdAt')
              ? _json['createdAt'] as core.String
              : null,
          customAttributes: _json.containsKey('customAttributes')
              ? _json['customAttributes'] as core.String
              : null,
          customAuth: _json.containsKey('customAuth')
              ? _json['customAuth'] as core.bool
              : null,
          dateOfBirth: _json.containsKey('dateOfBirth')
              ? _json['dateOfBirth'] as core.String
              : null,
          disabled: _json.containsKey('disabled')
              ? _json['disabled'] as core.bool
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          emailLinkSignin: _json.containsKey('emailLinkSignin')
              ? _json['emailLinkSignin'] as core.bool
              : null,
          emailVerified: _json.containsKey('emailVerified')
              ? _json['emailVerified'] as core.bool
              : null,
          initialEmail: _json.containsKey('initialEmail')
              ? _json['initialEmail'] as core.String
              : null,
          language: _json.containsKey('language')
              ? _json['language'] as core.String
              : null,
          lastLoginAt: _json.containsKey('lastLoginAt')
              ? _json['lastLoginAt'] as core.String
              : null,
          lastRefreshAt: _json.containsKey('lastRefreshAt')
              ? _json['lastRefreshAt'] as core.String
              : null,
          localId: _json.containsKey('localId')
              ? _json['localId'] as core.String
              : null,
          mfaInfo: _json.containsKey('mfaInfo')
              ? (_json['mfaInfo'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitV1MfaEnrollment.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          passwordHash: _json.containsKey('passwordHash')
              ? _json['passwordHash'] as core.String
              : null,
          passwordUpdatedAt: _json.containsKey('passwordUpdatedAt')
              ? (_json['passwordUpdatedAt'] as core.num).toDouble()
              : null,
          phoneNumber: _json.containsKey('phoneNumber')
              ? _json['phoneNumber'] as core.String
              : null,
          photoUrl: _json.containsKey('photoUrl')
              ? _json['photoUrl'] as core.String
              : null,
          providerUserInfo: _json.containsKey('providerUserInfo')
              ? (_json['providerUserInfo'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitV1ProviderUserInfo.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rawPassword: _json.containsKey('rawPassword')
              ? _json['rawPassword'] as core.String
              : null,
          salt: _json.containsKey('salt') ? _json['salt'] as core.String : null,
          screenName: _json.containsKey('screenName')
              ? _json['screenName'] as core.String
              : null,
          tenantId: _json.containsKey('tenantId')
              ? _json['tenantId'] as core.String
              : null,
          timeZone: _json.containsKey('timeZone')
              ? _json['timeZone'] as core.String
              : null,
          validSince: _json.containsKey('validSince')
              ? _json['validSince'] as core.String
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createdAt != null) 'createdAt': createdAt!,
        if (customAttributes != null) 'customAttributes': customAttributes!,
        if (customAuth != null) 'customAuth': customAuth!,
        if (dateOfBirth != null) 'dateOfBirth': dateOfBirth!,
        if (disabled != null) 'disabled': disabled!,
        if (displayName != null) 'displayName': displayName!,
        if (email != null) 'email': email!,
        if (emailLinkSignin != null) 'emailLinkSignin': emailLinkSignin!,
        if (emailVerified != null) 'emailVerified': emailVerified!,
        if (initialEmail != null) 'initialEmail': initialEmail!,
        if (language != null) 'language': language!,
        if (lastLoginAt != null) 'lastLoginAt': lastLoginAt!,
        if (lastRefreshAt != null) 'lastRefreshAt': lastRefreshAt!,
        if (localId != null) 'localId': localId!,
        if (mfaInfo != null) 'mfaInfo': mfaInfo!,
        if (passwordHash != null) 'passwordHash': passwordHash!,
        if (passwordUpdatedAt != null) 'passwordUpdatedAt': passwordUpdatedAt!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (photoUrl != null) 'photoUrl': photoUrl!,
        if (providerUserInfo != null) 'providerUserInfo': providerUserInfo!,
        if (rawPassword != null) 'rawPassword': rawPassword!,
        if (salt != null) 'salt': salt!,
        if (screenName != null) 'screenName': screenName!,
        if (tenantId != null) 'tenantId': tenantId!,
        if (timeZone != null) 'timeZone': timeZone!,
        if (validSince != null) 'validSince': validSince!,
        if (version != null) 'version': version!,
      };
}

/// Request message for VerifyIosClient
class GoogleCloudIdentitytoolkitV1VerifyIosClientRequest {
  /// A device token that the iOS client gets after registering to APNs (Apple
  /// Push Notification service).
  core.String? appToken;

  /// Whether the app token is in the iOS sandbox.
  ///
  /// If false, the app token is in the production environment.
  core.bool? isSandbox;

  GoogleCloudIdentitytoolkitV1VerifyIosClientRequest({
    this.appToken,
    this.isSandbox,
  });

  GoogleCloudIdentitytoolkitV1VerifyIosClientRequest.fromJson(core.Map _json)
      : this(
          appToken: _json.containsKey('appToken')
              ? _json['appToken'] as core.String
              : null,
          isSandbox: _json.containsKey('isSandbox')
              ? _json['isSandbox'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appToken != null) 'appToken': appToken!,
        if (isSandbox != null) 'isSandbox': isSandbox!,
      };
}

/// Response message for VerifyIosClient.
class GoogleCloudIdentitytoolkitV1VerifyIosClientResponse {
  /// Receipt of successful app token validation.
  core.String? receipt;

  /// Suggested time that the client should wait in seconds for delivery of the
  /// push notification.
  core.String? suggestedTimeout;

  GoogleCloudIdentitytoolkitV1VerifyIosClientResponse({
    this.receipt,
    this.suggestedTimeout,
  });

  GoogleCloudIdentitytoolkitV1VerifyIosClientResponse.fromJson(core.Map _json)
      : this(
          receipt: _json.containsKey('receipt')
              ? _json['receipt'] as core.String
              : null,
          suggestedTimeout: _json.containsKey('suggestedTimeout')
              ? _json['suggestedTimeout'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (receipt != null) 'receipt': receipt!,
        if (suggestedTimeout != null) 'suggestedTimeout': suggestedTimeout!,
      };
}
