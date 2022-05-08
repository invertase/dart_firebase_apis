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

/// Firebase App Distribution API - v1
///
/// For more information, see
/// <https://firebase.google.com/products/app-distribution>
///
/// Create an instance of [FirebaseAppDistributionApi] to access these
/// resources:
///
/// - [MediaResource]
/// - [ProjectsResource]
///   - [ProjectsAppsResource]
///     - [ProjectsAppsReleasesResource]
///       - [ProjectsAppsReleasesOperationsResource]
///   - [ProjectsTestersResource]
library firebaseappdistribution.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        DetailedApiRequestError,
        Media,
        UploadOptions,
        ResumableUploadOptions,
        DownloadOptions,
        PartialDownloadOptions,
        ByteRange;

class FirebaseAppDistributionApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  MediaResource get media => MediaResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  FirebaseAppDistributionApi(http.Client client,
      {core.String rootUrl = 'https://firebaseappdistribution.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class MediaResource {
  final commons.ApiRequester _requester;

  MediaResource(commons.ApiRequester client) : _requester = client;

  /// Uploads a binary.
  ///
  /// Uploading a binary can result in a new release being created, an update to
  /// an existing release, or a no-op if a release with the same binary already
  /// exists.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [app] - The name of the app. Format:
  /// `projects/{project_number}/apps/{app}`
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> upload(
    GoogleFirebaseAppdistroV1UploadReleaseRequest request,
    core.String app, {
    core.String? $fields,
    commons.Media? uploadMedia,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    core.String _url;
    if (uploadMedia == null) {
      _url = 'v1/' + core.Uri.encodeFull('$app') + '/releases:upload';
    } else {
      _url = '/upload/v1/' + core.Uri.encodeFull('$app') + '/releases:upload';
    }

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadMedia: uploadMedia,
      uploadOptions: commons.UploadOptions.defaultOptions,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsAppsResource get apps => ProjectsAppsResource(_requester);
  ProjectsTestersResource get testers => ProjectsTestersResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsAppsResource {
  final commons.ApiRequester _requester;

  ProjectsAppsReleasesResource get releases =>
      ProjectsAppsReleasesResource(_requester);

  ProjectsAppsResource(commons.ApiRequester client) : _requester = client;

  /// Gets Android App Bundle (AAB) information for a Firebase app.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `AabInfo` to retrieve. Format:
  /// `projects/{project_number}/apps/{app}/aabInfo`
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+/aabInfo$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1AabInfo].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1AabInfo> getAabInfo(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppdistroV1AabInfo.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAppsReleasesResource {
  final commons.ApiRequester _requester;

  ProjectsAppsReleasesOperationsResource get operations =>
      ProjectsAppsReleasesOperationsResource(_requester);

  ProjectsAppsReleasesResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes releases.
  ///
  /// A maximum of 100 releases can be deleted per request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent Firebase app, which owns the releases.
  /// Format: `projects/{project_number}/apps/{app}`
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> batchDelete(
    GoogleFirebaseAppdistroV1BatchDeleteReleasesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + '/releases:batchDelete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Distributes a release to testers.
  ///
  /// This call does the following: 1. Creates testers for the specified emails,
  /// if none exist 2. Adds the testers and groups to the release 3. Sends new
  /// testers an invitation email 4. Sends existing testers a new release email
  /// The request will fail with a `INVALID_ARGUMENT` if it contains a group
  /// that doesn't exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the release. Format:
  /// `projects/{project_number}/apps/{app}/releases/{release}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/releases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1DistributeReleaseResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1DistributeReleaseResponse> distribute(
    GoogleFirebaseAppdistroV1DistributeReleaseRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':distribute';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppdistroV1DistributeReleaseResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists releases.
  ///
  /// By default sorts by `create_time` in descending order.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent Firebase app, which owns the releases.
  /// Format: `projects/{project_number}/apps/{app}`
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [filter] - The expression that filters releases listed in the response.
  /// Supported fields: - `release_notes.text` supports `=` (can contain a
  /// wildcard `*` character at the beginning or end of the string) -
  /// `create_time` supports `<`, `<=`, `>` and `>=`, and expects an RFC-3339
  /// formatted string Examples: - `create_time <= "2021-09-08T00:00:00+04:00"`
  /// - `release_notes.text="bug fixes" AND create_time >=
  /// "2021-09-08T00:00:00.0Z"` - `release_notes.text="*v1.0.0-rc*"`
  ///
  /// [orderBy] - The fields used to order releases. Supported fields: -
  /// `create_time` To specify descending order for a field, append a "desc"
  /// suffix, for example, `create_time desc`. If this parameter is not set,
  /// releases will be ordered by `create_time` in descending order.
  ///
  /// [pageSize] - The maximum number of releases to return. The service may
  /// return fewer than this value. If unspecified, at most 25 releases will be
  /// returned. The maximum value is 100; values above 100 will be coerced to
  /// 100.
  ///
  /// [pageToken] - A page token, received from a previous `ListReleases` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListReleases` must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1ListReleasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1ListReleasesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/releases';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppdistroV1ListReleasesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a release.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the release. Format:
  /// `projects/{project_number}/apps/{app}/releases/{release}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/releases/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1Release].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1Release> patch(
    GoogleFirebaseAppdistroV1Release request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppdistroV1Release.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAppsReleasesOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsAppsReleasesOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/releases/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> cancel(
    GoogleLongrunningCancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/releases/\[^/\]+/operations/\[^/\]+$`.
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

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/releases/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  /// NOTE: the `name` binding allows API services to override the binding to
  /// use different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/releases/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningListOperationsResponse> list(
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Waits until the specified long-running operation is done or reaches at
  /// most a specified timeout, returning the latest state.
  ///
  /// If the operation is already done, the latest state is immediately
  /// returned. If the timeout specified is greater than the default HTTP/RPC
  /// timeout, the HTTP/RPC timeout is used. If the server does not support this
  /// method, it returns `google.rpc.Code.UNIMPLEMENTED`. Note that this method
  /// is on a best-effort basis. It may return the latest state before the
  /// specified timeout (including immediately), meaning even an immediate
  /// response is no guarantee that the operation is done.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to wait on.
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/releases/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> wait(
    GoogleLongrunningWaitOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':wait';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTestersResource {
  final commons.ApiRequester _requester;

  ProjectsTestersResource(commons.ApiRequester client) : _requester = client;

  /// Batch adds testers.
  ///
  /// This call adds testers for the specified emails if they don't already
  /// exist. Returns all testers specified in the request, including newly
  /// created and previously existing testers. This action is idempotent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Required. The name of the project. Format:
  /// `projects/{project_number}`
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1BatchAddTestersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1BatchAddTestersResponse> batchAdd(
    GoogleFirebaseAppdistroV1BatchAddTestersRequest request,
    core.String project, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$project') + '/testers:batchAdd';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppdistroV1BatchAddTestersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Batch removes testers.
  ///
  /// If found, this call deletes testers for the specified emails. Returns all
  /// deleted testers.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Required. The name of the project. Format:
  /// `projects/{project_number}`
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1BatchRemoveTestersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1BatchRemoveTestersResponse> batchRemove(
    GoogleFirebaseAppdistroV1BatchRemoveTestersRequest request,
    core.String project, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$project') + '/testers:batchRemove';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppdistroV1BatchRemoveTestersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists testers and their resource ids.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent Firebase project, which owns this
  /// collection of testers. Format: `projects/{project_number}`
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of testers to return. The
  /// service may return fewer than this value. If unspecified, at most 10
  /// testers will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListTesters` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListTesters` must match the
  /// call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1ListTestersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1ListTestersResponse> list(
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/testers';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppdistroV1ListTestersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Information to read/write to blobstore2.
class GdataBlobstore2Info {
  /// The blob generation id.
  core.String? blobGeneration;

  /// The blob id, e.g., /blobstore/prod/playground/scotty
  core.String? blobId;

  /// Read handle passed from Bigstore -\> Scotty for a GCS download.
  ///
  /// This is a signed, serialized blobstore2.ReadHandle proto which must never
  /// be set outside of Bigstore, and is not applicable to non-GCS media
  /// downloads.
  core.String? downloadReadHandle;
  core.List<core.int> get downloadReadHandleAsBytes =>
      convert.base64.decode(downloadReadHandle!);

  set downloadReadHandleAsBytes(core.List<core.int> _bytes) {
    downloadReadHandle =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The blob read token.
  ///
  /// Needed to read blobs that have not been replicated. Might not be available
  /// until the final call.
  core.String? readToken;

  /// Metadata passed from Blobstore -\> Scotty for a new GCS upload.
  ///
  /// This is a signed, serialized blobstore2.BlobMetadataContainer proto which
  /// must never be consumed outside of Bigstore, and is not applicable to
  /// non-GCS media uploads.
  core.String? uploadMetadataContainer;
  core.List<core.int> get uploadMetadataContainerAsBytes =>
      convert.base64.decode(uploadMetadataContainer!);

  set uploadMetadataContainerAsBytes(core.List<core.int> _bytes) {
    uploadMetadataContainer =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  GdataBlobstore2Info({
    this.blobGeneration,
    this.blobId,
    this.downloadReadHandle,
    this.readToken,
    this.uploadMetadataContainer,
  });

  GdataBlobstore2Info.fromJson(core.Map _json)
      : this(
          blobGeneration: _json.containsKey('blobGeneration')
              ? _json['blobGeneration'] as core.String
              : null,
          blobId: _json.containsKey('blobId')
              ? _json['blobId'] as core.String
              : null,
          downloadReadHandle: _json.containsKey('downloadReadHandle')
              ? _json['downloadReadHandle'] as core.String
              : null,
          readToken: _json.containsKey('readToken')
              ? _json['readToken'] as core.String
              : null,
          uploadMetadataContainer: _json.containsKey('uploadMetadataContainer')
              ? _json['uploadMetadataContainer'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blobGeneration != null) 'blobGeneration': blobGeneration!,
        if (blobId != null) 'blobId': blobId!,
        if (downloadReadHandle != null)
          'downloadReadHandle': downloadReadHandle!,
        if (readToken != null) 'readToken': readToken!,
        if (uploadMetadataContainer != null)
          'uploadMetadataContainer': uploadMetadataContainer!,
      };
}

/// A sequence of media data references representing composite data.
///
/// Introduced to support Bigstore composite objects. For details, visit
/// http://go/bigstore-composites.
class GdataCompositeMedia {
  /// Blobstore v1 reference, set if reference_type is BLOBSTORE_REF This should
  /// be the byte representation of a blobstore.BlobRef.
  ///
  /// Since Blobstore is deprecating v1, use blobstore2_info instead. For now,
  /// any v2 blob will also be represented in this field as v1 BlobRef.
  core.String? blobRef;
  core.List<core.int> get blobRefAsBytes => convert.base64.decode(blobRef!);

  set blobRefAsBytes(core.List<core.int> _bytes) {
    blobRef =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Blobstore v2 info, set if reference_type is BLOBSTORE_REF and it refers to
  /// a v2 blob.
  GdataBlobstore2Info? blobstore2Info;

  /// A binary data reference for a media download.
  ///
  /// Serves as a technology-agnostic binary reference in some Google
  /// infrastructure. This value is a serialized storage_cosmo.BinaryReference
  /// proto. Storing it as bytes is a hack to get around the fact that the cosmo
  /// proto (as well as others it includes) doesn't support JavaScript. This
  /// prevents us from including the actual type of this field.
  core.String? cosmoBinaryReference;
  core.List<core.int> get cosmoBinaryReferenceAsBytes =>
      convert.base64.decode(cosmoBinaryReference!);

  set cosmoBinaryReferenceAsBytes(core.List<core.int> _bytes) {
    cosmoBinaryReference =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// crc32.c hash for the payload.
  core.int? crc32cHash;

  /// Media data, set if reference_type is INLINE
  core.String? inline;
  core.List<core.int> get inlineAsBytes => convert.base64.decode(inline!);

  set inlineAsBytes(core.List<core.int> _bytes) {
    inline =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Size of the data, in bytes
  core.String? length;

  /// MD5 hash for the payload.
  core.String? md5Hash;
  core.List<core.int> get md5HashAsBytes => convert.base64.decode(md5Hash!);

  set md5HashAsBytes(core.List<core.int> _bytes) {
    md5Hash =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Reference to a TI Blob, set if reference_type is BIGSTORE_REF.
  GdataObjectId? objectId;

  /// Path to the data, set if reference_type is PATH
  core.String? path;

  /// Describes what the field reference contains.
  /// Possible string values are:
  /// - "PATH" : Reference contains a GFS path or a local path.
  /// - "BLOB_REF" : Reference points to a blobstore object. This could be
  /// either a v1 blob_ref or a v2 blobstore2_info. Clients should check
  /// blobstore2_info first, since v1 is being deprecated.
  /// - "INLINE" : Data is included into this proto buffer
  /// - "BIGSTORE_REF" : Reference points to a bigstore object
  /// - "COSMO_BINARY_REFERENCE" : Indicates the data is stored in
  /// cosmo_binary_reference.
  core.String? referenceType;

  /// SHA-1 hash for the payload.
  core.String? sha1Hash;
  core.List<core.int> get sha1HashAsBytes => convert.base64.decode(sha1Hash!);

  set sha1HashAsBytes(core.List<core.int> _bytes) {
    sha1Hash =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  GdataCompositeMedia({
    this.blobRef,
    this.blobstore2Info,
    this.cosmoBinaryReference,
    this.crc32cHash,
    this.inline,
    this.length,
    this.md5Hash,
    this.objectId,
    this.path,
    this.referenceType,
    this.sha1Hash,
  });

  GdataCompositeMedia.fromJson(core.Map _json)
      : this(
          blobRef: _json.containsKey('blobRef')
              ? _json['blobRef'] as core.String
              : null,
          blobstore2Info: _json.containsKey('blobstore2Info')
              ? GdataBlobstore2Info.fromJson(_json['blobstore2Info']
                  as core.Map<core.String, core.dynamic>)
              : null,
          cosmoBinaryReference: _json.containsKey('cosmoBinaryReference')
              ? _json['cosmoBinaryReference'] as core.String
              : null,
          crc32cHash: _json.containsKey('crc32cHash')
              ? _json['crc32cHash'] as core.int
              : null,
          inline: _json.containsKey('inline')
              ? _json['inline'] as core.String
              : null,
          length: _json.containsKey('length')
              ? _json['length'] as core.String
              : null,
          md5Hash: _json.containsKey('md5Hash')
              ? _json['md5Hash'] as core.String
              : null,
          objectId: _json.containsKey('objectId')
              ? GdataObjectId.fromJson(
                  _json['objectId'] as core.Map<core.String, core.dynamic>)
              : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          referenceType: _json.containsKey('referenceType')
              ? _json['referenceType'] as core.String
              : null,
          sha1Hash: _json.containsKey('sha1Hash')
              ? _json['sha1Hash'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blobRef != null) 'blobRef': blobRef!,
        if (blobstore2Info != null) 'blobstore2Info': blobstore2Info!,
        if (cosmoBinaryReference != null)
          'cosmoBinaryReference': cosmoBinaryReference!,
        if (crc32cHash != null) 'crc32cHash': crc32cHash!,
        if (inline != null) 'inline': inline!,
        if (length != null) 'length': length!,
        if (md5Hash != null) 'md5Hash': md5Hash!,
        if (objectId != null) 'objectId': objectId!,
        if (path != null) 'path': path!,
        if (referenceType != null) 'referenceType': referenceType!,
        if (sha1Hash != null) 'sha1Hash': sha1Hash!,
      };
}

/// Detailed Content-Type information from Scotty.
///
/// The Content-Type of the media will typically be filled in by the header or
/// Scotty's best_guess, but this extended information provides the backend with
/// more information so that it can make a better decision if needed. This is
/// only used on media upload requests from Scotty.
class GdataContentTypeInfo {
  /// Scotty's best guess of what the content type of the file is.
  core.String? bestGuess;

  /// The content type of the file derived by looking at specific bytes (i.e.
  /// "magic bytes") of the actual file.
  core.String? fromBytes;

  /// The content type of the file derived from the file extension of the
  /// original file name used by the client.
  core.String? fromFileName;

  /// The content type of the file as specified in the request headers,
  /// multipart headers, or RUPIO start request.
  core.String? fromHeader;

  /// The content type of the file derived from the file extension of the URL
  /// path.
  ///
  /// The URL path is assumed to represent a file name (which is typically only
  /// true for agents that are providing a REST API).
  core.String? fromUrlPath;

  GdataContentTypeInfo({
    this.bestGuess,
    this.fromBytes,
    this.fromFileName,
    this.fromHeader,
    this.fromUrlPath,
  });

  GdataContentTypeInfo.fromJson(core.Map _json)
      : this(
          bestGuess: _json.containsKey('bestGuess')
              ? _json['bestGuess'] as core.String
              : null,
          fromBytes: _json.containsKey('fromBytes')
              ? _json['fromBytes'] as core.String
              : null,
          fromFileName: _json.containsKey('fromFileName')
              ? _json['fromFileName'] as core.String
              : null,
          fromHeader: _json.containsKey('fromHeader')
              ? _json['fromHeader'] as core.String
              : null,
          fromUrlPath: _json.containsKey('fromUrlPath')
              ? _json['fromUrlPath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bestGuess != null) 'bestGuess': bestGuess!,
        if (fromBytes != null) 'fromBytes': fromBytes!,
        if (fromFileName != null) 'fromFileName': fromFileName!,
        if (fromHeader != null) 'fromHeader': fromHeader!,
        if (fromUrlPath != null) 'fromUrlPath': fromUrlPath!,
      };
}

/// Backend response for a Diff get checksums response.
///
/// For details on the Scotty Diff protocol, visit
/// http://go/scotty-diff-protocol.
class GdataDiffChecksumsResponse {
  /// Exactly one of these fields must be populated.
  ///
  /// If checksums_location is filled, the server will return the corresponding
  /// contents to the user. If object_location is filled, the server will
  /// calculate the checksums based on the content there and return that to the
  /// user. For details on the format of the checksums, see
  /// http://go/scotty-diff-protocol.
  GdataCompositeMedia? checksumsLocation;

  /// The chunk size of checksums.
  ///
  /// Must be a multiple of 256KB.
  core.String? chunkSizeBytes;

  /// If set, calculate the checksums based on the contents and return them to
  /// the caller.
  GdataCompositeMedia? objectLocation;

  /// The total size of the server object.
  core.String? objectSizeBytes;

  /// The object version of the object the checksums are being returned for.
  core.String? objectVersion;

  GdataDiffChecksumsResponse({
    this.checksumsLocation,
    this.chunkSizeBytes,
    this.objectLocation,
    this.objectSizeBytes,
    this.objectVersion,
  });

  GdataDiffChecksumsResponse.fromJson(core.Map _json)
      : this(
          checksumsLocation: _json.containsKey('checksumsLocation')
              ? GdataCompositeMedia.fromJson(_json['checksumsLocation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          chunkSizeBytes: _json.containsKey('chunkSizeBytes')
              ? _json['chunkSizeBytes'] as core.String
              : null,
          objectLocation: _json.containsKey('objectLocation')
              ? GdataCompositeMedia.fromJson(_json['objectLocation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          objectSizeBytes: _json.containsKey('objectSizeBytes')
              ? _json['objectSizeBytes'] as core.String
              : null,
          objectVersion: _json.containsKey('objectVersion')
              ? _json['objectVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (checksumsLocation != null) 'checksumsLocation': checksumsLocation!,
        if (chunkSizeBytes != null) 'chunkSizeBytes': chunkSizeBytes!,
        if (objectLocation != null) 'objectLocation': objectLocation!,
        if (objectSizeBytes != null) 'objectSizeBytes': objectSizeBytes!,
        if (objectVersion != null) 'objectVersion': objectVersion!,
      };
}

/// Backend response for a Diff download response.
///
/// For details on the Scotty Diff protocol, visit
/// http://go/scotty-diff-protocol.
class GdataDiffDownloadResponse {
  /// The original object location.
  GdataCompositeMedia? objectLocation;

  GdataDiffDownloadResponse({
    this.objectLocation,
  });

  GdataDiffDownloadResponse.fromJson(core.Map _json)
      : this(
          objectLocation: _json.containsKey('objectLocation')
              ? GdataCompositeMedia.fromJson(_json['objectLocation']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectLocation != null) 'objectLocation': objectLocation!,
      };
}

/// A Diff upload request.
///
/// For details on the Scotty Diff protocol, visit
/// http://go/scotty-diff-protocol.
class GdataDiffUploadRequest {
  /// The location of the checksums for the new object.
  ///
  /// Agents must clone the object located here, as the upload server will
  /// delete the contents once a response is received. For details on the format
  /// of the checksums, see http://go/scotty-diff-protocol.
  GdataCompositeMedia? checksumsInfo;

  /// The location of the new object.
  ///
  /// Agents must clone the object located here, as the upload server will
  /// delete the contents once a response is received.
  GdataCompositeMedia? objectInfo;

  /// The object version of the object that is the base version the incoming
  /// diff script will be applied to.
  ///
  /// This field will always be filled in.
  core.String? objectVersion;

  GdataDiffUploadRequest({
    this.checksumsInfo,
    this.objectInfo,
    this.objectVersion,
  });

  GdataDiffUploadRequest.fromJson(core.Map _json)
      : this(
          checksumsInfo: _json.containsKey('checksumsInfo')
              ? GdataCompositeMedia.fromJson(
                  _json['checksumsInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          objectInfo: _json.containsKey('objectInfo')
              ? GdataCompositeMedia.fromJson(
                  _json['objectInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          objectVersion: _json.containsKey('objectVersion')
              ? _json['objectVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (checksumsInfo != null) 'checksumsInfo': checksumsInfo!,
        if (objectInfo != null) 'objectInfo': objectInfo!,
        if (objectVersion != null) 'objectVersion': objectVersion!,
      };
}

/// Backend response for a Diff upload request.
///
/// For details on the Scotty Diff protocol, visit
/// http://go/scotty-diff-protocol.
class GdataDiffUploadResponse {
  /// The object version of the object at the server.
  ///
  /// Must be included in the end notification response. The version in the end
  /// notification response must correspond to the new version of the object
  /// that is now stored at the server, after the upload.
  core.String? objectVersion;

  /// The location of the original file for a diff upload request.
  ///
  /// Must be filled in if responding to an upload start notification.
  GdataCompositeMedia? originalObject;

  GdataDiffUploadResponse({
    this.objectVersion,
    this.originalObject,
  });

  GdataDiffUploadResponse.fromJson(core.Map _json)
      : this(
          objectVersion: _json.containsKey('objectVersion')
              ? _json['objectVersion'] as core.String
              : null,
          originalObject: _json.containsKey('originalObject')
              ? GdataCompositeMedia.fromJson(_json['originalObject']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectVersion != null) 'objectVersion': objectVersion!,
        if (originalObject != null) 'originalObject': originalObject!,
      };
}

/// Backend response for a Diff get version response.
///
/// For details on the Scotty Diff protocol, visit
/// http://go/scotty-diff-protocol.
class GdataDiffVersionResponse {
  /// The total size of the server object.
  core.String? objectSizeBytes;

  /// The version of the object stored at the server.
  core.String? objectVersion;

  GdataDiffVersionResponse({
    this.objectSizeBytes,
    this.objectVersion,
  });

  GdataDiffVersionResponse.fromJson(core.Map _json)
      : this(
          objectSizeBytes: _json.containsKey('objectSizeBytes')
              ? _json['objectSizeBytes'] as core.String
              : null,
          objectVersion: _json.containsKey('objectVersion')
              ? _json['objectVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectSizeBytes != null) 'objectSizeBytes': objectSizeBytes!,
        if (objectVersion != null) 'objectVersion': objectVersion!,
      };
}

/// Parameters specific to media downloads.
class GdataDownloadParameters {
  /// A boolean to be returned in the response to Scotty.
  ///
  /// Allows/disallows gzip encoding of the payload content when the server
  /// thinks it's advantageous (hence, does not guarantee compression) which
  /// allows Scotty to GZip the response to the client.
  core.bool? allowGzipCompression;

  /// Determining whether or not Apiary should skip the inclusion of any
  /// Content-Range header on its response to Scotty.
  core.bool? ignoreRange;

  GdataDownloadParameters({
    this.allowGzipCompression,
    this.ignoreRange,
  });

  GdataDownloadParameters.fromJson(core.Map _json)
      : this(
          allowGzipCompression: _json.containsKey('allowGzipCompression')
              ? _json['allowGzipCompression'] as core.bool
              : null,
          ignoreRange: _json.containsKey('ignoreRange')
              ? _json['ignoreRange'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowGzipCompression != null)
          'allowGzipCompression': allowGzipCompression!,
        if (ignoreRange != null) 'ignoreRange': ignoreRange!,
      };
}

/// A reference to data stored on the filesystem, on GFS or in blobstore.
class GdataMedia {
  /// Deprecated, use one of explicit hash type fields instead.
  ///
  /// Algorithm used for calculating the hash. As of 2011/01/21, "MD5" is the
  /// only possible value for this field. New values may be added at any time.
  core.String? algorithm;

  /// Use object_id instead.
  core.String? bigstoreObjectRef;
  core.List<core.int> get bigstoreObjectRefAsBytes =>
      convert.base64.decode(bigstoreObjectRef!);

  set bigstoreObjectRefAsBytes(core.List<core.int> _bytes) {
    bigstoreObjectRef =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Blobstore v1 reference, set if reference_type is BLOBSTORE_REF This should
  /// be the byte representation of a blobstore.BlobRef.
  ///
  /// Since Blobstore is deprecating v1, use blobstore2_info instead. For now,
  /// any v2 blob will also be represented in this field as v1 BlobRef.
  core.String? blobRef;
  core.List<core.int> get blobRefAsBytes => convert.base64.decode(blobRef!);

  set blobRefAsBytes(core.List<core.int> _bytes) {
    blobRef =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Blobstore v2 info, set if reference_type is BLOBSTORE_REF and it refers to
  /// a v2 blob.
  GdataBlobstore2Info? blobstore2Info;

  /// A composite media composed of one or more media objects, set if
  /// reference_type is COMPOSITE_MEDIA.
  ///
  /// The media length field must be set to the sum of the lengths of all
  /// composite media objects. Note: All composite media must have length
  /// specified.
  core.List<GdataCompositeMedia>? compositeMedia;

  /// MIME type of the data
  core.String? contentType;

  /// Extended content type information provided for Scotty uploads.
  GdataContentTypeInfo? contentTypeInfo;

  /// A binary data reference for a media download.
  ///
  /// Serves as a technology-agnostic binary reference in some Google
  /// infrastructure. This value is a serialized storage_cosmo.BinaryReference
  /// proto. Storing it as bytes is a hack to get around the fact that the cosmo
  /// proto (as well as others it includes) doesn't support JavaScript. This
  /// prevents us from including the actual type of this field.
  core.String? cosmoBinaryReference;
  core.List<core.int> get cosmoBinaryReferenceAsBytes =>
      convert.base64.decode(cosmoBinaryReference!);

  set cosmoBinaryReferenceAsBytes(core.List<core.int> _bytes) {
    cosmoBinaryReference =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// For Scotty Uploads: Scotty-provided hashes for uploads For Scotty
  /// Downloads: (WARNING: DO NOT USE WITHOUT PERMISSION FROM THE SCOTTY TEAM.)
  /// A Hash provided by the agent to be used to verify the data being
  /// downloaded.
  ///
  /// Currently only supported for inline payloads. Further, only crc32c_hash is
  /// currently supported.
  core.int? crc32cHash;

  /// Set if reference_type is DIFF_CHECKSUMS_RESPONSE.
  GdataDiffChecksumsResponse? diffChecksumsResponse;

  /// Set if reference_type is DIFF_DOWNLOAD_RESPONSE.
  GdataDiffDownloadResponse? diffDownloadResponse;

  /// Set if reference_type is DIFF_UPLOAD_REQUEST.
  GdataDiffUploadRequest? diffUploadRequest;

  /// Set if reference_type is DIFF_UPLOAD_RESPONSE.
  GdataDiffUploadResponse? diffUploadResponse;

  /// Set if reference_type is DIFF_VERSION_RESPONSE.
  GdataDiffVersionResponse? diffVersionResponse;

  /// Parameters for a media download.
  GdataDownloadParameters? downloadParameters;

  /// Original file name
  core.String? filename;

  /// Deprecated, use one of explicit hash type fields instead.
  ///
  /// These two hash related fields will only be populated on Scotty based media
  /// uploads and will contain the content of the hash group in the
  /// NotificationRequest:
  /// http://cs/#google3/uploader/service/proto/upload_listener.proto&q=class:Hash
  /// Hex encoded hash value of the uploaded media.
  core.String? hash;

  /// For Scotty uploads only.
  ///
  /// If a user sends a hash code and the backend has requested that Scotty
  /// verify the upload against the client hash, Scotty will perform the check
  /// on behalf of the backend and will reject it if the hashes don't match.
  /// This is set to true if Scotty performed this verification.
  core.bool? hashVerified;

  /// Media data, set if reference_type is INLINE
  core.String? inline;
  core.List<core.int> get inlineAsBytes => convert.base64.decode(inline!);

  set inlineAsBytes(core.List<core.int> _bytes) {
    inline =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// |is_potential_retry| is set false only when Scotty is certain that it has
  /// not sent the request before.
  ///
  /// When a client resumes an upload, this field must be set true in agent
  /// calls, because Scotty cannot be certain that it has never sent the request
  /// before due to potential failure in the session state persistence.
  core.bool? isPotentialRetry;

  /// Size of the data, in bytes
  core.String? length;

  /// Scotty-provided MD5 hash for an upload.
  core.String? md5Hash;
  core.List<core.int> get md5HashAsBytes => convert.base64.decode(md5Hash!);

  set md5HashAsBytes(core.List<core.int> _bytes) {
    md5Hash =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Media id to forward to the operation GetMedia.
  ///
  /// Can be set if reference_type is GET_MEDIA.
  core.String? mediaId;
  core.List<core.int> get mediaIdAsBytes => convert.base64.decode(mediaId!);

  set mediaIdAsBytes(core.List<core.int> _bytes) {
    mediaId =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Reference to a TI Blob, set if reference_type is BIGSTORE_REF.
  GdataObjectId? objectId;

  /// Path to the data, set if reference_type is PATH
  core.String? path;

  /// Describes what the field reference contains.
  /// Possible string values are:
  /// - "PATH" : Reference contains a GFS path or a local path.
  /// - "BLOB_REF" : Reference points to a blobstore object. This could be
  /// either a v1 blob_ref or a v2 blobstore2_info. Clients should check
  /// blobstore2_info first, since v1 is being deprecated.
  /// - "INLINE" : Data is included into this proto buffer
  /// - "GET_MEDIA" : Data should be accessed from the current service using the
  /// operation GetMedia.
  /// - "COMPOSITE_MEDIA" : The content for this media object is stored across
  /// multiple partial media objects under the composite_media field.
  /// - "BIGSTORE_REF" : Reference points to a bigstore object
  /// - "DIFF_VERSION_RESPONSE" : Indicates the data is stored in
  /// diff_version_response.
  /// - "DIFF_CHECKSUMS_RESPONSE" : Indicates the data is stored in
  /// diff_checksums_response.
  /// - "DIFF_DOWNLOAD_RESPONSE" : Indicates the data is stored in
  /// diff_download_response.
  /// - "DIFF_UPLOAD_REQUEST" : Indicates the data is stored in
  /// diff_upload_request.
  /// - "DIFF_UPLOAD_RESPONSE" : Indicates the data is stored in
  /// diff_upload_response.
  /// - "COSMO_BINARY_REFERENCE" : Indicates the data is stored in
  /// cosmo_binary_reference.
  /// - "ARBITRARY_BYTES" : Informs Scotty to generate a response payload with
  /// the size specified in the length field. The contents of the payload are
  /// generated by Scotty and are undefined. This is useful for testing download
  /// speeds between the user and Scotty without involving a real payload
  /// source. Note: range is not supported when using arbitrary_bytes.
  core.String? referenceType;

  /// Scotty-provided SHA1 hash for an upload.
  core.String? sha1Hash;
  core.List<core.int> get sha1HashAsBytes => convert.base64.decode(sha1Hash!);

  set sha1HashAsBytes(core.List<core.int> _bytes) {
    sha1Hash =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Scotty-provided SHA256 hash for an upload.
  core.String? sha256Hash;
  core.List<core.int> get sha256HashAsBytes =>
      convert.base64.decode(sha256Hash!);

  set sha256HashAsBytes(core.List<core.int> _bytes) {
    sha256Hash =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Time at which the media data was last updated, in milliseconds since UNIX
  /// epoch
  core.String? timestamp;

  /// A unique fingerprint/version id for the media data
  core.String? token;

  GdataMedia({
    this.algorithm,
    this.bigstoreObjectRef,
    this.blobRef,
    this.blobstore2Info,
    this.compositeMedia,
    this.contentType,
    this.contentTypeInfo,
    this.cosmoBinaryReference,
    this.crc32cHash,
    this.diffChecksumsResponse,
    this.diffDownloadResponse,
    this.diffUploadRequest,
    this.diffUploadResponse,
    this.diffVersionResponse,
    this.downloadParameters,
    this.filename,
    this.hash,
    this.hashVerified,
    this.inline,
    this.isPotentialRetry,
    this.length,
    this.md5Hash,
    this.mediaId,
    this.objectId,
    this.path,
    this.referenceType,
    this.sha1Hash,
    this.sha256Hash,
    this.timestamp,
    this.token,
  });

  GdataMedia.fromJson(core.Map _json)
      : this(
          algorithm: _json.containsKey('algorithm')
              ? _json['algorithm'] as core.String
              : null,
          bigstoreObjectRef: _json.containsKey('bigstoreObjectRef')
              ? _json['bigstoreObjectRef'] as core.String
              : null,
          blobRef: _json.containsKey('blobRef')
              ? _json['blobRef'] as core.String
              : null,
          blobstore2Info: _json.containsKey('blobstore2Info')
              ? GdataBlobstore2Info.fromJson(_json['blobstore2Info']
                  as core.Map<core.String, core.dynamic>)
              : null,
          compositeMedia: _json.containsKey('compositeMedia')
              ? (_json['compositeMedia'] as core.List)
                  .map((value) => GdataCompositeMedia.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          contentType: _json.containsKey('contentType')
              ? _json['contentType'] as core.String
              : null,
          contentTypeInfo: _json.containsKey('contentTypeInfo')
              ? GdataContentTypeInfo.fromJson(_json['contentTypeInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          cosmoBinaryReference: _json.containsKey('cosmoBinaryReference')
              ? _json['cosmoBinaryReference'] as core.String
              : null,
          crc32cHash: _json.containsKey('crc32cHash')
              ? _json['crc32cHash'] as core.int
              : null,
          diffChecksumsResponse: _json.containsKey('diffChecksumsResponse')
              ? GdataDiffChecksumsResponse.fromJson(
                  _json['diffChecksumsResponse']
                      as core.Map<core.String, core.dynamic>)
              : null,
          diffDownloadResponse: _json.containsKey('diffDownloadResponse')
              ? GdataDiffDownloadResponse.fromJson(_json['diffDownloadResponse']
                  as core.Map<core.String, core.dynamic>)
              : null,
          diffUploadRequest: _json.containsKey('diffUploadRequest')
              ? GdataDiffUploadRequest.fromJson(_json['diffUploadRequest']
                  as core.Map<core.String, core.dynamic>)
              : null,
          diffUploadResponse: _json.containsKey('diffUploadResponse')
              ? GdataDiffUploadResponse.fromJson(_json['diffUploadResponse']
                  as core.Map<core.String, core.dynamic>)
              : null,
          diffVersionResponse: _json.containsKey('diffVersionResponse')
              ? GdataDiffVersionResponse.fromJson(_json['diffVersionResponse']
                  as core.Map<core.String, core.dynamic>)
              : null,
          downloadParameters: _json.containsKey('downloadParameters')
              ? GdataDownloadParameters.fromJson(_json['downloadParameters']
                  as core.Map<core.String, core.dynamic>)
              : null,
          filename: _json.containsKey('filename')
              ? _json['filename'] as core.String
              : null,
          hash: _json.containsKey('hash') ? _json['hash'] as core.String : null,
          hashVerified: _json.containsKey('hashVerified')
              ? _json['hashVerified'] as core.bool
              : null,
          inline: _json.containsKey('inline')
              ? _json['inline'] as core.String
              : null,
          isPotentialRetry: _json.containsKey('isPotentialRetry')
              ? _json['isPotentialRetry'] as core.bool
              : null,
          length: _json.containsKey('length')
              ? _json['length'] as core.String
              : null,
          md5Hash: _json.containsKey('md5Hash')
              ? _json['md5Hash'] as core.String
              : null,
          mediaId: _json.containsKey('mediaId')
              ? _json['mediaId'] as core.String
              : null,
          objectId: _json.containsKey('objectId')
              ? GdataObjectId.fromJson(
                  _json['objectId'] as core.Map<core.String, core.dynamic>)
              : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          referenceType: _json.containsKey('referenceType')
              ? _json['referenceType'] as core.String
              : null,
          sha1Hash: _json.containsKey('sha1Hash')
              ? _json['sha1Hash'] as core.String
              : null,
          sha256Hash: _json.containsKey('sha256Hash')
              ? _json['sha256Hash'] as core.String
              : null,
          timestamp: _json.containsKey('timestamp')
              ? _json['timestamp'] as core.String
              : null,
          token:
              _json.containsKey('token') ? _json['token'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (algorithm != null) 'algorithm': algorithm!,
        if (bigstoreObjectRef != null) 'bigstoreObjectRef': bigstoreObjectRef!,
        if (blobRef != null) 'blobRef': blobRef!,
        if (blobstore2Info != null) 'blobstore2Info': blobstore2Info!,
        if (compositeMedia != null) 'compositeMedia': compositeMedia!,
        if (contentType != null) 'contentType': contentType!,
        if (contentTypeInfo != null) 'contentTypeInfo': contentTypeInfo!,
        if (cosmoBinaryReference != null)
          'cosmoBinaryReference': cosmoBinaryReference!,
        if (crc32cHash != null) 'crc32cHash': crc32cHash!,
        if (diffChecksumsResponse != null)
          'diffChecksumsResponse': diffChecksumsResponse!,
        if (diffDownloadResponse != null)
          'diffDownloadResponse': diffDownloadResponse!,
        if (diffUploadRequest != null) 'diffUploadRequest': diffUploadRequest!,
        if (diffUploadResponse != null)
          'diffUploadResponse': diffUploadResponse!,
        if (diffVersionResponse != null)
          'diffVersionResponse': diffVersionResponse!,
        if (downloadParameters != null)
          'downloadParameters': downloadParameters!,
        if (filename != null) 'filename': filename!,
        if (hash != null) 'hash': hash!,
        if (hashVerified != null) 'hashVerified': hashVerified!,
        if (inline != null) 'inline': inline!,
        if (isPotentialRetry != null) 'isPotentialRetry': isPotentialRetry!,
        if (length != null) 'length': length!,
        if (md5Hash != null) 'md5Hash': md5Hash!,
        if (mediaId != null) 'mediaId': mediaId!,
        if (objectId != null) 'objectId': objectId!,
        if (path != null) 'path': path!,
        if (referenceType != null) 'referenceType': referenceType!,
        if (sha1Hash != null) 'sha1Hash': sha1Hash!,
        if (sha256Hash != null) 'sha256Hash': sha256Hash!,
        if (timestamp != null) 'timestamp': timestamp!,
        if (token != null) 'token': token!,
      };
}

/// This is a copy of the tech.blob.ObjectId proto, which could not be used
/// directly here due to transitive closure issues with JavaScript support; see
/// http://b/8801763.
class GdataObjectId {
  /// The name of the bucket to which this object belongs.
  core.String? bucketName;

  /// Generation of the object.
  ///
  /// Generations are monotonically increasing across writes, allowing them to
  /// be be compared to determine which generation is newer. If this is omitted
  /// in a request, then you are requesting the live object. See
  /// http://go/bigstore-versions
  core.String? generation;

  /// The name of the object.
  core.String? objectName;

  GdataObjectId({
    this.bucketName,
    this.generation,
    this.objectName,
  });

  GdataObjectId.fromJson(core.Map _json)
      : this(
          bucketName: _json.containsKey('bucketName')
              ? _json['bucketName'] as core.String
              : null,
          generation: _json.containsKey('generation')
              ? _json['generation'] as core.String
              : null,
          objectName: _json.containsKey('objectName')
              ? _json['objectName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucketName != null) 'bucketName': bucketName!,
        if (generation != null) 'generation': generation!,
        if (objectName != null) 'objectName': objectName!,
      };
}

/// Android App Bundle (AAB) information for a Firebase app.
class GoogleFirebaseAppdistroV1AabInfo {
  /// App bundle integration state.
  ///
  /// Only valid for android apps.
  /// Possible string values are:
  /// - "AAB_INTEGRATION_STATE_UNSPECIFIED" : Aab integration state unspecified
  /// - "INTEGRATED" : App can receive app bundle uploads
  /// - "PLAY_ACCOUNT_NOT_LINKED" : Firebase project is not linked to a Play
  /// developer account
  /// - "NO_APP_WITH_GIVEN_BUNDLE_ID_IN_PLAY_ACCOUNT" : There is no app in
  /// linked Play developer account with the same bundle id
  /// - "APP_NOT_PUBLISHED" : The app in Play developer account is not in a
  /// published state
  /// - "AAB_STATE_UNAVAILABLE" : Play App status is unavailable
  /// - "PLAY_IAS_TERMS_NOT_ACCEPTED" : Play IAS terms not accepted
  core.String? integrationState;

  /// The name of the aab info.
  ///
  /// Format: `projects/{project_number}/apps/{app}/aabInfo`
  core.String? name;

  /// App bundle test certificate generated for the app.
  ///
  /// Set after the first app bundle is uploaded for this app.
  GoogleFirebaseAppdistroV1TestCertificate? testCertificate;

  GoogleFirebaseAppdistroV1AabInfo({
    this.integrationState,
    this.name,
    this.testCertificate,
  });

  GoogleFirebaseAppdistroV1AabInfo.fromJson(core.Map _json)
      : this(
          integrationState: _json.containsKey('integrationState')
              ? _json['integrationState'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          testCertificate: _json.containsKey('testCertificate')
              ? GoogleFirebaseAppdistroV1TestCertificate.fromJson(
                  _json['testCertificate']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (integrationState != null) 'integrationState': integrationState!,
        if (name != null) 'name': name!,
        if (testCertificate != null) 'testCertificate': testCertificate!,
      };
}

/// The Request message for batch adding testers
class GoogleFirebaseAppdistroV1BatchAddTestersRequest {
  /// The emails to be added as testers.
  ///
  /// A maximum of 999 and a minimum of 1 tester can be created in a batch.
  ///
  /// Required.
  core.List<core.String>? emails;

  GoogleFirebaseAppdistroV1BatchAddTestersRequest({
    this.emails,
  });

  GoogleFirebaseAppdistroV1BatchAddTestersRequest.fromJson(core.Map _json)
      : this(
          emails: _json.containsKey('emails')
              ? (_json['emails'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (emails != null) 'emails': emails!,
      };
}

/// The Response message for BatchAddTesters
class GoogleFirebaseAppdistroV1BatchAddTestersResponse {
  /// The testers which are created and/or already exist
  core.List<GoogleFirebaseAppdistroV1Tester>? testers;

  GoogleFirebaseAppdistroV1BatchAddTestersResponse({
    this.testers,
  });

  GoogleFirebaseAppdistroV1BatchAddTestersResponse.fromJson(core.Map _json)
      : this(
          testers: _json.containsKey('testers')
              ? (_json['testers'] as core.List)
                  .map((value) => GoogleFirebaseAppdistroV1Tester.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (testers != null) 'testers': testers!,
      };
}

/// The request message for `BatchDeleteReleases`.
class GoogleFirebaseAppdistroV1BatchDeleteReleasesRequest {
  /// The names of the releases to delete.
  ///
  /// A maximum of 100 releases can be deleted per request. Format:
  /// `projects/{project_number}/apps/{app}/releases/{release}`
  ///
  /// Required.
  core.List<core.String>? names;

  GoogleFirebaseAppdistroV1BatchDeleteReleasesRequest({
    this.names,
  });

  GoogleFirebaseAppdistroV1BatchDeleteReleasesRequest.fromJson(core.Map _json)
      : this(
          names: _json.containsKey('names')
              ? (_json['names'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (names != null) 'names': names!,
      };
}

/// The request message for `BatchRemoveTesters`.
class GoogleFirebaseAppdistroV1BatchRemoveTestersRequest {
  /// The email addresses of the testers to be removed.
  ///
  /// A maximum of 999 and a minimum of 1 testers can be deleted in a batch.
  ///
  /// Required.
  core.List<core.String>? emails;

  GoogleFirebaseAppdistroV1BatchRemoveTestersRequest({
    this.emails,
  });

  GoogleFirebaseAppdistroV1BatchRemoveTestersRequest.fromJson(core.Map _json)
      : this(
          emails: _json.containsKey('emails')
              ? (_json['emails'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (emails != null) 'emails': emails!,
      };
}

/// The response message for 'BatchRemoveTesters'
class GoogleFirebaseAppdistroV1BatchRemoveTestersResponse {
  /// List of deleted tester emails
  core.List<core.String>? emails;

  GoogleFirebaseAppdistroV1BatchRemoveTestersResponse({
    this.emails,
  });

  GoogleFirebaseAppdistroV1BatchRemoveTestersResponse.fromJson(core.Map _json)
      : this(
          emails: _json.containsKey('emails')
              ? (_json['emails'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (emails != null) 'emails': emails!,
      };
}

/// The request message for `DistributeRelease`.
class GoogleFirebaseAppdistroV1DistributeReleaseRequest {
  /// A repeated list of group aliases to give access to this release.
  ///
  /// A combined maximum of 999 `tester_emails` and `group_aliases` can be
  /// specified in single request.
  core.List<core.String>? groupAliases;

  /// A list of tester email addresses to give access to this release.
  ///
  /// A combined maximum of 999 `tester_emails` and `group_aliases` can be
  /// specified in single request.
  core.List<core.String>? testerEmails;

  GoogleFirebaseAppdistroV1DistributeReleaseRequest({
    this.groupAliases,
    this.testerEmails,
  });

  GoogleFirebaseAppdistroV1DistributeReleaseRequest.fromJson(core.Map _json)
      : this(
          groupAliases: _json.containsKey('groupAliases')
              ? (_json['groupAliases'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          testerEmails: _json.containsKey('testerEmails')
              ? (_json['testerEmails'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (groupAliases != null) 'groupAliases': groupAliases!,
        if (testerEmails != null) 'testerEmails': testerEmails!,
      };
}

/// The response message for `DistributeRelease`.
typedef GoogleFirebaseAppdistroV1DistributeReleaseResponse = $Empty;

/// The response message for `ListReleases`.
class GoogleFirebaseAppdistroV1ListReleasesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The releases
  core.List<GoogleFirebaseAppdistroV1Release>? releases;

  GoogleFirebaseAppdistroV1ListReleasesResponse({
    this.nextPageToken,
    this.releases,
  });

  GoogleFirebaseAppdistroV1ListReleasesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          releases: _json.containsKey('releases')
              ? (_json['releases'] as core.List)
                  .map((value) => GoogleFirebaseAppdistroV1Release.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (releases != null) 'releases': releases!,
      };
}

/// The response message for `ListTesters`.
class GoogleFirebaseAppdistroV1ListTestersResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The testers listed.
  core.List<GoogleFirebaseAppdistroV1Tester>? testers;

  GoogleFirebaseAppdistroV1ListTestersResponse({
    this.nextPageToken,
    this.testers,
  });

  GoogleFirebaseAppdistroV1ListTestersResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          testers: _json.containsKey('testers')
              ? (_json['testers'] as core.List)
                  .map((value) => GoogleFirebaseAppdistroV1Tester.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (testers != null) 'testers': testers!,
      };
}

/// A release of a Firebase app.
class GoogleFirebaseAppdistroV1Release {
  /// Build version of the release.
  ///
  /// For an Android release, the build version is the `versionCode`. For an iOS
  /// release, the build version is the `CFBundleVersion`.
  ///
  /// Output only.
  core.String? buildVersion;

  /// The time the release was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Display version of the release.
  ///
  /// For an Android release, the display version is the `versionName`. For an
  /// iOS release, the display version is the `CFBundleShortVersionString`.
  ///
  /// Output only.
  core.String? displayVersion;

  /// The name of the release.
  ///
  /// Format: `projects/{project_number}/apps/{app}/releases/{release}`
  core.String? name;

  /// Notes of the release.
  GoogleFirebaseAppdistroV1ReleaseNotes? releaseNotes;

  GoogleFirebaseAppdistroV1Release({
    this.buildVersion,
    this.createTime,
    this.displayVersion,
    this.name,
    this.releaseNotes,
  });

  GoogleFirebaseAppdistroV1Release.fromJson(core.Map _json)
      : this(
          buildVersion: _json.containsKey('buildVersion')
              ? _json['buildVersion'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          displayVersion: _json.containsKey('displayVersion')
              ? _json['displayVersion'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          releaseNotes: _json.containsKey('releaseNotes')
              ? GoogleFirebaseAppdistroV1ReleaseNotes.fromJson(
                  _json['releaseNotes'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buildVersion != null) 'buildVersion': buildVersion!,
        if (createTime != null) 'createTime': createTime!,
        if (displayVersion != null) 'displayVersion': displayVersion!,
        if (name != null) 'name': name!,
        if (releaseNotes != null) 'releaseNotes': releaseNotes!,
      };
}

/// Notes that belong to a release.
class GoogleFirebaseAppdistroV1ReleaseNotes {
  /// The text of the release notes.
  core.String? text;

  GoogleFirebaseAppdistroV1ReleaseNotes({
    this.text,
  });

  GoogleFirebaseAppdistroV1ReleaseNotes.fromJson(core.Map _json)
      : this(
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (text != null) 'text': text!,
      };
}

/// App bundle test certificate
class GoogleFirebaseAppdistroV1TestCertificate {
  /// Hex string of MD5 hash of the test certificate used to resign the AAB
  core.String? hashMd5;

  /// Hex string of SHA1 hash of the test certificate used to resign the AAB
  core.String? hashSha1;

  /// Hex string of SHA256 hash of the test certificate used to resign the AAB
  core.String? hashSha256;

  GoogleFirebaseAppdistroV1TestCertificate({
    this.hashMd5,
    this.hashSha1,
    this.hashSha256,
  });

  GoogleFirebaseAppdistroV1TestCertificate.fromJson(core.Map _json)
      : this(
          hashMd5: _json.containsKey('hashMd5')
              ? _json['hashMd5'] as core.String
              : null,
          hashSha1: _json.containsKey('hashSha1')
              ? _json['hashSha1'] as core.String
              : null,
          hashSha256: _json.containsKey('hashSha256')
              ? _json['hashSha256'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hashMd5 != null) 'hashMd5': hashMd5!,
        if (hashSha1 != null) 'hashSha1': hashSha1!,
        if (hashSha256 != null) 'hashSha256': hashSha256!,
      };
}

/// A person that can be invited to test apps in a Firebase project.
class GoogleFirebaseAppdistroV1Tester {
  /// The name of the tester associated with the Google account used to accept
  /// the tester invitation.
  core.String? displayName;

  /// The name of the Tester.
  ///
  /// Format: `projects/{project_number}/testers/{email}`
  core.String? name;

  GoogleFirebaseAppdistroV1Tester({
    this.displayName,
    this.name,
  });

  GoogleFirebaseAppdistroV1Tester.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
      };
}

/// Request message for `UploadRelease`.
class GoogleFirebaseAppdistroV1UploadReleaseRequest {
  /// Binary to upload
  GdataMedia? blob;

  GoogleFirebaseAppdistroV1UploadReleaseRequest({
    this.blob,
  });

  GoogleFirebaseAppdistroV1UploadReleaseRequest.fromJson(core.Map _json)
      : this(
          blob: _json.containsKey('blob')
              ? GdataMedia.fromJson(
                  _json['blob'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blob != null) 'blob': blob!,
      };
}

/// The request message for Operations.CancelOperation.
typedef GoogleLongrunningCancelOperationRequest = $Empty;

/// The response message for Operations.ListOperations.
class GoogleLongrunningListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<GoogleLongrunningOperation>? operations;

  GoogleLongrunningListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  GoogleLongrunningListOperationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
                  .map((value) => GoogleLongrunningOperation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class GoogleLongrunningOperation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  GoogleRpcStatus? error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String? name;

  /// The normal response of the operation in case of success.
  ///
  /// If the original method returns no data on success, such as `Delete`, the
  /// response is `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  GoogleLongrunningOperation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  GoogleLongrunningOperation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? GoogleRpcStatus.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? _json['response'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (done != null) 'done': done!,
        if (error != null) 'error': error!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (response != null) 'response': response!,
      };
}

/// The request message for Operations.WaitOperation.
class GoogleLongrunningWaitOperationRequest {
  /// The maximum duration to wait before timing out.
  ///
  /// If left blank, the wait will be at most the time permitted by the
  /// underlying HTTP/RPC protocol. If RPC context deadline is also specified,
  /// the shorter one will be used.
  core.String? timeout;

  GoogleLongrunningWaitOperationRequest({
    this.timeout,
  });

  GoogleLongrunningWaitOperationRequest.fromJson(core.Map _json)
      : this(
          timeout: _json.containsKey('timeout')
              ? _json['timeout'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (timeout != null) 'timeout': timeout!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status;
