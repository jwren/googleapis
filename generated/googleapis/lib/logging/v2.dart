// This is a generated file (see the discoveryapis_generator project).

library googleapis.logging.v2;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client logging/v2';

/** Writes log entries and manages your Stackdriver Logging configuration. */
class LoggingApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";

  /** View your data across Google Cloud Platform services */
  static const CloudPlatformReadOnlyScope = "https://www.googleapis.com/auth/cloud-platform.read-only";

  /** Administrate log data for your projects */
  static const LoggingAdminScope = "https://www.googleapis.com/auth/logging.admin";

  /** View log data for your projects */
  static const LoggingReadScope = "https://www.googleapis.com/auth/logging.read";

  /** Submit log data for your projects */
  static const LoggingWriteScope = "https://www.googleapis.com/auth/logging.write";


  final commons.ApiRequester _requester;

  BillingAccountsResourceApi get billingAccounts => new BillingAccountsResourceApi(_requester);
  EntriesResourceApi get entries => new EntriesResourceApi(_requester);
  FoldersResourceApi get folders => new FoldersResourceApi(_requester);
  MonitoredResourceDescriptorsResourceApi get monitoredResourceDescriptors => new MonitoredResourceDescriptorsResourceApi(_requester);
  OrganizationsResourceApi get organizations => new OrganizationsResourceApi(_requester);
  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  LoggingApi(http.Client client, {core.String rootUrl: "https://logging.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class BillingAccountsResourceApi {
  final commons.ApiRequester _requester;

  BillingAccountsLogsResourceApi get logs => new BillingAccountsLogsResourceApi(_requester);
  BillingAccountsSinksResourceApi get sinks => new BillingAccountsSinksResourceApi(_requester);

  BillingAccountsResourceApi(commons.ApiRequester client) : 
      _requester = client;
}


class BillingAccountsLogsResourceApi {
  final commons.ApiRequester _requester;

  BillingAccountsLogsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes all the log entries in a log. The log reappears if it receives new
   * entries. Log entries written shortly before the delete operation might not
   * be deleted.
   *
   * Request parameters:
   *
   * [logName] - Required. The resource name of the log to delete:
   * "projects/[PROJECT_ID]/logs/[LOG_ID]"
   * "organizations/[ORGANIZATION_ID]/logs/[LOG_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID]"
   * "folders/[FOLDER_ID]/logs/[LOG_ID]"
   * [LOG_ID] must be URL-encoded. For example,
   * "projects/my-project-id/logs/syslog",
   * "organizations/1234567890/logs/cloudresourcemanager.googleapis.com%2Factivity".
   * For more information about log names, see LogEntry.
   * Value must have pattern "^billingAccounts/[^/]+/logs/[^/]+$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String logName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (logName == null) {
      throw new core.ArgumentError("Parameter logName is required.");
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$logName');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Lists the logs in projects, organizations, folders, or billing accounts.
   * Only logs that have entries are listed.
   *
   * Request parameters:
   *
   * [parent] - Required. The resource name that owns the logs:
   * "projects/[PROJECT_ID]"
   * "organizations/[ORGANIZATION_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]"
   * "folders/[FOLDER_ID]"
   *
   * Value must have pattern "^billingAccounts/[^/]+$".
   *
   * [pageToken] - Optional. If present, then retrieve the next batch of results
   * from the preceding call to this method. pageToken must be the value of
   * nextPageToken from the previous response. The values of other method
   * parameters should be identical to those in the previous call.
   *
   * [pageSize] - Optional. The maximum number of results to return from this
   * request. Non-positive values are ignored. The presence of nextPageToken in
   * the response indicates that more results might be available.
   *
   * Completes with a [ListLogsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListLogsResponse> list(core.String parent, {core.String pageToken, core.int pageSize}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/logs';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLogsResponse.fromJson(data));
  }

}


class BillingAccountsSinksResourceApi {
  final commons.ApiRequester _requester;

  BillingAccountsSinksResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a sink that exports specified log entries to a destination. The
   * export of newly-ingested log entries begins immediately, unless the current
   * time is outside the sink's start and end times or the sink's
   * writer_identity is not permitted to write to the destination. A sink can
   * export log entries only from the resource owning the sink.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [parent] - Required. The resource in which to create the sink:
   * "projects/[PROJECT_ID]"
   * "organizations/[ORGANIZATION_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]"
   * "folders/[FOLDER_ID]"
   * Examples: "projects/my-logging-project", "organizations/123456789".
   * Value must have pattern "^billingAccounts/[^/]+$".
   *
   * [uniqueWriterIdentity] - Optional. Determines the kind of IAM identity
   * returned as writer_identity in the new sink. If this value is omitted or
   * set to false, and if the sink's parent is a project, then the value
   * returned as writer_identity is the same group or service account used by
   * Stackdriver Logging before the addition of writer identities to this API.
   * The sink's destination must be in the same project as the sink itself.If
   * this field is set to true, or if the sink is owned by a non-project
   * resource such as an organization, then the value of writer_identity will be
   * a unique service account used only for exports from the new sink. For more
   * information, see writer_identity in LogSink.
   *
   * Completes with a [LogSink].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogSink> create(LogSink request, core.String parent, {core.bool uniqueWriterIdentity}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (uniqueWriterIdentity != null) {
      _queryParams["uniqueWriterIdentity"] = ["${uniqueWriterIdentity}"];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/sinks';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogSink.fromJson(data));
  }

  /**
   * Deletes a sink. If the sink has a unique writer_identity, then that service
   * account is also deleted.
   *
   * Request parameters:
   *
   * [sinkName] - Required. The full resource name of the sink to delete,
   * including the parent resource and the sink identifier:
   * "projects/[PROJECT_ID]/sinks/[SINK_ID]"
   * "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
   * "folders/[FOLDER_ID]/sinks/[SINK_ID]"
   * Example: "projects/my-project-id/sinks/my-sink-id".
   * Value must have pattern "^billingAccounts/[^/]+/sinks/[^/]+$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String sinkName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (sinkName == null) {
      throw new core.ArgumentError("Parameter sinkName is required.");
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Gets a sink.
   *
   * Request parameters:
   *
   * [sinkName] - Required. The resource name of the sink:
   * "projects/[PROJECT_ID]/sinks/[SINK_ID]"
   * "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
   * "folders/[FOLDER_ID]/sinks/[SINK_ID]"
   * Example: "projects/my-project-id/sinks/my-sink-id".
   * Value must have pattern "^billingAccounts/[^/]+/sinks/[^/]+$".
   *
   * Completes with a [LogSink].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogSink> get(core.String sinkName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (sinkName == null) {
      throw new core.ArgumentError("Parameter sinkName is required.");
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogSink.fromJson(data));
  }

  /**
   * Lists sinks.
   *
   * Request parameters:
   *
   * [parent] - Required. The parent resource whose sinks are to be listed:
   * "projects/[PROJECT_ID]"
   * "organizations/[ORGANIZATION_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]"
   * "folders/[FOLDER_ID]"
   *
   * Value must have pattern "^billingAccounts/[^/]+$".
   *
   * [pageToken] - Optional. If present, then retrieve the next batch of results
   * from the preceding call to this method. pageToken must be the value of
   * nextPageToken from the previous response. The values of other method
   * parameters should be identical to those in the previous call.
   *
   * [pageSize] - Optional. The maximum number of results to return from this
   * request. Non-positive values are ignored. The presence of nextPageToken in
   * the response indicates that more results might be available.
   *
   * Completes with a [ListSinksResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListSinksResponse> list(core.String parent, {core.String pageToken, core.int pageSize}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/sinks';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListSinksResponse.fromJson(data));
  }

  /**
   * Updates a sink. If the named sink doesn't exist, then this method is
   * identical to sinks.create. If the named sink does exist, then this method
   * replaces the following fields in the existing sink with values from the new
   * sink: destination, filter, output_version_format, start_time, and end_time.
   * The updated filter might also have a new writer_identity; see the
   * unique_writer_identity field.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [sinkName] - Required. The full resource name of the sink to update,
   * including the parent resource and the sink identifier:
   * "projects/[PROJECT_ID]/sinks/[SINK_ID]"
   * "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
   * "folders/[FOLDER_ID]/sinks/[SINK_ID]"
   * Example: "projects/my-project-id/sinks/my-sink-id".
   * Value must have pattern "^billingAccounts/[^/]+/sinks/[^/]+$".
   *
   * [uniqueWriterIdentity] - Optional. See sinks.create for a description of
   * this field. When updating a sink, the effect of this field on the value of
   * writer_identity in the updated sink depends on both the old and new values
   * of this field:
   * If the old and new values of this field are both false or both true, then
   * there is no change to the sink's writer_identity.
   * If the old value is false and the new value is true, then writer_identity
   * is changed to a unique service account.
   * It is an error if the old value is true and the new value is set to false
   * or defaulted to false.
   *
   * Completes with a [LogSink].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogSink> update(LogSink request, core.String sinkName, {core.bool uniqueWriterIdentity}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (sinkName == null) {
      throw new core.ArgumentError("Parameter sinkName is required.");
    }
    if (uniqueWriterIdentity != null) {
      _queryParams["uniqueWriterIdentity"] = ["${uniqueWriterIdentity}"];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogSink.fromJson(data));
  }

}


class EntriesResourceApi {
  final commons.ApiRequester _requester;

  EntriesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Lists log entries. Use this method to retrieve log entries from Stackdriver
   * Logging. For ways to export log entries, see Exporting Logs.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [ListLogEntriesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListLogEntriesResponse> list(ListLogEntriesRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'v2/entries:list';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLogEntriesResponse.fromJson(data));
  }

  /**
   * Writes log entries to Stackdriver Logging.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [WriteLogEntriesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<WriteLogEntriesResponse> write(WriteLogEntriesRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'v2/entries:write';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new WriteLogEntriesResponse.fromJson(data));
  }

}


class FoldersResourceApi {
  final commons.ApiRequester _requester;

  FoldersLogsResourceApi get logs => new FoldersLogsResourceApi(_requester);
  FoldersSinksResourceApi get sinks => new FoldersSinksResourceApi(_requester);

  FoldersResourceApi(commons.ApiRequester client) : 
      _requester = client;
}


class FoldersLogsResourceApi {
  final commons.ApiRequester _requester;

  FoldersLogsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes all the log entries in a log. The log reappears if it receives new
   * entries. Log entries written shortly before the delete operation might not
   * be deleted.
   *
   * Request parameters:
   *
   * [logName] - Required. The resource name of the log to delete:
   * "projects/[PROJECT_ID]/logs/[LOG_ID]"
   * "organizations/[ORGANIZATION_ID]/logs/[LOG_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID]"
   * "folders/[FOLDER_ID]/logs/[LOG_ID]"
   * [LOG_ID] must be URL-encoded. For example,
   * "projects/my-project-id/logs/syslog",
   * "organizations/1234567890/logs/cloudresourcemanager.googleapis.com%2Factivity".
   * For more information about log names, see LogEntry.
   * Value must have pattern "^folders/[^/]+/logs/[^/]+$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String logName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (logName == null) {
      throw new core.ArgumentError("Parameter logName is required.");
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$logName');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Lists the logs in projects, organizations, folders, or billing accounts.
   * Only logs that have entries are listed.
   *
   * Request parameters:
   *
   * [parent] - Required. The resource name that owns the logs:
   * "projects/[PROJECT_ID]"
   * "organizations/[ORGANIZATION_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]"
   * "folders/[FOLDER_ID]"
   *
   * Value must have pattern "^folders/[^/]+$".
   *
   * [pageToken] - Optional. If present, then retrieve the next batch of results
   * from the preceding call to this method. pageToken must be the value of
   * nextPageToken from the previous response. The values of other method
   * parameters should be identical to those in the previous call.
   *
   * [pageSize] - Optional. The maximum number of results to return from this
   * request. Non-positive values are ignored. The presence of nextPageToken in
   * the response indicates that more results might be available.
   *
   * Completes with a [ListLogsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListLogsResponse> list(core.String parent, {core.String pageToken, core.int pageSize}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/logs';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLogsResponse.fromJson(data));
  }

}


class FoldersSinksResourceApi {
  final commons.ApiRequester _requester;

  FoldersSinksResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a sink that exports specified log entries to a destination. The
   * export of newly-ingested log entries begins immediately, unless the current
   * time is outside the sink's start and end times or the sink's
   * writer_identity is not permitted to write to the destination. A sink can
   * export log entries only from the resource owning the sink.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [parent] - Required. The resource in which to create the sink:
   * "projects/[PROJECT_ID]"
   * "organizations/[ORGANIZATION_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]"
   * "folders/[FOLDER_ID]"
   * Examples: "projects/my-logging-project", "organizations/123456789".
   * Value must have pattern "^folders/[^/]+$".
   *
   * [uniqueWriterIdentity] - Optional. Determines the kind of IAM identity
   * returned as writer_identity in the new sink. If this value is omitted or
   * set to false, and if the sink's parent is a project, then the value
   * returned as writer_identity is the same group or service account used by
   * Stackdriver Logging before the addition of writer identities to this API.
   * The sink's destination must be in the same project as the sink itself.If
   * this field is set to true, or if the sink is owned by a non-project
   * resource such as an organization, then the value of writer_identity will be
   * a unique service account used only for exports from the new sink. For more
   * information, see writer_identity in LogSink.
   *
   * Completes with a [LogSink].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogSink> create(LogSink request, core.String parent, {core.bool uniqueWriterIdentity}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (uniqueWriterIdentity != null) {
      _queryParams["uniqueWriterIdentity"] = ["${uniqueWriterIdentity}"];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/sinks';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogSink.fromJson(data));
  }

  /**
   * Deletes a sink. If the sink has a unique writer_identity, then that service
   * account is also deleted.
   *
   * Request parameters:
   *
   * [sinkName] - Required. The full resource name of the sink to delete,
   * including the parent resource and the sink identifier:
   * "projects/[PROJECT_ID]/sinks/[SINK_ID]"
   * "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
   * "folders/[FOLDER_ID]/sinks/[SINK_ID]"
   * Example: "projects/my-project-id/sinks/my-sink-id".
   * Value must have pattern "^folders/[^/]+/sinks/[^/]+$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String sinkName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (sinkName == null) {
      throw new core.ArgumentError("Parameter sinkName is required.");
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Gets a sink.
   *
   * Request parameters:
   *
   * [sinkName] - Required. The resource name of the sink:
   * "projects/[PROJECT_ID]/sinks/[SINK_ID]"
   * "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
   * "folders/[FOLDER_ID]/sinks/[SINK_ID]"
   * Example: "projects/my-project-id/sinks/my-sink-id".
   * Value must have pattern "^folders/[^/]+/sinks/[^/]+$".
   *
   * Completes with a [LogSink].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogSink> get(core.String sinkName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (sinkName == null) {
      throw new core.ArgumentError("Parameter sinkName is required.");
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogSink.fromJson(data));
  }

  /**
   * Lists sinks.
   *
   * Request parameters:
   *
   * [parent] - Required. The parent resource whose sinks are to be listed:
   * "projects/[PROJECT_ID]"
   * "organizations/[ORGANIZATION_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]"
   * "folders/[FOLDER_ID]"
   *
   * Value must have pattern "^folders/[^/]+$".
   *
   * [pageToken] - Optional. If present, then retrieve the next batch of results
   * from the preceding call to this method. pageToken must be the value of
   * nextPageToken from the previous response. The values of other method
   * parameters should be identical to those in the previous call.
   *
   * [pageSize] - Optional. The maximum number of results to return from this
   * request. Non-positive values are ignored. The presence of nextPageToken in
   * the response indicates that more results might be available.
   *
   * Completes with a [ListSinksResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListSinksResponse> list(core.String parent, {core.String pageToken, core.int pageSize}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/sinks';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListSinksResponse.fromJson(data));
  }

  /**
   * Updates a sink. If the named sink doesn't exist, then this method is
   * identical to sinks.create. If the named sink does exist, then this method
   * replaces the following fields in the existing sink with values from the new
   * sink: destination, filter, output_version_format, start_time, and end_time.
   * The updated filter might also have a new writer_identity; see the
   * unique_writer_identity field.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [sinkName] - Required. The full resource name of the sink to update,
   * including the parent resource and the sink identifier:
   * "projects/[PROJECT_ID]/sinks/[SINK_ID]"
   * "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
   * "folders/[FOLDER_ID]/sinks/[SINK_ID]"
   * Example: "projects/my-project-id/sinks/my-sink-id".
   * Value must have pattern "^folders/[^/]+/sinks/[^/]+$".
   *
   * [uniqueWriterIdentity] - Optional. See sinks.create for a description of
   * this field. When updating a sink, the effect of this field on the value of
   * writer_identity in the updated sink depends on both the old and new values
   * of this field:
   * If the old and new values of this field are both false or both true, then
   * there is no change to the sink's writer_identity.
   * If the old value is false and the new value is true, then writer_identity
   * is changed to a unique service account.
   * It is an error if the old value is true and the new value is set to false
   * or defaulted to false.
   *
   * Completes with a [LogSink].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogSink> update(LogSink request, core.String sinkName, {core.bool uniqueWriterIdentity}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (sinkName == null) {
      throw new core.ArgumentError("Parameter sinkName is required.");
    }
    if (uniqueWriterIdentity != null) {
      _queryParams["uniqueWriterIdentity"] = ["${uniqueWriterIdentity}"];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogSink.fromJson(data));
  }

}


class MonitoredResourceDescriptorsResourceApi {
  final commons.ApiRequester _requester;

  MonitoredResourceDescriptorsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Lists the descriptors for monitored resource types used by Stackdriver
   * Logging.
   *
   * Request parameters:
   *
   * [pageToken] - Optional. If present, then retrieve the next batch of results
   * from the preceding call to this method. pageToken must be the value of
   * nextPageToken from the previous response. The values of other method
   * parameters should be identical to those in the previous call.
   *
   * [pageSize] - Optional. The maximum number of results to return from this
   * request. Non-positive values are ignored. The presence of nextPageToken in
   * the response indicates that more results might be available.
   *
   * Completes with a [ListMonitoredResourceDescriptorsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListMonitoredResourceDescriptorsResponse> list({core.String pageToken, core.int pageSize}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }

    _url = 'v2/monitoredResourceDescriptors';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListMonitoredResourceDescriptorsResponse.fromJson(data));
  }

}


class OrganizationsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsLogsResourceApi get logs => new OrganizationsLogsResourceApi(_requester);
  OrganizationsSinksResourceApi get sinks => new OrganizationsSinksResourceApi(_requester);

  OrganizationsResourceApi(commons.ApiRequester client) : 
      _requester = client;
}


class OrganizationsLogsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsLogsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes all the log entries in a log. The log reappears if it receives new
   * entries. Log entries written shortly before the delete operation might not
   * be deleted.
   *
   * Request parameters:
   *
   * [logName] - Required. The resource name of the log to delete:
   * "projects/[PROJECT_ID]/logs/[LOG_ID]"
   * "organizations/[ORGANIZATION_ID]/logs/[LOG_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID]"
   * "folders/[FOLDER_ID]/logs/[LOG_ID]"
   * [LOG_ID] must be URL-encoded. For example,
   * "projects/my-project-id/logs/syslog",
   * "organizations/1234567890/logs/cloudresourcemanager.googleapis.com%2Factivity".
   * For more information about log names, see LogEntry.
   * Value must have pattern "^organizations/[^/]+/logs/[^/]+$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String logName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (logName == null) {
      throw new core.ArgumentError("Parameter logName is required.");
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$logName');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Lists the logs in projects, organizations, folders, or billing accounts.
   * Only logs that have entries are listed.
   *
   * Request parameters:
   *
   * [parent] - Required. The resource name that owns the logs:
   * "projects/[PROJECT_ID]"
   * "organizations/[ORGANIZATION_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]"
   * "folders/[FOLDER_ID]"
   *
   * Value must have pattern "^organizations/[^/]+$".
   *
   * [pageSize] - Optional. The maximum number of results to return from this
   * request. Non-positive values are ignored. The presence of nextPageToken in
   * the response indicates that more results might be available.
   *
   * [pageToken] - Optional. If present, then retrieve the next batch of results
   * from the preceding call to this method. pageToken must be the value of
   * nextPageToken from the previous response. The values of other method
   * parameters should be identical to those in the previous call.
   *
   * Completes with a [ListLogsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListLogsResponse> list(core.String parent, {core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/logs';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLogsResponse.fromJson(data));
  }

}


class OrganizationsSinksResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsSinksResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a sink that exports specified log entries to a destination. The
   * export of newly-ingested log entries begins immediately, unless the current
   * time is outside the sink's start and end times or the sink's
   * writer_identity is not permitted to write to the destination. A sink can
   * export log entries only from the resource owning the sink.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [parent] - Required. The resource in which to create the sink:
   * "projects/[PROJECT_ID]"
   * "organizations/[ORGANIZATION_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]"
   * "folders/[FOLDER_ID]"
   * Examples: "projects/my-logging-project", "organizations/123456789".
   * Value must have pattern "^organizations/[^/]+$".
   *
   * [uniqueWriterIdentity] - Optional. Determines the kind of IAM identity
   * returned as writer_identity in the new sink. If this value is omitted or
   * set to false, and if the sink's parent is a project, then the value
   * returned as writer_identity is the same group or service account used by
   * Stackdriver Logging before the addition of writer identities to this API.
   * The sink's destination must be in the same project as the sink itself.If
   * this field is set to true, or if the sink is owned by a non-project
   * resource such as an organization, then the value of writer_identity will be
   * a unique service account used only for exports from the new sink. For more
   * information, see writer_identity in LogSink.
   *
   * Completes with a [LogSink].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogSink> create(LogSink request, core.String parent, {core.bool uniqueWriterIdentity}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (uniqueWriterIdentity != null) {
      _queryParams["uniqueWriterIdentity"] = ["${uniqueWriterIdentity}"];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/sinks';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogSink.fromJson(data));
  }

  /**
   * Deletes a sink. If the sink has a unique writer_identity, then that service
   * account is also deleted.
   *
   * Request parameters:
   *
   * [sinkName] - Required. The full resource name of the sink to delete,
   * including the parent resource and the sink identifier:
   * "projects/[PROJECT_ID]/sinks/[SINK_ID]"
   * "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
   * "folders/[FOLDER_ID]/sinks/[SINK_ID]"
   * Example: "projects/my-project-id/sinks/my-sink-id".
   * Value must have pattern "^organizations/[^/]+/sinks/[^/]+$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String sinkName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (sinkName == null) {
      throw new core.ArgumentError("Parameter sinkName is required.");
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Gets a sink.
   *
   * Request parameters:
   *
   * [sinkName] - Required. The resource name of the sink:
   * "projects/[PROJECT_ID]/sinks/[SINK_ID]"
   * "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
   * "folders/[FOLDER_ID]/sinks/[SINK_ID]"
   * Example: "projects/my-project-id/sinks/my-sink-id".
   * Value must have pattern "^organizations/[^/]+/sinks/[^/]+$".
   *
   * Completes with a [LogSink].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogSink> get(core.String sinkName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (sinkName == null) {
      throw new core.ArgumentError("Parameter sinkName is required.");
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogSink.fromJson(data));
  }

  /**
   * Lists sinks.
   *
   * Request parameters:
   *
   * [parent] - Required. The parent resource whose sinks are to be listed:
   * "projects/[PROJECT_ID]"
   * "organizations/[ORGANIZATION_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]"
   * "folders/[FOLDER_ID]"
   *
   * Value must have pattern "^organizations/[^/]+$".
   *
   * [pageSize] - Optional. The maximum number of results to return from this
   * request. Non-positive values are ignored. The presence of nextPageToken in
   * the response indicates that more results might be available.
   *
   * [pageToken] - Optional. If present, then retrieve the next batch of results
   * from the preceding call to this method. pageToken must be the value of
   * nextPageToken from the previous response. The values of other method
   * parameters should be identical to those in the previous call.
   *
   * Completes with a [ListSinksResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListSinksResponse> list(core.String parent, {core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/sinks';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListSinksResponse.fromJson(data));
  }

  /**
   * Updates a sink. If the named sink doesn't exist, then this method is
   * identical to sinks.create. If the named sink does exist, then this method
   * replaces the following fields in the existing sink with values from the new
   * sink: destination, filter, output_version_format, start_time, and end_time.
   * The updated filter might also have a new writer_identity; see the
   * unique_writer_identity field.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [sinkName] - Required. The full resource name of the sink to update,
   * including the parent resource and the sink identifier:
   * "projects/[PROJECT_ID]/sinks/[SINK_ID]"
   * "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
   * "folders/[FOLDER_ID]/sinks/[SINK_ID]"
   * Example: "projects/my-project-id/sinks/my-sink-id".
   * Value must have pattern "^organizations/[^/]+/sinks/[^/]+$".
   *
   * [uniqueWriterIdentity] - Optional. See sinks.create for a description of
   * this field. When updating a sink, the effect of this field on the value of
   * writer_identity in the updated sink depends on both the old and new values
   * of this field:
   * If the old and new values of this field are both false or both true, then
   * there is no change to the sink's writer_identity.
   * If the old value is false and the new value is true, then writer_identity
   * is changed to a unique service account.
   * It is an error if the old value is true and the new value is set to false
   * or defaulted to false.
   *
   * Completes with a [LogSink].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogSink> update(LogSink request, core.String sinkName, {core.bool uniqueWriterIdentity}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (sinkName == null) {
      throw new core.ArgumentError("Parameter sinkName is required.");
    }
    if (uniqueWriterIdentity != null) {
      _queryParams["uniqueWriterIdentity"] = ["${uniqueWriterIdentity}"];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogSink.fromJson(data));
  }

}


class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLogsResourceApi get logs => new ProjectsLogsResourceApi(_requester);
  ProjectsMetricsResourceApi get metrics => new ProjectsMetricsResourceApi(_requester);
  ProjectsSinksResourceApi get sinks => new ProjectsSinksResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : 
      _requester = client;
}


class ProjectsLogsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLogsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes all the log entries in a log. The log reappears if it receives new
   * entries. Log entries written shortly before the delete operation might not
   * be deleted.
   *
   * Request parameters:
   *
   * [logName] - Required. The resource name of the log to delete:
   * "projects/[PROJECT_ID]/logs/[LOG_ID]"
   * "organizations/[ORGANIZATION_ID]/logs/[LOG_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID]"
   * "folders/[FOLDER_ID]/logs/[LOG_ID]"
   * [LOG_ID] must be URL-encoded. For example,
   * "projects/my-project-id/logs/syslog",
   * "organizations/1234567890/logs/cloudresourcemanager.googleapis.com%2Factivity".
   * For more information about log names, see LogEntry.
   * Value must have pattern "^projects/[^/]+/logs/[^/]+$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String logName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (logName == null) {
      throw new core.ArgumentError("Parameter logName is required.");
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$logName');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Lists the logs in projects, organizations, folders, or billing accounts.
   * Only logs that have entries are listed.
   *
   * Request parameters:
   *
   * [parent] - Required. The resource name that owns the logs:
   * "projects/[PROJECT_ID]"
   * "organizations/[ORGANIZATION_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]"
   * "folders/[FOLDER_ID]"
   *
   * Value must have pattern "^projects/[^/]+$".
   *
   * [pageToken] - Optional. If present, then retrieve the next batch of results
   * from the preceding call to this method. pageToken must be the value of
   * nextPageToken from the previous response. The values of other method
   * parameters should be identical to those in the previous call.
   *
   * [pageSize] - Optional. The maximum number of results to return from this
   * request. Non-positive values are ignored. The presence of nextPageToken in
   * the response indicates that more results might be available.
   *
   * Completes with a [ListLogsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListLogsResponse> list(core.String parent, {core.String pageToken, core.int pageSize}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/logs';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLogsResponse.fromJson(data));
  }

}


class ProjectsMetricsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsMetricsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a logs-based metric.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [parent] - The resource name of the project in which to create the metric:
   * "projects/[PROJECT_ID]"
   * The new metric must be provided in the request.
   * Value must have pattern "^projects/[^/]+$".
   *
   * Completes with a [LogMetric].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogMetric> create(LogMetric request, core.String parent) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/metrics';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogMetric.fromJson(data));
  }

  /**
   * Deletes a logs-based metric.
   *
   * Request parameters:
   *
   * [metricName] - The resource name of the metric to delete:
   * "projects/[PROJECT_ID]/metrics/[METRIC_ID]"
   *
   * Value must have pattern "^projects/[^/]+/metrics/[^/]+$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String metricName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (metricName == null) {
      throw new core.ArgumentError("Parameter metricName is required.");
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$metricName');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Gets a logs-based metric.
   *
   * Request parameters:
   *
   * [metricName] - The resource name of the desired metric:
   * "projects/[PROJECT_ID]/metrics/[METRIC_ID]"
   *
   * Value must have pattern "^projects/[^/]+/metrics/[^/]+$".
   *
   * Completes with a [LogMetric].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogMetric> get(core.String metricName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (metricName == null) {
      throw new core.ArgumentError("Parameter metricName is required.");
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$metricName');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogMetric.fromJson(data));
  }

  /**
   * Lists logs-based metrics.
   *
   * Request parameters:
   *
   * [parent] - Required. The name of the project containing the metrics:
   * "projects/[PROJECT_ID]"
   *
   * Value must have pattern "^projects/[^/]+$".
   *
   * [pageToken] - Optional. If present, then retrieve the next batch of results
   * from the preceding call to this method. pageToken must be the value of
   * nextPageToken from the previous response. The values of other method
   * parameters should be identical to those in the previous call.
   *
   * [pageSize] - Optional. The maximum number of results to return from this
   * request. Non-positive values are ignored. The presence of nextPageToken in
   * the response indicates that more results might be available.
   *
   * Completes with a [ListLogMetricsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListLogMetricsResponse> list(core.String parent, {core.String pageToken, core.int pageSize}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/metrics';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLogMetricsResponse.fromJson(data));
  }

  /**
   * Creates or updates a logs-based metric.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [metricName] - The resource name of the metric to update:
   * "projects/[PROJECT_ID]/metrics/[METRIC_ID]"
   * The updated metric must be provided in the request and it's name field must
   * be the same as [METRIC_ID] If the metric does not exist in [PROJECT_ID],
   * then a new metric is created.
   * Value must have pattern "^projects/[^/]+/metrics/[^/]+$".
   *
   * Completes with a [LogMetric].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogMetric> update(LogMetric request, core.String metricName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (metricName == null) {
      throw new core.ArgumentError("Parameter metricName is required.");
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$metricName');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogMetric.fromJson(data));
  }

}


class ProjectsSinksResourceApi {
  final commons.ApiRequester _requester;

  ProjectsSinksResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a sink that exports specified log entries to a destination. The
   * export of newly-ingested log entries begins immediately, unless the current
   * time is outside the sink's start and end times or the sink's
   * writer_identity is not permitted to write to the destination. A sink can
   * export log entries only from the resource owning the sink.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [parent] - Required. The resource in which to create the sink:
   * "projects/[PROJECT_ID]"
   * "organizations/[ORGANIZATION_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]"
   * "folders/[FOLDER_ID]"
   * Examples: "projects/my-logging-project", "organizations/123456789".
   * Value must have pattern "^projects/[^/]+$".
   *
   * [uniqueWriterIdentity] - Optional. Determines the kind of IAM identity
   * returned as writer_identity in the new sink. If this value is omitted or
   * set to false, and if the sink's parent is a project, then the value
   * returned as writer_identity is the same group or service account used by
   * Stackdriver Logging before the addition of writer identities to this API.
   * The sink's destination must be in the same project as the sink itself.If
   * this field is set to true, or if the sink is owned by a non-project
   * resource such as an organization, then the value of writer_identity will be
   * a unique service account used only for exports from the new sink. For more
   * information, see writer_identity in LogSink.
   *
   * Completes with a [LogSink].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogSink> create(LogSink request, core.String parent, {core.bool uniqueWriterIdentity}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (uniqueWriterIdentity != null) {
      _queryParams["uniqueWriterIdentity"] = ["${uniqueWriterIdentity}"];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/sinks';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogSink.fromJson(data));
  }

  /**
   * Deletes a sink. If the sink has a unique writer_identity, then that service
   * account is also deleted.
   *
   * Request parameters:
   *
   * [sinkName] - Required. The full resource name of the sink to delete,
   * including the parent resource and the sink identifier:
   * "projects/[PROJECT_ID]/sinks/[SINK_ID]"
   * "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
   * "folders/[FOLDER_ID]/sinks/[SINK_ID]"
   * Example: "projects/my-project-id/sinks/my-sink-id".
   * Value must have pattern "^projects/[^/]+/sinks/[^/]+$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String sinkName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (sinkName == null) {
      throw new core.ArgumentError("Parameter sinkName is required.");
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Gets a sink.
   *
   * Request parameters:
   *
   * [sinkName] - Required. The resource name of the sink:
   * "projects/[PROJECT_ID]/sinks/[SINK_ID]"
   * "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
   * "folders/[FOLDER_ID]/sinks/[SINK_ID]"
   * Example: "projects/my-project-id/sinks/my-sink-id".
   * Value must have pattern "^projects/[^/]+/sinks/[^/]+$".
   *
   * Completes with a [LogSink].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogSink> get(core.String sinkName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (sinkName == null) {
      throw new core.ArgumentError("Parameter sinkName is required.");
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogSink.fromJson(data));
  }

  /**
   * Lists sinks.
   *
   * Request parameters:
   *
   * [parent] - Required. The parent resource whose sinks are to be listed:
   * "projects/[PROJECT_ID]"
   * "organizations/[ORGANIZATION_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]"
   * "folders/[FOLDER_ID]"
   *
   * Value must have pattern "^projects/[^/]+$".
   *
   * [pageToken] - Optional. If present, then retrieve the next batch of results
   * from the preceding call to this method. pageToken must be the value of
   * nextPageToken from the previous response. The values of other method
   * parameters should be identical to those in the previous call.
   *
   * [pageSize] - Optional. The maximum number of results to return from this
   * request. Non-positive values are ignored. The presence of nextPageToken in
   * the response indicates that more results might be available.
   *
   * Completes with a [ListSinksResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListSinksResponse> list(core.String parent, {core.String pageToken, core.int pageSize}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/sinks';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListSinksResponse.fromJson(data));
  }

  /**
   * Updates a sink. If the named sink doesn't exist, then this method is
   * identical to sinks.create. If the named sink does exist, then this method
   * replaces the following fields in the existing sink with values from the new
   * sink: destination, filter, output_version_format, start_time, and end_time.
   * The updated filter might also have a new writer_identity; see the
   * unique_writer_identity field.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [sinkName] - Required. The full resource name of the sink to update,
   * including the parent resource and the sink identifier:
   * "projects/[PROJECT_ID]/sinks/[SINK_ID]"
   * "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
   * "folders/[FOLDER_ID]/sinks/[SINK_ID]"
   * Example: "projects/my-project-id/sinks/my-sink-id".
   * Value must have pattern "^projects/[^/]+/sinks/[^/]+$".
   *
   * [uniqueWriterIdentity] - Optional. See sinks.create for a description of
   * this field. When updating a sink, the effect of this field on the value of
   * writer_identity in the updated sink depends on both the old and new values
   * of this field:
   * If the old and new values of this field are both false or both true, then
   * there is no change to the sink's writer_identity.
   * If the old value is false and the new value is true, then writer_identity
   * is changed to a unique service account.
   * It is an error if the old value is true and the new value is set to false
   * or defaulted to false.
   *
   * Completes with a [LogSink].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogSink> update(LogSink request, core.String sinkName, {core.bool uniqueWriterIdentity}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (sinkName == null) {
      throw new core.ArgumentError("Parameter sinkName is required.");
    }
    if (uniqueWriterIdentity != null) {
      _queryParams["uniqueWriterIdentity"] = ["${uniqueWriterIdentity}"];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogSink.fromJson(data));
  }

}



/**
 * A generic empty message that you can re-use to avoid defining duplicated
 * empty messages in your APIs. A typical example is to use it as the request or
 * the response type of an API method. For instance:
 * service Foo {
 *   rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
 * }
 * The JSON representation for Empty is empty JSON object {}.
 */
class Empty {

  Empty();

  Empty.fromJson(core.Map _json) {
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    return _json;
  }
}

/**
 * A common proto for logging HTTP requests. Only contains semantics defined by
 * the HTTP specification. Product-specific logging information MUST be defined
 * in a separate message.
 */
class HttpRequest {
  /**
   * The number of HTTP response bytes inserted into cache. Set only when a
   * cache fill was attempted.
   */
  core.String cacheFillBytes;
  /**
   * Whether or not an entity was served from cache (with or without
   * validation).
   */
  core.bool cacheHit;
  /** Whether or not a cache lookup was attempted. */
  core.bool cacheLookup;
  /**
   * Whether or not the response was validated with the origin server before
   * being served from cache. This field is only meaningful if cache_hit is
   * True.
   */
  core.bool cacheValidatedWithOriginServer;
  /**
   * The request processing latency on the server, from the time the request was
   * received until the response was sent.
   */
  core.String latency;
  /**
   * The referer URL of the request, as defined in HTTP/1.1 Header Field
   * Definitions (http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html).
   */
  core.String referer;
  /**
   * The IP address (IPv4 or IPv6) of the client that issued the HTTP request.
   * Examples: "192.168.1.1", "FE80::0202:B3FF:FE1E:8329".
   */
  core.String remoteIp;
  /** The request method. Examples: "GET", "HEAD", "PUT", "POST". */
  core.String requestMethod;
  /**
   * The size of the HTTP request message in bytes, including the request
   * headers and the request body.
   */
  core.String requestSize;
  /**
   * The scheme (http, https), the host name, the path and the query portion of
   * the URL that was requested. Example:
   * "http://example.com/some/info?color=red".
   */
  core.String requestUrl;
  /**
   * The size of the HTTP response message sent back to the client, in bytes,
   * including the response headers and the response body.
   */
  core.String responseSize;
  /**
   * The IP address (IPv4 or IPv6) of the origin server that the request was
   * sent to.
   */
  core.String serverIp;
  /**
   * The response code indicating the status of response. Examples: 200, 404.
   */
  core.int status;
  /**
   * The user agent sent by the client. Example: "Mozilla/4.0 (compatible; MSIE
   * 6.0; Windows 98; Q312461; .NET CLR 1.0.3705)".
   */
  core.String userAgent;

  HttpRequest();

  HttpRequest.fromJson(core.Map _json) {
    if (_json.containsKey("cacheFillBytes")) {
      cacheFillBytes = _json["cacheFillBytes"];
    }
    if (_json.containsKey("cacheHit")) {
      cacheHit = _json["cacheHit"];
    }
    if (_json.containsKey("cacheLookup")) {
      cacheLookup = _json["cacheLookup"];
    }
    if (_json.containsKey("cacheValidatedWithOriginServer")) {
      cacheValidatedWithOriginServer = _json["cacheValidatedWithOriginServer"];
    }
    if (_json.containsKey("latency")) {
      latency = _json["latency"];
    }
    if (_json.containsKey("referer")) {
      referer = _json["referer"];
    }
    if (_json.containsKey("remoteIp")) {
      remoteIp = _json["remoteIp"];
    }
    if (_json.containsKey("requestMethod")) {
      requestMethod = _json["requestMethod"];
    }
    if (_json.containsKey("requestSize")) {
      requestSize = _json["requestSize"];
    }
    if (_json.containsKey("requestUrl")) {
      requestUrl = _json["requestUrl"];
    }
    if (_json.containsKey("responseSize")) {
      responseSize = _json["responseSize"];
    }
    if (_json.containsKey("serverIp")) {
      serverIp = _json["serverIp"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("userAgent")) {
      userAgent = _json["userAgent"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (cacheFillBytes != null) {
      _json["cacheFillBytes"] = cacheFillBytes;
    }
    if (cacheHit != null) {
      _json["cacheHit"] = cacheHit;
    }
    if (cacheLookup != null) {
      _json["cacheLookup"] = cacheLookup;
    }
    if (cacheValidatedWithOriginServer != null) {
      _json["cacheValidatedWithOriginServer"] = cacheValidatedWithOriginServer;
    }
    if (latency != null) {
      _json["latency"] = latency;
    }
    if (referer != null) {
      _json["referer"] = referer;
    }
    if (remoteIp != null) {
      _json["remoteIp"] = remoteIp;
    }
    if (requestMethod != null) {
      _json["requestMethod"] = requestMethod;
    }
    if (requestSize != null) {
      _json["requestSize"] = requestSize;
    }
    if (requestUrl != null) {
      _json["requestUrl"] = requestUrl;
    }
    if (responseSize != null) {
      _json["responseSize"] = responseSize;
    }
    if (serverIp != null) {
      _json["serverIp"] = serverIp;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (userAgent != null) {
      _json["userAgent"] = userAgent;
    }
    return _json;
  }
}

/** A description of a label. */
class LabelDescriptor {
  /** A human-readable description for the label. */
  core.String description;
  /** The label key. */
  core.String key;
  /**
   * The type of data that can be assigned to the label.
   * Possible string values are:
   * - "STRING" : A variable-length string. This is the default.
   * - "BOOL" : Boolean; true or false.
   * - "INT64" : A 64-bit signed integer.
   */
  core.String valueType;

  LabelDescriptor();

  LabelDescriptor.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("valueType")) {
      valueType = _json["valueType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (key != null) {
      _json["key"] = key;
    }
    if (valueType != null) {
      _json["valueType"] = valueType;
    }
    return _json;
  }
}

/** The parameters to ListLogEntries. */
class ListLogEntriesRequest {
  /**
   * Optional. A filter that chooses which log entries to return. See Advanced
   * Logs Filters. Only log entries that match the filter are returned. An empty
   * filter matches all log entries in the resources listed in resource_names.
   * Referencing a parent resource that is not listed in resource_names will
   * cause the filter to return no results. The maximum length of the filter is
   * 20000 characters.
   */
  core.String filter;
  /**
   * Optional. How the results should be sorted. Presently, the only permitted
   * values are "timestamp asc" (default) and "timestamp desc". The first option
   * returns entries in order of increasing values of LogEntry.timestamp (oldest
   * first), and the second option returns entries in order of decreasing
   * timestamps (newest first). Entries with equal timestamps are returned in
   * order of their insert_id values.
   */
  core.String orderBy;
  /**
   * Optional. The maximum number of results to return from this request.
   * Non-positive values are ignored. The presence of next_page_token in the
   * response indicates that more results might be available.
   */
  core.int pageSize;
  /**
   * Optional. If present, then retrieve the next batch of results from the
   * preceding call to this method. page_token must be the value of
   * next_page_token from the previous response. The values of other method
   * parameters should be identical to those in the previous call.
   */
  core.String pageToken;
  /**
   * Deprecated. Use resource_names instead. One or more project identifiers or
   * project numbers from which to retrieve log entries. Example:
   * "my-project-1A". If present, these project identifiers are converted to
   * resource name format and added to the list of resources in resource_names.
   */
  core.List<core.String> projectIds;
  /**
   * Required. Names of one or more parent resources from which to retrieve log
   * entries:
   * "projects/[PROJECT_ID]"
   * "organizations/[ORGANIZATION_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]"
   * "folders/[FOLDER_ID]"
   * Projects listed in the project_ids field are added to this list.
   */
  core.List<core.String> resourceNames;

  ListLogEntriesRequest();

  ListLogEntriesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("filter")) {
      filter = _json["filter"];
    }
    if (_json.containsKey("orderBy")) {
      orderBy = _json["orderBy"];
    }
    if (_json.containsKey("pageSize")) {
      pageSize = _json["pageSize"];
    }
    if (_json.containsKey("pageToken")) {
      pageToken = _json["pageToken"];
    }
    if (_json.containsKey("projectIds")) {
      projectIds = _json["projectIds"];
    }
    if (_json.containsKey("resourceNames")) {
      resourceNames = _json["resourceNames"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (filter != null) {
      _json["filter"] = filter;
    }
    if (orderBy != null) {
      _json["orderBy"] = orderBy;
    }
    if (pageSize != null) {
      _json["pageSize"] = pageSize;
    }
    if (pageToken != null) {
      _json["pageToken"] = pageToken;
    }
    if (projectIds != null) {
      _json["projectIds"] = projectIds;
    }
    if (resourceNames != null) {
      _json["resourceNames"] = resourceNames;
    }
    return _json;
  }
}

/** Result returned from ListLogEntries. */
class ListLogEntriesResponse {
  /** A list of log entries. */
  core.List<LogEntry> entries;
  /**
   * If there might be more results than those appearing in this response, then
   * nextPageToken is included. To get the next set of results, call this method
   * again using the value of nextPageToken as pageToken.If a value for
   * next_page_token appears and the entries field is empty, it means that the
   * search found no log entries so far but it did not have time to search all
   * the possible log entries. Retry the method with this value for page_token
   * to continue the search. Alternatively, consider speeding up the search by
   * changing your filter to specify a single log name or resource type, or to
   * narrow the time range of the search.
   */
  core.String nextPageToken;

  ListLogEntriesResponse();

  ListLogEntriesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("entries")) {
      entries = _json["entries"].map((value) => new LogEntry.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/** Result returned from ListLogMetrics. */
class ListLogMetricsResponse {
  /** A list of logs-based metrics. */
  core.List<LogMetric> metrics;
  /**
   * If there might be more results than appear in this response, then
   * nextPageToken is included. To get the next set of results, call this method
   * again using the value of nextPageToken as pageToken.
   */
  core.String nextPageToken;

  ListLogMetricsResponse();

  ListLogMetricsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("metrics")) {
      metrics = _json["metrics"].map((value) => new LogMetric.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (metrics != null) {
      _json["metrics"] = metrics.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/** Result returned from ListLogs. */
class ListLogsResponse {
  /**
   * A list of log names. For example, "projects/my-project/syslog" or
   * "organizations/123/cloudresourcemanager.googleapis.com%2Factivity".
   */
  core.List<core.String> logNames;
  /**
   * If there might be more results than those appearing in this response, then
   * nextPageToken is included. To get the next set of results, call this method
   * again using the value of nextPageToken as pageToken.
   */
  core.String nextPageToken;

  ListLogsResponse();

  ListLogsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("logNames")) {
      logNames = _json["logNames"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (logNames != null) {
      _json["logNames"] = logNames;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/** Result returned from ListMonitoredResourceDescriptors. */
class ListMonitoredResourceDescriptorsResponse {
  /**
   * If there might be more results than those appearing in this response, then
   * nextPageToken is included. To get the next set of results, call this method
   * again using the value of nextPageToken as pageToken.
   */
  core.String nextPageToken;
  /** A list of resource descriptors. */
  core.List<MonitoredResourceDescriptor> resourceDescriptors;

  ListMonitoredResourceDescriptorsResponse();

  ListMonitoredResourceDescriptorsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("resourceDescriptors")) {
      resourceDescriptors = _json["resourceDescriptors"].map((value) => new MonitoredResourceDescriptor.fromJson(value)).toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (resourceDescriptors != null) {
      _json["resourceDescriptors"] = resourceDescriptors.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Result returned from ListSinks. */
class ListSinksResponse {
  /**
   * If there might be more results than appear in this response, then
   * nextPageToken is included. To get the next set of results, call the same
   * method again using the value of nextPageToken as pageToken.
   */
  core.String nextPageToken;
  /** A list of sinks. */
  core.List<LogSink> sinks;

  ListSinksResponse();

  ListSinksResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("sinks")) {
      sinks = _json["sinks"].map((value) => new LogSink.fromJson(value)).toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (sinks != null) {
      _json["sinks"] = sinks.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** An individual entry in a log. */
class LogEntry {
  /**
   * Optional. Information about the HTTP request associated with this log
   * entry, if applicable.
   */
  HttpRequest httpRequest;
  /**
   * Optional. A unique identifier for the log entry. If you provide a value,
   * then Stackdriver Logging considers other log entries in the same project,
   * with the same timestamp, and with the same insert_id to be duplicates which
   * can be removed. If omitted in new log entries, then Stackdriver Logging
   * will insert its own unique identifier. The insert_id is used to order log
   * entries that have the same timestamp value.
   */
  core.String insertId;
  /**
   * The log entry payload, represented as a structure that is expressed as a
   * JSON object.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> jsonPayload;
  /**
   * Optional. A set of user-defined (key, value) data that provides additional
   * information about the log entry.
   */
  core.Map<core.String, core.String> labels;
  /**
   * Required. The resource name of the log to which this log entry belongs:
   * "projects/[PROJECT_ID]/logs/[LOG_ID]"
   * "organizations/[ORGANIZATION_ID]/logs/[LOG_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID]"
   * "folders/[FOLDER_ID]/logs/[LOG_ID]"
   * [LOG_ID] must be URL-encoded within log_name. Example:
   * "organizations/1234567890/logs/cloudresourcemanager.googleapis.com%2Factivity".
   * [LOG_ID] must be less than 512 characters long and can only include the
   * following characters: upper and lower case alphanumeric characters,
   * forward-slash, underscore, hyphen, and period.For backward compatibility,
   * if log_name begins with a forward-slash, such as /projects/..., then the
   * log entry is ingested as usual but the forward-slash is removed. Listing
   * the log entry will not show the leading slash and filtering for a log name
   * with a leading slash will never return any results.
   */
  core.String logName;
  /**
   * Optional. Information about an operation associated with the log entry, if
   * applicable.
   */
  LogEntryOperation operation;
  /**
   * The log entry payload, represented as a protocol buffer. Some Google Cloud
   * Platform services use this field for their log entry payloads.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> protoPayload;
  /**
   * Output only. The time the log entry was received by Stackdriver Logging.
   */
  core.String receiveTimestamp;
  /**
   * Required. The monitored resource associated with this log entry. Example: a
   * log entry that reports a database error would be associated with the
   * monitored resource designating the particular database that reported the
   * error.
   */
  MonitoredResource resource;
  /**
   * Optional. The severity of the log entry. The default value is
   * LogSeverity.DEFAULT.
   * Possible string values are:
   * - "DEFAULT" : (0) The log entry has no assigned severity level.
   * - "DEBUG" : (100) Debug or trace information.
   * - "INFO" : (200) Routine information, such as ongoing status or
   * performance.
   * - "NOTICE" : (300) Normal but significant events, such as start up, shut
   * down, or a configuration change.
   * - "WARNING" : (400) Warning events might cause problems.
   * - "ERROR" : (500) Error events are likely to cause problems.
   * - "CRITICAL" : (600) Critical events cause more severe problems or outages.
   * - "ALERT" : (700) A person must take an action immediately.
   * - "EMERGENCY" : (800) One or more systems are unusable.
   */
  core.String severity;
  /**
   * Optional. Source code location information associated with the log entry,
   * if any.
   */
  LogEntrySourceLocation sourceLocation;
  /** The log entry payload, represented as a Unicode string (UTF-8). */
  core.String textPayload;
  /**
   * Optional. The time the event described by the log entry occurred. If
   * omitted in a new log entry, Stackdriver Logging will insert the time the
   * log entry is received. Stackdriver Logging might reject log entries whose
   * time stamps are more than a couple of hours in the future. Log entries with
   * time stamps in the past are accepted.
   */
  core.String timestamp;
  /**
   * Optional. Resource name of the trace associated with the log entry, if any.
   * If it contains a relative resource name, the name is assumed to be relative
   * to //tracing.googleapis.com. Example:
   * projects/my-projectid/traces/06796866738c859f2f19b7cfb3214824
   */
  core.String trace;

  LogEntry();

  LogEntry.fromJson(core.Map _json) {
    if (_json.containsKey("httpRequest")) {
      httpRequest = new HttpRequest.fromJson(_json["httpRequest"]);
    }
    if (_json.containsKey("insertId")) {
      insertId = _json["insertId"];
    }
    if (_json.containsKey("jsonPayload")) {
      jsonPayload = _json["jsonPayload"];
    }
    if (_json.containsKey("labels")) {
      labels = _json["labels"];
    }
    if (_json.containsKey("logName")) {
      logName = _json["logName"];
    }
    if (_json.containsKey("operation")) {
      operation = new LogEntryOperation.fromJson(_json["operation"]);
    }
    if (_json.containsKey("protoPayload")) {
      protoPayload = _json["protoPayload"];
    }
    if (_json.containsKey("receiveTimestamp")) {
      receiveTimestamp = _json["receiveTimestamp"];
    }
    if (_json.containsKey("resource")) {
      resource = new MonitoredResource.fromJson(_json["resource"]);
    }
    if (_json.containsKey("severity")) {
      severity = _json["severity"];
    }
    if (_json.containsKey("sourceLocation")) {
      sourceLocation = new LogEntrySourceLocation.fromJson(_json["sourceLocation"]);
    }
    if (_json.containsKey("textPayload")) {
      textPayload = _json["textPayload"];
    }
    if (_json.containsKey("timestamp")) {
      timestamp = _json["timestamp"];
    }
    if (_json.containsKey("trace")) {
      trace = _json["trace"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (httpRequest != null) {
      _json["httpRequest"] = (httpRequest).toJson();
    }
    if (insertId != null) {
      _json["insertId"] = insertId;
    }
    if (jsonPayload != null) {
      _json["jsonPayload"] = jsonPayload;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (logName != null) {
      _json["logName"] = logName;
    }
    if (operation != null) {
      _json["operation"] = (operation).toJson();
    }
    if (protoPayload != null) {
      _json["protoPayload"] = protoPayload;
    }
    if (receiveTimestamp != null) {
      _json["receiveTimestamp"] = receiveTimestamp;
    }
    if (resource != null) {
      _json["resource"] = (resource).toJson();
    }
    if (severity != null) {
      _json["severity"] = severity;
    }
    if (sourceLocation != null) {
      _json["sourceLocation"] = (sourceLocation).toJson();
    }
    if (textPayload != null) {
      _json["textPayload"] = textPayload;
    }
    if (timestamp != null) {
      _json["timestamp"] = timestamp;
    }
    if (trace != null) {
      _json["trace"] = trace;
    }
    return _json;
  }
}

/**
 * Additional information about a potentially long-running operation with which
 * a log entry is associated.
 */
class LogEntryOperation {
  /**
   * Optional. Set this to True if this is the first log entry in the operation.
   */
  core.bool first;
  /**
   * Optional. An arbitrary operation identifier. Log entries with the same
   * identifier are assumed to be part of the same operation.
   */
  core.String id;
  /**
   * Optional. Set this to True if this is the last log entry in the operation.
   */
  core.bool last;
  /**
   * Optional. An arbitrary producer identifier. The combination of id and
   * producer must be globally unique. Examples for producer:
   * "MyDivision.MyBigCompany.com", "github.com/MyProject/MyApplication".
   */
  core.String producer;

  LogEntryOperation();

  LogEntryOperation.fromJson(core.Map _json) {
    if (_json.containsKey("first")) {
      first = _json["first"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("last")) {
      last = _json["last"];
    }
    if (_json.containsKey("producer")) {
      producer = _json["producer"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (first != null) {
      _json["first"] = first;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (last != null) {
      _json["last"] = last;
    }
    if (producer != null) {
      _json["producer"] = producer;
    }
    return _json;
  }
}

/**
 * Additional information about the source code location that produced the log
 * entry.
 */
class LogEntrySourceLocation {
  /**
   * Optional. Source file name. Depending on the runtime environment, this
   * might be a simple name or a fully-qualified name.
   */
  core.String file;
  /**
   * Optional. Human-readable name of the function or method being invoked, with
   * optional context such as the class or package name. This information may be
   * used in contexts such as the logs viewer, where a file and line number are
   * less meaningful. The format can vary by language. For example:
   * qual.if.ied.Class.method (Java), dir/package.func (Go), function (Python).
   */
  core.String function;
  /**
   * Optional. Line within the source file. 1-based; 0 indicates no line number
   * available.
   */
  core.String line;

  LogEntrySourceLocation();

  LogEntrySourceLocation.fromJson(core.Map _json) {
    if (_json.containsKey("file")) {
      file = _json["file"];
    }
    if (_json.containsKey("function")) {
      function = _json["function"];
    }
    if (_json.containsKey("line")) {
      line = _json["line"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (file != null) {
      _json["file"] = file;
    }
    if (function != null) {
      _json["function"] = function;
    }
    if (line != null) {
      _json["line"] = line;
    }
    return _json;
  }
}

/** Application log line emitted while processing a request. */
class LogLine {
  /** App-provided log message. */
  core.String logMessage;
  /**
   * Severity of this log entry.
   * Possible string values are:
   * - "DEFAULT" : (0) The log entry has no assigned severity level.
   * - "DEBUG" : (100) Debug or trace information.
   * - "INFO" : (200) Routine information, such as ongoing status or
   * performance.
   * - "NOTICE" : (300) Normal but significant events, such as start up, shut
   * down, or a configuration change.
   * - "WARNING" : (400) Warning events might cause problems.
   * - "ERROR" : (500) Error events are likely to cause problems.
   * - "CRITICAL" : (600) Critical events cause more severe problems or outages.
   * - "ALERT" : (700) A person must take an action immediately.
   * - "EMERGENCY" : (800) One or more systems are unusable.
   */
  core.String severity;
  /** Where in the source code this log message was written. */
  SourceLocation sourceLocation;
  /** Approximate time when this log entry was made. */
  core.String time;

  LogLine();

  LogLine.fromJson(core.Map _json) {
    if (_json.containsKey("logMessage")) {
      logMessage = _json["logMessage"];
    }
    if (_json.containsKey("severity")) {
      severity = _json["severity"];
    }
    if (_json.containsKey("sourceLocation")) {
      sourceLocation = new SourceLocation.fromJson(_json["sourceLocation"]);
    }
    if (_json.containsKey("time")) {
      time = _json["time"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (logMessage != null) {
      _json["logMessage"] = logMessage;
    }
    if (severity != null) {
      _json["severity"] = severity;
    }
    if (sourceLocation != null) {
      _json["sourceLocation"] = (sourceLocation).toJson();
    }
    if (time != null) {
      _json["time"] = time;
    }
    return _json;
  }
}

/**
 * Describes a logs-based metric. The value of the metric is the number of log
 * entries that match a logs filter in a given time interval.
 */
class LogMetric {
  /**
   * Optional. A description of this metric, which is used in documentation.
   */
  core.String description;
  /**
   * Required. An advanced logs filter which is used to match log entries.
   * Example:
   * "resource.type=gae_app AND severity>=ERROR"
   * The maximum length of the filter is 20000 characters.
   */
  core.String filter;
  /**
   * Required. The client-assigned metric identifier. Examples: "error_count",
   * "nginx/requests".Metric identifiers are limited to 100 characters and can
   * include only the following characters: A-Z, a-z, 0-9, and the special
   * characters _-.,+!*',()%/. The forward-slash character (/) denotes a
   * hierarchy of name pieces, and it cannot be the first character of the
   * name.The metric identifier in this field must not be URL-encoded
   * (https://en.wikipedia.org/wiki/Percent-encoding). However, when the metric
   * identifier appears as the [METRIC_ID] part of a metric_name API parameter,
   * then the metric identifier must be URL-encoded. Example:
   * "projects/my-project/metrics/nginx%2Frequests".
   */
  core.String name;
  /**
   * Output only. The API version that created or updated this metric. The
   * version also dictates the syntax of the filter expression. When a value for
   * this field is missing, the default value of V2 should be assumed.
   * Possible string values are:
   * - "V2" : Stackdriver Logging API v2.
   * - "V1" : Stackdriver Logging API v1.
   */
  core.String version;

  LogMetric();

  LogMetric.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("filter")) {
      filter = _json["filter"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (filter != null) {
      _json["filter"] = filter;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/**
 * Describes a sink used to export log entries to one of the following
 * destinations in any project: a Cloud Storage bucket, a BigQuery dataset, or a
 * Cloud Pub/Sub topic. A logs filter controls which log entries are exported.
 * The sink must be created within a project, organization, billing account, or
 * folder.
 */
class LogSink {
  /**
   * Required. The export destination:
   * "storage.googleapis.com/[GCS_BUCKET]"
   * "bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]"
   * "pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]"
   * The sink's writer_identity, set when the sink is created, must have
   * permission to write to the destination or else the log entries are not
   * exported. For more information, see Exporting Logs With Sinks.
   */
  core.String destination;
  /**
   * Optional. The time at which this sink will stop exporting log entries. Log
   * entries are exported only if their timestamp is earlier than the end time.
   * If this field is not supplied, there is no end time. If both a start time
   * and an end time are provided, then the end time must be later than the
   * start time.
   */
  core.String endTime;
  /**
   * Optional. An advanced logs filter. The only exported log entries are those
   * that are in the resource owning the sink and that match the filter. The
   * filter must use the log entry format specified by the output_version_format
   * parameter. For example, in the v2 format:
   * logName="projects/[PROJECT_ID]/logs/[LOG_ID]" AND severity>=ERROR
   */
  core.String filter;
  /**
   * Optional. This field applies only to sinks owned by organizations and
   * folders. If the field is false, the default, only the logs owned by the
   * sink's parent resource are available for export. If the field is true, then
   * logs from all the projects, folders, and billing accounts contained in the
   * sink's parent resource are also available for export. Whether a particular
   * log entry from the children is exported depends on the sink's filter
   * expression. For example, if this field is true, then the filter
   * resource.type=gce_instance would export all Compute Engine VM instance log
   * entries from all projects in the sink's parent. To only export entries from
   * certain child projects, filter on the project part of the log name:
   * logName:("projects/test-project1/" OR "projects/test-project2/") AND
   * resource.type=gce_instance
   */
  core.bool includeChildren;
  /**
   * Required. The client-assigned sink identifier, unique within the project.
   * Example: "my-syslog-errors-to-pubsub". Sink identifiers are limited to 100
   * characters and can include only the following characters: upper and
   * lower-case alphanumeric characters, underscores, hyphens, and periods.
   */
  core.String name;
  /**
   * Optional. The log entry format to use for this sink's exported log entries.
   * The v2 format is used by default. The v1 format is deprecated and should be
   * used only as part of a migration effort to v2. See Migration to the v2 API.
   * Possible string values are:
   * - "VERSION_FORMAT_UNSPECIFIED" : An unspecified format version that will
   * default to V2.
   * - "V2" : LogEntry version 2 format.
   * - "V1" : LogEntry version 1 format.
   */
  core.String outputVersionFormat;
  /**
   * Optional. The time at which this sink will begin exporting log entries. Log
   * entries are exported only if their timestamp is not earlier than the start
   * time. The default value of this field is the time the sink is created or
   * updated.
   */
  core.String startTime;
  /**
   * Output only. An IAM identity&mdash;a service account or group&mdash;under
   * which Stackdriver Logging writes the exported log entries to the sink's
   * destination. This field is set by sinks.create and sinks.update, based on
   * the setting of unique_writer_identity in those methods.Until you grant this
   * identity write-access to the destination, log entry exports from this sink
   * will fail. For more information, see Granting access for a resource.
   * Consult the destination service's documentation to determine the
   * appropriate IAM roles to assign to the identity.
   */
  core.String writerIdentity;

  LogSink();

  LogSink.fromJson(core.Map _json) {
    if (_json.containsKey("destination")) {
      destination = _json["destination"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("filter")) {
      filter = _json["filter"];
    }
    if (_json.containsKey("includeChildren")) {
      includeChildren = _json["includeChildren"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("outputVersionFormat")) {
      outputVersionFormat = _json["outputVersionFormat"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("writerIdentity")) {
      writerIdentity = _json["writerIdentity"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (destination != null) {
      _json["destination"] = destination;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (filter != null) {
      _json["filter"] = filter;
    }
    if (includeChildren != null) {
      _json["includeChildren"] = includeChildren;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (outputVersionFormat != null) {
      _json["outputVersionFormat"] = outputVersionFormat;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (writerIdentity != null) {
      _json["writerIdentity"] = writerIdentity;
    }
    return _json;
  }
}

/**
 * An object representing a resource that can be used for monitoring, logging,
 * billing, or other purposes. Examples include virtual machine instances,
 * databases, and storage devices such as disks. The type field identifies a
 * MonitoredResourceDescriptor object that describes the resource's schema.
 * Information in the labels field identifies the actual resource and its
 * attributes according to the schema. For example, a particular Compute Engine
 * VM instance could be represented by the following object, because the
 * MonitoredResourceDescriptor for "gce_instance" has labels "instance_id" and
 * "zone":
 * { "type": "gce_instance",
 *   "labels": { "instance_id": "12345678901234",
 *               "zone": "us-central1-a" }}
 */
class MonitoredResource {
  /**
   * Required. Values for all of the labels listed in the associated monitored
   * resource descriptor. For example, Compute Engine VM instances use the
   * labels "project_id", "instance_id", and "zone".
   */
  core.Map<core.String, core.String> labels;
  /**
   * Required. The monitored resource type. This field must match the type field
   * of a MonitoredResourceDescriptor object. For example, the type of a Compute
   * Engine VM instance is gce_instance.
   */
  core.String type;

  MonitoredResource();

  MonitoredResource.fromJson(core.Map _json) {
    if (_json.containsKey("labels")) {
      labels = _json["labels"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/**
 * An object that describes the schema of a MonitoredResource object using a
 * type name and a set of labels. For example, the monitored resource descriptor
 * for Google Compute Engine VM instances has a type of "gce_instance" and
 * specifies the use of the labels "instance_id" and "zone" to identify
 * particular VM instances.Different APIs can support different monitored
 * resource types. APIs generally provide a list method that returns the
 * monitored resource descriptors used by the API.
 */
class MonitoredResourceDescriptor {
  /**
   * Optional. A detailed description of the monitored resource type that might
   * be used in documentation.
   */
  core.String description;
  /**
   * Optional. A concise name for the monitored resource type that might be
   * displayed in user interfaces. It should be a Title Cased Noun Phrase,
   * without any article or other determiners. For example, "Google Cloud SQL
   * Database".
   */
  core.String displayName;
  /**
   * Required. A set of labels used to describe instances of this monitored
   * resource type. For example, an individual Google Cloud SQL database is
   * identified by values for the labels "database_id" and "zone".
   */
  core.List<LabelDescriptor> labels;
  /**
   * Optional. The resource name of the monitored resource descriptor:
   * "projects/{project_id}/monitoredResourceDescriptors/{type}" where {type} is
   * the value of the type field in this object and {project_id} is a project ID
   * that provides API-specific context for accessing the type. APIs that do not
   * use project information can use the resource name format
   * "monitoredResourceDescriptors/{type}".
   */
  core.String name;
  /**
   * Required. The monitored resource type. For example, the type
   * "cloudsql_database" represents databases in Google Cloud SQL. The maximum
   * length of this value is 256 characters.
   */
  core.String type;

  MonitoredResourceDescriptor();

  MonitoredResourceDescriptor.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("labels")) {
      labels = _json["labels"].map((value) => new LabelDescriptor.fromJson(value)).toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (labels != null) {
      _json["labels"] = labels.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/**
 * Complete log information about a single HTTP request to an App Engine
 * application.
 */
class RequestLog {
  /** App Engine release version. */
  core.String appEngineRelease;
  /** Application that handled this request. */
  core.String appId;
  /** An indication of the relative cost of serving this request. */
  core.double cost;
  /** Time when the request finished. */
  core.String endTime;
  /** Whether this request is finished or active. */
  core.bool finished;
  /**
   * Whether this is the first RequestLog entry for this request. If an active
   * request has several RequestLog entries written to Stackdriver Logging, then
   * this field will be set for one of them.
   */
  core.bool first;
  /** Internet host and port number of the resource being requested. */
  core.String host;
  /** HTTP version of request. Example: "HTTP/1.1". */
  core.String httpVersion;
  /** An identifier for the instance that handled the request. */
  core.String instanceId;
  /**
   * If the instance processing this request belongs to a manually scaled
   * module, then this is the 0-based index of the instance. Otherwise, this
   * value is -1.
   */
  core.int instanceIndex;
  /** Origin IP address. */
  core.String ip;
  /** Latency of the request. */
  core.String latency;
  /**
   * A list of log lines emitted by the application while serving this request.
   */
  core.List<LogLine> line;
  /** Number of CPU megacycles used to process request. */
  core.String megaCycles;
  /** Request method. Example: "GET", "HEAD", "PUT", "POST", "DELETE". */
  core.String method;
  /** Module of the application that handled this request. */
  core.String moduleId;
  /**
   * The logged-in user who made the request.Most likely, this is the part of
   * the user's email before the @ sign. The field value is the same for
   * different requests from the same user, but different users can have similar
   * names. This information is also available to the application via the App
   * Engine Users API.This field will be populated starting with App Engine
   * 1.9.21.
   */
  core.String nickname;
  /** Time this request spent in the pending request queue. */
  core.String pendingTime;
  /** Referrer URL of request. */
  core.String referrer;
  /**
   * Globally unique identifier for a request, which is based on the request
   * start time. Request IDs for requests which started later will compare
   * greater as strings than those for requests which started earlier.
   */
  core.String requestId;
  /**
   * Contains the path and query portion of the URL that was requested. For
   * example, if the URL was "http://example.com/app?name=val", the resource
   * would be "/app?name=val". The fragment identifier, which is identified by
   * the # character, is not included.
   */
  core.String resource;
  /** Size in bytes sent back to client by request. */
  core.String responseSize;
  /**
   * Source code for the application that handled this request. There can be
   * more than one source reference per deployed application if source code is
   * distributed among multiple repositories.
   */
  core.List<SourceReference> sourceReference;
  /** Time when the request started. */
  core.String startTime;
  /** HTTP response status code. Example: 200, 404. */
  core.int status;
  /** Task name of the request, in the case of an offline request. */
  core.String taskName;
  /** Queue name of the request, in the case of an offline request. */
  core.String taskQueueName;
  /** Stackdriver Trace identifier for this request. */
  core.String traceId;
  /** File or class that handled the request. */
  core.String urlMapEntry;
  /** User agent that made the request. */
  core.String userAgent;
  /** Version of the application that handled this request. */
  core.String versionId;
  /** Whether this was a loading request for the instance. */
  core.bool wasLoadingRequest;

  RequestLog();

  RequestLog.fromJson(core.Map _json) {
    if (_json.containsKey("appEngineRelease")) {
      appEngineRelease = _json["appEngineRelease"];
    }
    if (_json.containsKey("appId")) {
      appId = _json["appId"];
    }
    if (_json.containsKey("cost")) {
      cost = _json["cost"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("finished")) {
      finished = _json["finished"];
    }
    if (_json.containsKey("first")) {
      first = _json["first"];
    }
    if (_json.containsKey("host")) {
      host = _json["host"];
    }
    if (_json.containsKey("httpVersion")) {
      httpVersion = _json["httpVersion"];
    }
    if (_json.containsKey("instanceId")) {
      instanceId = _json["instanceId"];
    }
    if (_json.containsKey("instanceIndex")) {
      instanceIndex = _json["instanceIndex"];
    }
    if (_json.containsKey("ip")) {
      ip = _json["ip"];
    }
    if (_json.containsKey("latency")) {
      latency = _json["latency"];
    }
    if (_json.containsKey("line")) {
      line = _json["line"].map((value) => new LogLine.fromJson(value)).toList();
    }
    if (_json.containsKey("megaCycles")) {
      megaCycles = _json["megaCycles"];
    }
    if (_json.containsKey("method")) {
      method = _json["method"];
    }
    if (_json.containsKey("moduleId")) {
      moduleId = _json["moduleId"];
    }
    if (_json.containsKey("nickname")) {
      nickname = _json["nickname"];
    }
    if (_json.containsKey("pendingTime")) {
      pendingTime = _json["pendingTime"];
    }
    if (_json.containsKey("referrer")) {
      referrer = _json["referrer"];
    }
    if (_json.containsKey("requestId")) {
      requestId = _json["requestId"];
    }
    if (_json.containsKey("resource")) {
      resource = _json["resource"];
    }
    if (_json.containsKey("responseSize")) {
      responseSize = _json["responseSize"];
    }
    if (_json.containsKey("sourceReference")) {
      sourceReference = _json["sourceReference"].map((value) => new SourceReference.fromJson(value)).toList();
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("taskName")) {
      taskName = _json["taskName"];
    }
    if (_json.containsKey("taskQueueName")) {
      taskQueueName = _json["taskQueueName"];
    }
    if (_json.containsKey("traceId")) {
      traceId = _json["traceId"];
    }
    if (_json.containsKey("urlMapEntry")) {
      urlMapEntry = _json["urlMapEntry"];
    }
    if (_json.containsKey("userAgent")) {
      userAgent = _json["userAgent"];
    }
    if (_json.containsKey("versionId")) {
      versionId = _json["versionId"];
    }
    if (_json.containsKey("wasLoadingRequest")) {
      wasLoadingRequest = _json["wasLoadingRequest"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (appEngineRelease != null) {
      _json["appEngineRelease"] = appEngineRelease;
    }
    if (appId != null) {
      _json["appId"] = appId;
    }
    if (cost != null) {
      _json["cost"] = cost;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (finished != null) {
      _json["finished"] = finished;
    }
    if (first != null) {
      _json["first"] = first;
    }
    if (host != null) {
      _json["host"] = host;
    }
    if (httpVersion != null) {
      _json["httpVersion"] = httpVersion;
    }
    if (instanceId != null) {
      _json["instanceId"] = instanceId;
    }
    if (instanceIndex != null) {
      _json["instanceIndex"] = instanceIndex;
    }
    if (ip != null) {
      _json["ip"] = ip;
    }
    if (latency != null) {
      _json["latency"] = latency;
    }
    if (line != null) {
      _json["line"] = line.map((value) => (value).toJson()).toList();
    }
    if (megaCycles != null) {
      _json["megaCycles"] = megaCycles;
    }
    if (method != null) {
      _json["method"] = method;
    }
    if (moduleId != null) {
      _json["moduleId"] = moduleId;
    }
    if (nickname != null) {
      _json["nickname"] = nickname;
    }
    if (pendingTime != null) {
      _json["pendingTime"] = pendingTime;
    }
    if (referrer != null) {
      _json["referrer"] = referrer;
    }
    if (requestId != null) {
      _json["requestId"] = requestId;
    }
    if (resource != null) {
      _json["resource"] = resource;
    }
    if (responseSize != null) {
      _json["responseSize"] = responseSize;
    }
    if (sourceReference != null) {
      _json["sourceReference"] = sourceReference.map((value) => (value).toJson()).toList();
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (taskName != null) {
      _json["taskName"] = taskName;
    }
    if (taskQueueName != null) {
      _json["taskQueueName"] = taskQueueName;
    }
    if (traceId != null) {
      _json["traceId"] = traceId;
    }
    if (urlMapEntry != null) {
      _json["urlMapEntry"] = urlMapEntry;
    }
    if (userAgent != null) {
      _json["userAgent"] = userAgent;
    }
    if (versionId != null) {
      _json["versionId"] = versionId;
    }
    if (wasLoadingRequest != null) {
      _json["wasLoadingRequest"] = wasLoadingRequest;
    }
    return _json;
  }
}

/** Specifies a location in a source code file. */
class SourceLocation {
  /**
   * Source file name. Depending on the runtime environment, this might be a
   * simple name or a fully-qualified name.
   */
  core.String file;
  /**
   * Human-readable name of the function or method being invoked, with optional
   * context such as the class or package name. This information is used in
   * contexts such as the logs viewer, where a file and line number are less
   * meaningful. The format can vary by language. For example:
   * qual.if.ied.Class.method (Java), dir/package.func (Go), function (Python).
   */
  core.String functionName;
  /** Line within the source file. */
  core.String line;

  SourceLocation();

  SourceLocation.fromJson(core.Map _json) {
    if (_json.containsKey("file")) {
      file = _json["file"];
    }
    if (_json.containsKey("functionName")) {
      functionName = _json["functionName"];
    }
    if (_json.containsKey("line")) {
      line = _json["line"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (file != null) {
      _json["file"] = file;
    }
    if (functionName != null) {
      _json["functionName"] = functionName;
    }
    if (line != null) {
      _json["line"] = line;
    }
    return _json;
  }
}

/**
 * A reference to a particular snapshot of the source tree used to build and
 * deploy an application.
 */
class SourceReference {
  /**
   * Optional. A URI string identifying the repository. Example:
   * "https://github.com/GoogleCloudPlatform/kubernetes.git"
   */
  core.String repository;
  /**
   * The canonical and persistent identifier of the deployed revision. Example
   * (git): "0035781c50ec7aa23385dc841529ce8a4b70db1b"
   */
  core.String revisionId;

  SourceReference();

  SourceReference.fromJson(core.Map _json) {
    if (_json.containsKey("repository")) {
      repository = _json["repository"];
    }
    if (_json.containsKey("revisionId")) {
      revisionId = _json["revisionId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (repository != null) {
      _json["repository"] = repository;
    }
    if (revisionId != null) {
      _json["revisionId"] = revisionId;
    }
    return _json;
  }
}

/** The parameters to WriteLogEntries. */
class WriteLogEntriesRequest {
  /**
   * Required. The log entries to write. Values supplied for the fields
   * log_name, resource, and labels in this entries.write request are inserted
   * into those log entries in this list that do not provide their own
   * values.Stackdriver Logging also creates and inserts values for timestamp
   * and insert_id if the entries do not provide them. The created insert_id for
   * the N'th entry in this list will be greater than earlier entries and less
   * than later entries. Otherwise, the order of log entries in this list does
   * not matter.To improve throughput and to avoid exceeding the quota limit for
   * calls to entries.write, you should write multiple log entries at once
   * rather than calling this method for each individual log entry.
   */
  core.List<LogEntry> entries;
  /**
   * Optional. Default labels that are added to the labels field of all log
   * entries in entries. If a log entry already has a label with the same key as
   * a label in this parameter, then the log entry's label is not changed. See
   * LogEntry.
   */
  core.Map<core.String, core.String> labels;
  /**
   * Optional. A default log resource name that is assigned to all log entries
   * in entries that do not specify a value for log_name:
   * "projects/[PROJECT_ID]/logs/[LOG_ID]"
   * "organizations/[ORGANIZATION_ID]/logs/[LOG_ID]"
   * "billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID]"
   * "folders/[FOLDER_ID]/logs/[LOG_ID]"
   * [LOG_ID] must be URL-encoded. For example,
   * "projects/my-project-id/logs/syslog" or
   * "organizations/1234567890/logs/cloudresourcemanager.googleapis.com%2Factivity".
   * For more information about log names, see LogEntry.
   */
  core.String logName;
  /**
   * Optional. Whether valid entries should be written even if some other
   * entries fail due to INVALID_ARGUMENT or PERMISSION_DENIED errors. If any
   * entry is not written, then the response status is the error associated with
   * one of the failed entries and the response includes error details keyed by
   * the entries' zero-based index in the entries.write method.
   */
  core.bool partialSuccess;
  /**
   * Optional. A default monitored resource object that is assigned to all log
   * entries in entries that do not specify a value for resource. Example:
   * { "type": "gce_instance",
   *   "labels": {
   *     "zone": "us-central1-a", "instance_id": "00000000000000000000" }}
   * See LogEntry.
   */
  MonitoredResource resource;

  WriteLogEntriesRequest();

  WriteLogEntriesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("entries")) {
      entries = _json["entries"].map((value) => new LogEntry.fromJson(value)).toList();
    }
    if (_json.containsKey("labels")) {
      labels = _json["labels"];
    }
    if (_json.containsKey("logName")) {
      logName = _json["logName"];
    }
    if (_json.containsKey("partialSuccess")) {
      partialSuccess = _json["partialSuccess"];
    }
    if (_json.containsKey("resource")) {
      resource = new MonitoredResource.fromJson(_json["resource"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (logName != null) {
      _json["logName"] = logName;
    }
    if (partialSuccess != null) {
      _json["partialSuccess"] = partialSuccess;
    }
    if (resource != null) {
      _json["resource"] = (resource).toJson();
    }
    return _json;
  }
}

/** Result returned from WriteLogEntries. empty */
class WriteLogEntriesResponse {

  WriteLogEntriesResponse();

  WriteLogEntriesResponse.fromJson(core.Map _json) {
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    return _json;
  }
}
