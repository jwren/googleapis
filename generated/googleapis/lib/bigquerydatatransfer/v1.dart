// This is a generated file (see the discoveryapis_generator project).

library googleapis.bigquerydatatransfer.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client bigquerydatatransfer/v1';

/**
 * Transfers data from partner SaaS applications to Google BigQuery on a
 * scheduled, managed basis.
 */
class BigquerydatatransferApi {
  /** View and manage your data in Google BigQuery */
  static const BigqueryScope = "https://www.googleapis.com/auth/bigquery";


  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  BigquerydatatransferApi(http.Client client, {core.String rootUrl: "https://bigquerydatatransfer.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsDataSourcesResourceApi get dataSources => new ProjectsDataSourcesResourceApi(_requester);
  ProjectsLocationsResourceApi get locations => new ProjectsLocationsResourceApi(_requester);
  ProjectsTransferConfigsResourceApi get transferConfigs => new ProjectsTransferConfigsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Returns true if data transfer is enabled for a project.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - The name of the project resource in the form:
   * `projects/{project_id}`
   * Value must have pattern "^projects/[^/]+$".
   *
   * Completes with a [IsEnabledResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<IsEnabledResponse> isEnabled(IsEnabledRequest request, core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':isEnabled';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new IsEnabledResponse.fromJson(data));
  }

  /**
   * Enables or disables data transfer for a project. This
   * method requires the additional scope of
   * 'https://www.googleapis.com/auth/cloudplatformprojects'
   * to manage the cloud project permissions.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - The name of the project resource in the form:
   * `projects/{project_id}`
   * Value must have pattern "^projects/[^/]+$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> setEnabled(SetEnabledRequest request, core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':setEnabled';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

}


class ProjectsDataSourcesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsDataSourcesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Returns true if valid credentials exist for the given data source and
   * requesting user.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - The data source in the form:
   * `projects/{project_id}/dataSources/{data_source_id}`
   * Value must have pattern "^projects/[^/]+/dataSources/[^/]+$".
   *
   * Completes with a [CheckValidCredsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<CheckValidCredsResponse> checkValidCreds(CheckValidCredsRequest request, core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':checkValidCreds';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CheckValidCredsResponse.fromJson(data));
  }

  /**
   * Retrieves a supported data source and returns its settings,
   * which can be used for UI rendering.
   *
   * Request parameters:
   *
   * [name] - The field will contain name of the resource requested, for
   * example:
   * `projects/{project_id}/dataSources/{data_source_id}`
   * Value must have pattern "^projects/[^/]+/dataSources/[^/]+$".
   *
   * Completes with a [DataSource].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<DataSource> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DataSource.fromJson(data));
  }

  /**
   * Lists supported data sources and returns their settings,
   * which can be used for UI rendering.
   *
   * Request parameters:
   *
   * [parent] - The BigQuery project id for which data sources should be
   * returned.
   * Must be in the form: `projects/{project_id}`
   * Value must have pattern "^projects/[^/]+$".
   *
   * [pageToken] - Pagination token, which can be used to request a specific
   * page
   * of `ListDataSourcesRequest` list results. For multiple-page
   * results, `ListDataSourcesResponse` outputs
   * a `next_page` token, which can be used as the
   * `page_token` value to request the next page of list results.
   *
   * [pageSize] - Page size. The default page size is the maximum value of 1000
   * results.
   *
   * Completes with a [ListDataSourcesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListDataSourcesResponse> list(core.String parent, {core.String pageToken, core.int pageSize}) {
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/dataSources';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListDataSourcesResponse.fromJson(data));
  }

}


class ProjectsLocationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataSourcesResourceApi get dataSources => new ProjectsLocationsDataSourcesResourceApi(_requester);
  ProjectsLocationsTransferConfigsResourceApi get transferConfigs => new ProjectsLocationsTransferConfigsResourceApi(_requester);

  ProjectsLocationsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Returns true if data transfer is enabled for a project.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - The name of the project resource in the form:
   * `projects/{project_id}`
   * Value must have pattern "^projects/[^/]+/locations/[^/]+$".
   *
   * Completes with a [IsEnabledResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<IsEnabledResponse> isEnabled(IsEnabledRequest request, core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':isEnabled';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new IsEnabledResponse.fromJson(data));
  }

  /**
   * Enables or disables data transfer for a project. This
   * method requires the additional scope of
   * 'https://www.googleapis.com/auth/cloudplatformprojects'
   * to manage the cloud project permissions.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - The name of the project resource in the form:
   * `projects/{project_id}`
   * Value must have pattern "^projects/[^/]+/locations/[^/]+$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> setEnabled(SetEnabledRequest request, core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':setEnabled';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

}


class ProjectsLocationsDataSourcesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataSourcesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Returns true if valid credentials exist for the given data source and
   * requesting user.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - The data source in the form:
   * `projects/{project_id}/dataSources/{data_source_id}`
   * Value must have pattern
   * "^projects/[^/]+/locations/[^/]+/dataSources/[^/]+$".
   *
   * Completes with a [CheckValidCredsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<CheckValidCredsResponse> checkValidCreds(CheckValidCredsRequest request, core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':checkValidCreds';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CheckValidCredsResponse.fromJson(data));
  }

  /**
   * Retrieves a supported data source and returns its settings,
   * which can be used for UI rendering.
   *
   * Request parameters:
   *
   * [name] - The field will contain name of the resource requested, for
   * example:
   * `projects/{project_id}/dataSources/{data_source_id}`
   * Value must have pattern
   * "^projects/[^/]+/locations/[^/]+/dataSources/[^/]+$".
   *
   * Completes with a [DataSource].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<DataSource> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DataSource.fromJson(data));
  }

  /**
   * Lists supported data sources and returns their settings,
   * which can be used for UI rendering.
   *
   * Request parameters:
   *
   * [parent] - The BigQuery project id for which data sources should be
   * returned.
   * Must be in the form: `projects/{project_id}`
   * Value must have pattern "^projects/[^/]+/locations/[^/]+$".
   *
   * [pageToken] - Pagination token, which can be used to request a specific
   * page
   * of `ListDataSourcesRequest` list results. For multiple-page
   * results, `ListDataSourcesResponse` outputs
   * a `next_page` token, which can be used as the
   * `page_token` value to request the next page of list results.
   *
   * [pageSize] - Page size. The default page size is the maximum value of 1000
   * results.
   *
   * Completes with a [ListDataSourcesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListDataSourcesResponse> list(core.String parent, {core.String pageToken, core.int pageSize}) {
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/dataSources';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListDataSourcesResponse.fromJson(data));
  }

}


class ProjectsLocationsTransferConfigsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsTransferConfigsRunsResourceApi get runs => new ProjectsLocationsTransferConfigsRunsResourceApi(_requester);

  ProjectsLocationsTransferConfigsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a new data transfer configuration.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [parent] - The BigQuery project id where the transfer configuration should
   * be created.
   * Value must have pattern "^projects/[^/]+/locations/[^/]+$".
   *
   * [authorizationCode] - Optional OAuth2 authorization code to use with this
   * transfer configuration.
   * This is required if new credentials are needed, as indicated by
   * `CheckValidCreds`.
   * In order to obtain authorization_code, please make a
   * request to
   * https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?client_id=<datatransferapiclientid>&scope=<data_source_scopes>&redirect_uri=<redirect_uri>
   *
   * * client_id should be OAuth client_id of BigQuery DTS API for the given
   *   data source returned by ListDataSources method.
   * * data_source_scopes are the scopes returned by ListDataSources method.
   * * redirect_uri is an optional parameter. If not specified, then
   *   authorization code is posted to the opener of authorization flow window.
   *   Otherwise it will be sent to the redirect uri. A special value of
   *   urn:ietf:wg:oauth:2.0:oob means that authorization code should be
   *   returned in the title bar of the browser, with the page text prompting
   *   the user to copy the code and paste it in the application.
   *
   * Completes with a [TransferConfig].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TransferConfig> create(TransferConfig request, core.String parent, {core.String authorizationCode}) {
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
    if (authorizationCode != null) {
      _queryParams["authorizationCode"] = [authorizationCode];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/transferConfigs';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TransferConfig.fromJson(data));
  }

  /**
   * Deletes a data transfer configuration,
   * including any associated transfer runs and logs.
   *
   * Request parameters:
   *
   * [name] - The field will contain name of the resource requested, for
   * example:
   * `projects/{project_id}/transferConfigs/{config_id}`
   * Value must have pattern
   * "^projects/[^/]+/locations/[^/]+/transferConfigs/[^/]+$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
   * Returns information about a data transfer config.
   *
   * Request parameters:
   *
   * [name] - The field will contain name of the resource requested, for
   * example:
   * `projects/{project_id}/transferConfigs/{config_id}`
   * Value must have pattern
   * "^projects/[^/]+/locations/[^/]+/transferConfigs/[^/]+$".
   *
   * Completes with a [TransferConfig].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TransferConfig> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TransferConfig.fromJson(data));
  }

  /**
   * Returns information about all data transfers in the project.
   *
   * Request parameters:
   *
   * [parent] - The BigQuery project id for which data sources
   * should be returned: `projects/{project_id}`.
   * Value must have pattern "^projects/[^/]+/locations/[^/]+$".
   *
   * [pageToken] - Pagination token, which can be used to request a specific
   * page
   * of `ListTransfersRequest` list results. For multiple-page
   * results, `ListTransfersResponse` outputs
   * a `next_page` token, which can be used as the
   * `page_token` value to request the next page of list results.
   *
   * [pageSize] - Page size. The default page size is the maximum value of 1000
   * results.
   *
   * [dataSourceIds] - When specified, only configurations of requested data
   * sources are returned.
   *
   * Completes with a [ListTransferConfigsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListTransferConfigsResponse> list(core.String parent, {core.String pageToken, core.int pageSize, core.List<core.String> dataSourceIds}) {
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
    if (dataSourceIds != null) {
      _queryParams["dataSourceIds"] = dataSourceIds;
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/transferConfigs';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListTransferConfigsResponse.fromJson(data));
  }

  /**
   * Updates a data transfer configuration.
   * All fields must be set, even if they are not updated.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - The resource name of the transfer run.
   * Transfer run names have the form
   * `projects/{project_id}/transferConfigs/{config_id}`.
   * Where `config_id` is usually a uuid, even though it is not
   * guaranteed or required. The name is ignored when creating a transfer run.
   * Value must have pattern
   * "^projects/[^/]+/locations/[^/]+/transferConfigs/[^/]+$".
   *
   * [authorizationCode] - Optional OAuth2 authorization code to use with this
   * transfer configuration.
   * If it is provided, the transfer configuration will be associated with the
   * gaia id of the authorizing user.
   * In order to obtain authorization_code, please make a
   * request to
   * https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?client_id=<datatransferapiclientid>&scope=<data_source_scopes>&redirect_uri=<redirect_uri>
   *
   * * client_id should be OAuth client_id of BigQuery DTS API for the given
   *   data source returned by ListDataSources method.
   * * data_source_scopes are the scopes returned by ListDataSources method.
   * * redirect_uri is an optional parameter. If not specified, then
   *   authorization code is posted to the opener of authorization flow window.
   *   Otherwise it will be sent to the redirect uri. A special value of
   *   urn:ietf:wg:oauth:2.0:oob means that authorization code should be
   *   returned in the title bar of the browser, with the page text prompting
   *   the user to copy the code and paste it in the application.
   *
   * [updateMask] - Required list of fields to be updated in this request.
   *
   * Completes with a [TransferConfig].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TransferConfig> patch(TransferConfig request, core.String name, {core.String authorizationCode, core.String updateMask}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (authorizationCode != null) {
      _queryParams["authorizationCode"] = [authorizationCode];
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TransferConfig.fromJson(data));
  }

  /**
   * Creates transfer runs for a time range [range_start_time, range_end_time].
   * For each date - or whatever granularity the data source supports - in the
   * range, one transfer run is created.
   * Note that runs are created per UTC time in the time range.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [parent] - Transfer configuration name in the form:
   * `projects/{project_id}/transferConfigs/{config_id}`.
   * Value must have pattern
   * "^projects/[^/]+/locations/[^/]+/transferConfigs/[^/]+$".
   *
   * Completes with a [ScheduleTransferRunsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ScheduleTransferRunsResponse> scheduleRuns(ScheduleTransferRunsRequest request, core.String parent) {
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + ':scheduleRuns';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ScheduleTransferRunsResponse.fromJson(data));
  }

}


class ProjectsLocationsTransferConfigsRunsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsTransferConfigsRunsTransferLogsResourceApi get transferLogs => new ProjectsLocationsTransferConfigsRunsTransferLogsResourceApi(_requester);

  ProjectsLocationsTransferConfigsRunsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified transfer run.
   *
   * Request parameters:
   *
   * [name] - The field will contain name of the resource requested, for
   * example:
   * `projects/{project_id}/transferConfigs/{config_id}/runs/{run_id}`
   * Value must have pattern
   * "^projects/[^/]+/locations/[^/]+/transferConfigs/[^/]+/runs/[^/]+$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
   * Returns information about the particular transfer run.
   *
   * Request parameters:
   *
   * [name] - The field will contain name of the resource requested, for
   * example:
   * `projects/{project_id}/transferConfigs/{config_id}/runs/{run_id}`
   * Value must have pattern
   * "^projects/[^/]+/locations/[^/]+/transferConfigs/[^/]+/runs/[^/]+$".
   *
   * Completes with a [TransferRun].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TransferRun> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TransferRun.fromJson(data));
  }

  /**
   * Returns information about running and completed jobs.
   *
   * Request parameters:
   *
   * [parent] - Name of transfer configuration for which transfer runs should be
   * retrieved.
   * Format of transfer configuration resource name is:
   * `projects/{project_id}/transferConfigs/{config_id}`.
   * Value must have pattern
   * "^projects/[^/]+/locations/[^/]+/transferConfigs/[^/]+$".
   *
   * [pageToken] - Pagination token, which can be used to request a specific
   * page
   * of `ListTransferRunsRequest` list results. For multiple-page
   * results, `ListTransferRunsResponse` outputs
   * a `next_page` token, which can be used as the
   * `page_token` value to request the next page of list results.
   *
   * [statuses] - When specified, only transfer runs with requested statuses are
   * returned.
   *
   * [pageSize] - Page size. The default page size is the maximum value of 1000
   * results.
   *
   * [runAttempt] - Indicates how run attempts are to be pulled.
   * Possible string values are:
   * - "RUN_ATTEMPT_UNSPECIFIED" : A RUN_ATTEMPT_UNSPECIFIED.
   * - "LATEST" : A LATEST.
   *
   * Completes with a [ListTransferRunsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListTransferRunsResponse> list(core.String parent, {core.String pageToken, core.List<core.String> statuses, core.int pageSize, core.String runAttempt}) {
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
    if (statuses != null) {
      _queryParams["statuses"] = statuses;
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (runAttempt != null) {
      _queryParams["runAttempt"] = [runAttempt];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/runs';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListTransferRunsResponse.fromJson(data));
  }

}


class ProjectsLocationsTransferConfigsRunsTransferLogsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsTransferConfigsRunsTransferLogsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Returns user facing log messages for the data transfer run.
   *
   * Request parameters:
   *
   * [parent] - Transfer run name in the form:
   * `projects/{project_id}/transferConfigs/{config_Id}/runs/{run_id}`.
   * Value must have pattern
   * "^projects/[^/]+/locations/[^/]+/transferConfigs/[^/]+/runs/[^/]+$".
   *
   * [pageToken] - Pagination token, which can be used to request a specific
   * page
   * of `ListTransferLogsRequest` list results. For multiple-page
   * results, `ListTransferLogsResponse` outputs
   * a `next_page` token, which can be used as the
   * `page_token` value to request the next page of list results.
   *
   * [pageSize] - Page size. The default page size is the maximum value of 1000
   * results.
   *
   * [messageTypes] - Message types to return. If not populated - INFO, WARNING
   * and ERROR
   * messages are returned.
   *
   * Completes with a [ListTransferLogsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListTransferLogsResponse> list(core.String parent, {core.String pageToken, core.int pageSize, core.List<core.String> messageTypes}) {
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
    if (messageTypes != null) {
      _queryParams["messageTypes"] = messageTypes;
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/transferLogs';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListTransferLogsResponse.fromJson(data));
  }

}


class ProjectsTransferConfigsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsTransferConfigsRunsResourceApi get runs => new ProjectsTransferConfigsRunsResourceApi(_requester);

  ProjectsTransferConfigsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a new data transfer configuration.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [parent] - The BigQuery project id where the transfer configuration should
   * be created.
   * Value must have pattern "^projects/[^/]+$".
   *
   * [authorizationCode] - Optional OAuth2 authorization code to use with this
   * transfer configuration.
   * This is required if new credentials are needed, as indicated by
   * `CheckValidCreds`.
   * In order to obtain authorization_code, please make a
   * request to
   * https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?client_id=<datatransferapiclientid>&scope=<data_source_scopes>&redirect_uri=<redirect_uri>
   *
   * * client_id should be OAuth client_id of BigQuery DTS API for the given
   *   data source returned by ListDataSources method.
   * * data_source_scopes are the scopes returned by ListDataSources method.
   * * redirect_uri is an optional parameter. If not specified, then
   *   authorization code is posted to the opener of authorization flow window.
   *   Otherwise it will be sent to the redirect uri. A special value of
   *   urn:ietf:wg:oauth:2.0:oob means that authorization code should be
   *   returned in the title bar of the browser, with the page text prompting
   *   the user to copy the code and paste it in the application.
   *
   * Completes with a [TransferConfig].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TransferConfig> create(TransferConfig request, core.String parent, {core.String authorizationCode}) {
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
    if (authorizationCode != null) {
      _queryParams["authorizationCode"] = [authorizationCode];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/transferConfigs';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TransferConfig.fromJson(data));
  }

  /**
   * Deletes a data transfer configuration,
   * including any associated transfer runs and logs.
   *
   * Request parameters:
   *
   * [name] - The field will contain name of the resource requested, for
   * example:
   * `projects/{project_id}/transferConfigs/{config_id}`
   * Value must have pattern "^projects/[^/]+/transferConfigs/[^/]+$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
   * Returns information about a data transfer config.
   *
   * Request parameters:
   *
   * [name] - The field will contain name of the resource requested, for
   * example:
   * `projects/{project_id}/transferConfigs/{config_id}`
   * Value must have pattern "^projects/[^/]+/transferConfigs/[^/]+$".
   *
   * Completes with a [TransferConfig].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TransferConfig> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TransferConfig.fromJson(data));
  }

  /**
   * Returns information about all data transfers in the project.
   *
   * Request parameters:
   *
   * [parent] - The BigQuery project id for which data sources
   * should be returned: `projects/{project_id}`.
   * Value must have pattern "^projects/[^/]+$".
   *
   * [pageToken] - Pagination token, which can be used to request a specific
   * page
   * of `ListTransfersRequest` list results. For multiple-page
   * results, `ListTransfersResponse` outputs
   * a `next_page` token, which can be used as the
   * `page_token` value to request the next page of list results.
   *
   * [pageSize] - Page size. The default page size is the maximum value of 1000
   * results.
   *
   * [dataSourceIds] - When specified, only configurations of requested data
   * sources are returned.
   *
   * Completes with a [ListTransferConfigsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListTransferConfigsResponse> list(core.String parent, {core.String pageToken, core.int pageSize, core.List<core.String> dataSourceIds}) {
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
    if (dataSourceIds != null) {
      _queryParams["dataSourceIds"] = dataSourceIds;
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/transferConfigs';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListTransferConfigsResponse.fromJson(data));
  }

  /**
   * Updates a data transfer configuration.
   * All fields must be set, even if they are not updated.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - The resource name of the transfer run.
   * Transfer run names have the form
   * `projects/{project_id}/transferConfigs/{config_id}`.
   * Where `config_id` is usually a uuid, even though it is not
   * guaranteed or required. The name is ignored when creating a transfer run.
   * Value must have pattern "^projects/[^/]+/transferConfigs/[^/]+$".
   *
   * [updateMask] - Required list of fields to be updated in this request.
   *
   * [authorizationCode] - Optional OAuth2 authorization code to use with this
   * transfer configuration.
   * If it is provided, the transfer configuration will be associated with the
   * gaia id of the authorizing user.
   * In order to obtain authorization_code, please make a
   * request to
   * https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?client_id=<datatransferapiclientid>&scope=<data_source_scopes>&redirect_uri=<redirect_uri>
   *
   * * client_id should be OAuth client_id of BigQuery DTS API for the given
   *   data source returned by ListDataSources method.
   * * data_source_scopes are the scopes returned by ListDataSources method.
   * * redirect_uri is an optional parameter. If not specified, then
   *   authorization code is posted to the opener of authorization flow window.
   *   Otherwise it will be sent to the redirect uri. A special value of
   *   urn:ietf:wg:oauth:2.0:oob means that authorization code should be
   *   returned in the title bar of the browser, with the page text prompting
   *   the user to copy the code and paste it in the application.
   *
   * Completes with a [TransferConfig].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TransferConfig> patch(TransferConfig request, core.String name, {core.String updateMask, core.String authorizationCode}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if (authorizationCode != null) {
      _queryParams["authorizationCode"] = [authorizationCode];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TransferConfig.fromJson(data));
  }

  /**
   * Creates transfer runs for a time range [range_start_time, range_end_time].
   * For each date - or whatever granularity the data source supports - in the
   * range, one transfer run is created.
   * Note that runs are created per UTC time in the time range.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [parent] - Transfer configuration name in the form:
   * `projects/{project_id}/transferConfigs/{config_id}`.
   * Value must have pattern "^projects/[^/]+/transferConfigs/[^/]+$".
   *
   * Completes with a [ScheduleTransferRunsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ScheduleTransferRunsResponse> scheduleRuns(ScheduleTransferRunsRequest request, core.String parent) {
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + ':scheduleRuns';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ScheduleTransferRunsResponse.fromJson(data));
  }

}


class ProjectsTransferConfigsRunsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsTransferConfigsRunsTransferLogsResourceApi get transferLogs => new ProjectsTransferConfigsRunsTransferLogsResourceApi(_requester);

  ProjectsTransferConfigsRunsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified transfer run.
   *
   * Request parameters:
   *
   * [name] - The field will contain name of the resource requested, for
   * example:
   * `projects/{project_id}/transferConfigs/{config_id}/runs/{run_id}`
   * Value must have pattern
   * "^projects/[^/]+/transferConfigs/[^/]+/runs/[^/]+$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
   * Returns information about the particular transfer run.
   *
   * Request parameters:
   *
   * [name] - The field will contain name of the resource requested, for
   * example:
   * `projects/{project_id}/transferConfigs/{config_id}/runs/{run_id}`
   * Value must have pattern
   * "^projects/[^/]+/transferConfigs/[^/]+/runs/[^/]+$".
   *
   * Completes with a [TransferRun].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TransferRun> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TransferRun.fromJson(data));
  }

  /**
   * Returns information about running and completed jobs.
   *
   * Request parameters:
   *
   * [parent] - Name of transfer configuration for which transfer runs should be
   * retrieved.
   * Format of transfer configuration resource name is:
   * `projects/{project_id}/transferConfigs/{config_id}`.
   * Value must have pattern "^projects/[^/]+/transferConfigs/[^/]+$".
   *
   * [pageToken] - Pagination token, which can be used to request a specific
   * page
   * of `ListTransferRunsRequest` list results. For multiple-page
   * results, `ListTransferRunsResponse` outputs
   * a `next_page` token, which can be used as the
   * `page_token` value to request the next page of list results.
   *
   * [statuses] - When specified, only transfer runs with requested statuses are
   * returned.
   *
   * [pageSize] - Page size. The default page size is the maximum value of 1000
   * results.
   *
   * [runAttempt] - Indicates how run attempts are to be pulled.
   * Possible string values are:
   * - "RUN_ATTEMPT_UNSPECIFIED" : A RUN_ATTEMPT_UNSPECIFIED.
   * - "LATEST" : A LATEST.
   *
   * Completes with a [ListTransferRunsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListTransferRunsResponse> list(core.String parent, {core.String pageToken, core.List<core.String> statuses, core.int pageSize, core.String runAttempt}) {
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
    if (statuses != null) {
      _queryParams["statuses"] = statuses;
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (runAttempt != null) {
      _queryParams["runAttempt"] = [runAttempt];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/runs';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListTransferRunsResponse.fromJson(data));
  }

}


class ProjectsTransferConfigsRunsTransferLogsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsTransferConfigsRunsTransferLogsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Returns user facing log messages for the data transfer run.
   *
   * Request parameters:
   *
   * [parent] - Transfer run name in the form:
   * `projects/{project_id}/transferConfigs/{config_Id}/runs/{run_id}`.
   * Value must have pattern
   * "^projects/[^/]+/transferConfigs/[^/]+/runs/[^/]+$".
   *
   * [pageToken] - Pagination token, which can be used to request a specific
   * page
   * of `ListTransferLogsRequest` list results. For multiple-page
   * results, `ListTransferLogsResponse` outputs
   * a `next_page` token, which can be used as the
   * `page_token` value to request the next page of list results.
   *
   * [pageSize] - Page size. The default page size is the maximum value of 1000
   * results.
   *
   * [messageTypes] - Message types to return. If not populated - INFO, WARNING
   * and ERROR
   * messages are returned.
   *
   * Completes with a [ListTransferLogsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListTransferLogsResponse> list(core.String parent, {core.String pageToken, core.int pageSize, core.List<core.String> messageTypes}) {
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
    if (messageTypes != null) {
      _queryParams["messageTypes"] = messageTypes;
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/transferLogs';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListTransferLogsResponse.fromJson(data));
  }

}



/**
 * A request to determine whether the user has valid credentials. This method
 * is used to limit the number of OAuth popups in the user interface. The
 * user id is inferred from the API call context.
 * If the data source has the Google+ authorization type, this method
 * returns false, as it cannot be determined whether the credentials are
 * already valid merely based on the user id.
 */
class CheckValidCredsRequest {

  CheckValidCredsRequest();

  CheckValidCredsRequest.fromJson(core.Map _json) {
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    return _json;
  }
}

/** A response indicating whether the credentials exist and are valid. */
class CheckValidCredsResponse {
  /** If set to `true`, the credentials exist and are valid. */
  core.bool hasValidCreds;

  CheckValidCredsResponse();

  CheckValidCredsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("hasValidCreds")) {
      hasValidCreds = _json["hasValidCreds"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (hasValidCreds != null) {
      _json["hasValidCreds"] = hasValidCreds;
    }
    return _json;
  }
}

/**
 * Represents data source metadata. Metadata is sufficient to
 * render UI and request proper OAuth tokens.
 */
class DataSource {
  /**
   * Indicates the type of authorization.
   * Possible string values are:
   * - "AUTHORIZATION_TYPE_UNSPECIFIED" : Type unspecified.
   * - "AUTHORIZATION_CODE" : Use OAuth 2 authorization codes that can be
   * exchanged
   * for a refresh token on the backend.
   * - "GOOGLE_PLUS_AUTHORIZATION_CODE" : Return an authorization code for a
   * given Google+ page that can then be
   * exchanged for a refresh token on the backend.
   */
  core.String authorizationType;
  /**
   * Data source client id which should be used to receive refresh token.
   * When not supplied, no offline credentials are populated for data transfer.
   */
  core.String clientId;
  /**
   * Specifies whether the data source supports automatic data refresh for the
   * past few days, and how it's supported.
   * For some data sources, data might not be complete until a few days later,
   * so it's useful to refresh data automatically.
   * Possible string values are:
   * - "NONE" : The data source won't support data auto refresh, which is
   * default value.
   * - "SLIDING_WINDOW" : The data source supports data auto refresh, and runs
   * will be scheduled
   * for the past few days. Does not allow custom values to be set for each
   * transfer config.
   * - "CUSTOM_SLIDING_WINDOW" : The data source supports data auto refresh, and
   * runs will be scheduled
   * for the past few days. Allows custom values to be set for each transfer
   * config.
   */
  core.String dataRefreshType;
  /** Data source id. */
  core.String dataSourceId;
  /**
   * Default data refresh window on days.
   * Only meaningful when `data_refresh_type` = `SLIDING_WINDOW`.
   */
  core.int defaultDataRefreshWindowDays;
  /**
   * Default data transfer schedule.
   * Examples of valid schedules include:
   * `1st,3rd monday of month 15:30`,
   * `every wed,fri of jan,jun 13:15`, and
   * `first sunday of quarter 00:00`.
   */
  core.String defaultSchedule;
  /** User friendly data source description string. */
  core.String description;
  /** User friendly data source name. */
  core.String displayName;
  /** Url for the help document for this data source. */
  core.String helpUrl;
  /**
   * Disables backfilling and manual run scheduling
   * for the data source.
   */
  core.bool manualRunsDisabled;
  /** Data source resource name. */
  core.String name;
  /** Data source parameters. */
  core.List<DataSourceParameter> parameters;
  /**
   * Api auth scopes for which refresh token needs to be obtained. Only valid
   * when `client_id` is specified. Ignored otherwise. These are scopes needed
   * by a data source to prepare data and ingest them into BigQuery,
   * e.g., https://www.googleapis.com/auth/bigquery
   */
  core.List<core.String> scopes;
  /**
   * The number of seconds to wait for a status update from the data source
   * before BigQuery marks the transfer as failed.
   */
  core.int statusUpdateDeadlineSeconds;
  /**
   * Specifies whether the data source supports a user defined schedule, or
   * operates on the default schedule.
   * When set to `true`, user can override default schedule.
   */
  core.bool supportsCustomSchedule;
  /**
   * Indicates whether the data source supports multiple transfers
   * to different BigQuery targets.
   */
  core.bool supportsMultipleTransfers;
  /**
   * Transfer type. Currently supports only batch transfers,
   * which are transfers that use the BigQuery batch APIs (load or
   * query) to ingest the data.
   * Possible string values are:
   * - "TRANSFER_TYPE_UNSPECIFIED" : Invalid or Unknown transfer type
   * placeholder.
   * - "BATCH" : Batch data transfer.
   * - "STREAMING" : Streaming data transfer. Streaming data source currently
   * doesn't
   * support multiple transfer configs per project.
   */
  core.String transferType;

  DataSource();

  DataSource.fromJson(core.Map _json) {
    if (_json.containsKey("authorizationType")) {
      authorizationType = _json["authorizationType"];
    }
    if (_json.containsKey("clientId")) {
      clientId = _json["clientId"];
    }
    if (_json.containsKey("dataRefreshType")) {
      dataRefreshType = _json["dataRefreshType"];
    }
    if (_json.containsKey("dataSourceId")) {
      dataSourceId = _json["dataSourceId"];
    }
    if (_json.containsKey("defaultDataRefreshWindowDays")) {
      defaultDataRefreshWindowDays = _json["defaultDataRefreshWindowDays"];
    }
    if (_json.containsKey("defaultSchedule")) {
      defaultSchedule = _json["defaultSchedule"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("helpUrl")) {
      helpUrl = _json["helpUrl"];
    }
    if (_json.containsKey("manualRunsDisabled")) {
      manualRunsDisabled = _json["manualRunsDisabled"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("parameters")) {
      parameters = _json["parameters"].map((value) => new DataSourceParameter.fromJson(value)).toList();
    }
    if (_json.containsKey("scopes")) {
      scopes = _json["scopes"];
    }
    if (_json.containsKey("statusUpdateDeadlineSeconds")) {
      statusUpdateDeadlineSeconds = _json["statusUpdateDeadlineSeconds"];
    }
    if (_json.containsKey("supportsCustomSchedule")) {
      supportsCustomSchedule = _json["supportsCustomSchedule"];
    }
    if (_json.containsKey("supportsMultipleTransfers")) {
      supportsMultipleTransfers = _json["supportsMultipleTransfers"];
    }
    if (_json.containsKey("transferType")) {
      transferType = _json["transferType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (authorizationType != null) {
      _json["authorizationType"] = authorizationType;
    }
    if (clientId != null) {
      _json["clientId"] = clientId;
    }
    if (dataRefreshType != null) {
      _json["dataRefreshType"] = dataRefreshType;
    }
    if (dataSourceId != null) {
      _json["dataSourceId"] = dataSourceId;
    }
    if (defaultDataRefreshWindowDays != null) {
      _json["defaultDataRefreshWindowDays"] = defaultDataRefreshWindowDays;
    }
    if (defaultSchedule != null) {
      _json["defaultSchedule"] = defaultSchedule;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (helpUrl != null) {
      _json["helpUrl"] = helpUrl;
    }
    if (manualRunsDisabled != null) {
      _json["manualRunsDisabled"] = manualRunsDisabled;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (parameters != null) {
      _json["parameters"] = parameters.map((value) => (value).toJson()).toList();
    }
    if (scopes != null) {
      _json["scopes"] = scopes;
    }
    if (statusUpdateDeadlineSeconds != null) {
      _json["statusUpdateDeadlineSeconds"] = statusUpdateDeadlineSeconds;
    }
    if (supportsCustomSchedule != null) {
      _json["supportsCustomSchedule"] = supportsCustomSchedule;
    }
    if (supportsMultipleTransfers != null) {
      _json["supportsMultipleTransfers"] = supportsMultipleTransfers;
    }
    if (transferType != null) {
      _json["transferType"] = transferType;
    }
    return _json;
  }
}

/**
 * Represents a data source parameter with validation rules, so that
 * parameters can be rendered in the UI. These parameters are given to us by
 * supported data sources, and include all needed information for rendering
 * and validation.
 * Thus, whoever uses this api can decide to generate either generic ui,
 * or custom data source specific forms.
 */
class DataSourceParameter {
  /** All possible values for the parameter. */
  core.List<core.String> allowedValues;
  /** Parameter description. */
  core.String description;
  /** Parameter display name in the user interface. */
  core.String displayName;
  /** When parameter is a record, describes child fields. */
  core.List<DataSourceParameter> fields;
  /** Cannot be changed after initial creation. */
  core.bool immutable;
  /** For integer and double values specifies maxminum allowed value. */
  core.double maxValue;
  /** For integer and double values specifies minimum allowed value. */
  core.double minValue;
  /** Parameter identifier. */
  core.String paramId;
  /**
   * If set to true, schema should be taken from the parent with the same
   * parameter_id. Only applicable when parameter type is RECORD.
   */
  core.bool recurse;
  /** Can parameter have multiple values. */
  core.bool repeated;
  /** Is parameter required. */
  core.bool required;
  /**
   * Parameter type.
   * Possible string values are:
   * - "TYPE_UNSPECIFIED" : Type unspecified.
   * - "STRING" : String parameter.
   * - "INTEGER" : Integer parameter (64-bits).
   * Will be serialized to json as string.
   * - "DOUBLE" : Double precision floating point parameter.
   * - "BOOLEAN" : Boolean parameter.
   * - "RECORD" : Record parameter.
   * - "PLUS_PAGE" : Page ID for a Google+ Page.
   */
  core.String type;
  /**
   * Description of the requirements for this field, in case the user input does
   * not fulfill the regex pattern or min/max values.
   */
  core.String validationDescription;
  /** URL to a help document to further explain the naming requirements. */
  core.String validationHelpUrl;
  /** Regular expression which can be used for parameter validation. */
  core.String validationRegex;

  DataSourceParameter();

  DataSourceParameter.fromJson(core.Map _json) {
    if (_json.containsKey("allowedValues")) {
      allowedValues = _json["allowedValues"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("fields")) {
      fields = _json["fields"].map((value) => new DataSourceParameter.fromJson(value)).toList();
    }
    if (_json.containsKey("immutable")) {
      immutable = _json["immutable"];
    }
    if (_json.containsKey("maxValue")) {
      maxValue = _json["maxValue"];
    }
    if (_json.containsKey("minValue")) {
      minValue = _json["minValue"];
    }
    if (_json.containsKey("paramId")) {
      paramId = _json["paramId"];
    }
    if (_json.containsKey("recurse")) {
      recurse = _json["recurse"];
    }
    if (_json.containsKey("repeated")) {
      repeated = _json["repeated"];
    }
    if (_json.containsKey("required")) {
      required = _json["required"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("validationDescription")) {
      validationDescription = _json["validationDescription"];
    }
    if (_json.containsKey("validationHelpUrl")) {
      validationHelpUrl = _json["validationHelpUrl"];
    }
    if (_json.containsKey("validationRegex")) {
      validationRegex = _json["validationRegex"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (allowedValues != null) {
      _json["allowedValues"] = allowedValues;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (fields != null) {
      _json["fields"] = fields.map((value) => (value).toJson()).toList();
    }
    if (immutable != null) {
      _json["immutable"] = immutable;
    }
    if (maxValue != null) {
      _json["maxValue"] = maxValue;
    }
    if (minValue != null) {
      _json["minValue"] = minValue;
    }
    if (paramId != null) {
      _json["paramId"] = paramId;
    }
    if (recurse != null) {
      _json["recurse"] = recurse;
    }
    if (repeated != null) {
      _json["repeated"] = repeated;
    }
    if (required != null) {
      _json["required"] = required;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (validationDescription != null) {
      _json["validationDescription"] = validationDescription;
    }
    if (validationHelpUrl != null) {
      _json["validationHelpUrl"] = validationHelpUrl;
    }
    if (validationRegex != null) {
      _json["validationRegex"] = validationRegex;
    }
    return _json;
  }
}

/**
 * A generic empty message that you can re-use to avoid defining duplicated
 * empty messages in your APIs. A typical example is to use it as the request
 * or the response type of an API method. For instance:
 *
 *     service Foo {
 *       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
 *     }
 *
 * The JSON representation for `Empty` is empty JSON object `{}`.
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

/** A request to determine whether data transfer is enabled for the project. */
class IsEnabledRequest {

  IsEnabledRequest();

  IsEnabledRequest.fromJson(core.Map _json) {
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    return _json;
  }
}

/** A response to indicate whether data transfer is enabled for the project. */
class IsEnabledResponse {
  /** Indicates whether the project is enabled. */
  core.bool enabled;

  IsEnabledResponse();

  IsEnabledResponse.fromJson(core.Map _json) {
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    return _json;
  }
}

/** Returns list of supported data sources and their metadata. */
class ListDataSourcesResponse {
  /** List of supported data sources and their transfer settings. */
  core.List<DataSource> dataSources;
  /**
   * The next-pagination token. For multiple-page list results,
   * this token can be used as the
   * `ListDataSourcesRequest.page_token`
   * to request the next page of list results.
   * @OutputOnly
   */
  core.String nextPageToken;

  ListDataSourcesResponse();

  ListDataSourcesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("dataSources")) {
      dataSources = _json["dataSources"].map((value) => new DataSource.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (dataSources != null) {
      _json["dataSources"] = dataSources.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/** The returned list of pipelines in the project. */
class ListTransferConfigsResponse {
  /**
   * The next-pagination token. For multiple-page list results,
   * this token can be used as the
   * `ListTransferConfigsRequest.page_token`
   * to request the next page of list results.
   * @OutputOnly
   */
  core.String nextPageToken;
  /**
   * The stored pipeline transfer configurations.
   * @OutputOnly
   */
  core.List<TransferConfig> transferConfigs;

  ListTransferConfigsResponse();

  ListTransferConfigsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("transferConfigs")) {
      transferConfigs = _json["transferConfigs"].map((value) => new TransferConfig.fromJson(value)).toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (transferConfigs != null) {
      _json["transferConfigs"] = transferConfigs.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** The returned list transfer run messages. */
class ListTransferLogsResponse {
  /**
   * The next-pagination token. For multiple-page list results,
   * this token can be used as the
   * `GetTransferRunLogRequest.page_token`
   * to request the next page of list results.
   * @OutputOnly
   */
  core.String nextPageToken;
  /**
   * The stored pipeline transfer messages.
   * @OutputOnly
   */
  core.List<TransferMessage> transferMessages;

  ListTransferLogsResponse();

  ListTransferLogsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("transferMessages")) {
      transferMessages = _json["transferMessages"].map((value) => new TransferMessage.fromJson(value)).toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (transferMessages != null) {
      _json["transferMessages"] = transferMessages.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** The returned list of pipelines in the project. */
class ListTransferRunsResponse {
  /**
   * The next-pagination token. For multiple-page list results,
   * this token can be used as the
   * `ListTransferRunsRequest.page_token`
   * to request the next page of list results.
   * @OutputOnly
   */
  core.String nextPageToken;
  /**
   * The stored pipeline transfer runs.
   * @OutputOnly
   */
  core.List<TransferRun> transferRuns;

  ListTransferRunsResponse();

  ListTransferRunsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("transferRuns")) {
      transferRuns = _json["transferRuns"].map((value) => new TransferRun.fromJson(value)).toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (transferRuns != null) {
      _json["transferRuns"] = transferRuns.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** A request to schedule transfer runs for a time range. */
class ScheduleTransferRunsRequest {
  /** End time of the range of transfer runs. */
  core.String rangeEndTime;
  /** Start time of the range of transfer runs. */
  core.String rangeStartTime;

  ScheduleTransferRunsRequest();

  ScheduleTransferRunsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("rangeEndTime")) {
      rangeEndTime = _json["rangeEndTime"];
    }
    if (_json.containsKey("rangeStartTime")) {
      rangeStartTime = _json["rangeStartTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (rangeEndTime != null) {
      _json["rangeEndTime"] = rangeEndTime;
    }
    if (rangeStartTime != null) {
      _json["rangeStartTime"] = rangeStartTime;
    }
    return _json;
  }
}

/** A response to schedule transfer runs for a time range. */
class ScheduleTransferRunsResponse {
  /** The transfer runs that were created. */
  core.List<TransferRun> createdRuns;

  ScheduleTransferRunsResponse();

  ScheduleTransferRunsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("createdRuns")) {
      createdRuns = _json["createdRuns"].map((value) => new TransferRun.fromJson(value)).toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (createdRuns != null) {
      _json["createdRuns"] = createdRuns.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/**
 * A request to set whether data transfer is enabled or disabled for a project.
 */
class SetEnabledRequest {
  /** Whether data transfer should be enabled or disabled for the project. */
  core.bool enabled;

  SetEnabledRequest();

  SetEnabledRequest.fromJson(core.Map _json) {
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    return _json;
  }
}

/**
 * Represents a data transfer configuration. A transfer configuration
 * contains all metadata needed to perform a data transfer. For example,
 * `destination_dataset_id` specifies where data should be stored.
 * When a new transfer configuration is created, the specified
 * `destination_dataset_id` is created when needed and shared with the
 * appropriate data source service account.
 */
class TransferConfig {
  /**
   * The number of days to look back to automatically refresh the data.
   * For example, if `data_refresh_window_days = 10`, then every day
   * BigQuery reingests data for [today-10, today-1], rather than ingesting data
   * for just [today-1].
   * Only valid if the data source supports the feature. Set the value to  0
   * to use the default value.
   */
  core.int dataRefreshWindowDays;
  /** Data source id. Cannot be changed once data transfer is created. */
  core.String dataSourceId;
  /** The BigQuery target dataset id. */
  core.String destinationDatasetId;
  /**
   * Is this config disabled. When set to true, no runs are scheduled
   * for a given transfer.
   */
  core.bool disabled;
  /** User specified display name for the data transfer. */
  core.String displayName;
  /**
   * The resource name of the transfer run.
   * Transfer run names have the form
   * `projects/{project_id}/transferConfigs/{config_id}`.
   * Where `config_id` is usually a uuid, even though it is not
   * guaranteed or required. The name is ignored when creating a transfer run.
   */
  core.String name;
  /**
   * Next time when data transfer will run. Output only. Applicable
   * only for batch data transfers.
   * @OutputOnly
   */
  core.String nextRunTime;
  /**
   * Data transfer specific parameters.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> params;
  /**
   * Data transfer schedule in GROC format.
   * If the data source does not support a custom schedule, this should be
   * empty. If it is empty, the default value for the data source will be
   * used.
   * The specified times are in UTC.
   * Examples of valid GROC include:
   * `1st,3rd monday of month 15:30`,
   * `every wed,fri of jan,jun 13:15`, and
   * `first sunday of quarter 00:00`.
   */
  core.String schedule;
  /**
   * Status of the most recently updated transfer run.
   * @OutputOnly
   * Possible string values are:
   * - "TRANSFER_STATUS_UNSPECIFIED" : Status placeholder.
   * - "INACTIVE" : Data transfer is inactive.
   * - "PENDING" : Data transfer is scheduled and is waiting to be picked up by
   * data transfer backend.
   * - "RUNNING" : Data transfer is in progress.
   * - "SUCCEEDED" : Data transfer completed successsfully.
   * - "FAILED" : Data transfer failed.
   * - "CANCELLED" : Data transfer is cancelled.
   */
  core.String status;
  /**
   * Data transfer modification time. Ignored by server on input.
   * @OutputOnly
   */
  core.String updateTime;

  TransferConfig();

  TransferConfig.fromJson(core.Map _json) {
    if (_json.containsKey("dataRefreshWindowDays")) {
      dataRefreshWindowDays = _json["dataRefreshWindowDays"];
    }
    if (_json.containsKey("dataSourceId")) {
      dataSourceId = _json["dataSourceId"];
    }
    if (_json.containsKey("destinationDatasetId")) {
      destinationDatasetId = _json["destinationDatasetId"];
    }
    if (_json.containsKey("disabled")) {
      disabled = _json["disabled"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("nextRunTime")) {
      nextRunTime = _json["nextRunTime"];
    }
    if (_json.containsKey("params")) {
      params = _json["params"];
    }
    if (_json.containsKey("schedule")) {
      schedule = _json["schedule"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (dataRefreshWindowDays != null) {
      _json["dataRefreshWindowDays"] = dataRefreshWindowDays;
    }
    if (dataSourceId != null) {
      _json["dataSourceId"] = dataSourceId;
    }
    if (destinationDatasetId != null) {
      _json["destinationDatasetId"] = destinationDatasetId;
    }
    if (disabled != null) {
      _json["disabled"] = disabled;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (nextRunTime != null) {
      _json["nextRunTime"] = nextRunTime;
    }
    if (params != null) {
      _json["params"] = params;
    }
    if (schedule != null) {
      _json["schedule"] = schedule;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/** Represents a user facing message for a particular data transfer run. */
class TransferMessage {
  /** Message text. */
  core.String messageText;
  /** Time when message was logged. */
  core.String messageTime;
  /**
   * Message severity.
   * Possible string values are:
   * - "MESSAGE_SEVERITY_UNSPECIFIED" : No severity specified.
   * - "INFO" : Informational message.
   * - "WARNING" : Warning message.
   * - "ERROR" : Error message.
   */
  core.String severity;

  TransferMessage();

  TransferMessage.fromJson(core.Map _json) {
    if (_json.containsKey("messageText")) {
      messageText = _json["messageText"];
    }
    if (_json.containsKey("messageTime")) {
      messageTime = _json["messageTime"];
    }
    if (_json.containsKey("severity")) {
      severity = _json["severity"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (messageText != null) {
      _json["messageText"] = messageText;
    }
    if (messageTime != null) {
      _json["messageTime"] = messageTime;
    }
    if (severity != null) {
      _json["severity"] = severity;
    }
    return _json;
  }
}

/** Represents a data transfer run. */
class TransferRun {
  /**
   * Data source id.
   * @OutputOnly
   */
  core.String dataSourceId;
  /** The BigQuery target dataset id. */
  core.String destinationDatasetId;
  /**
   * Time when transfer run ended. Parameter ignored by server for input
   * requests.
   * @OutputOnly
   */
  core.String endTime;
  /**
   * The resource name of the transfer run.
   * Transfer run names have the form
   * `projects/{project_id}/transferConfigs/{config_id}/runs/{run_id}`.
   * The name is ignored when creating a transfer run.
   */
  core.String name;
  /**
   * Data transfer specific parameters.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> params;
  /**
   * For batch transfer runs, specifies the date and time that
   * data should be ingested.
   */
  core.String runTime;
  /**
   * Describes the schedule of this transfer run if it was created as part of
   * a regular schedule. For batch transfer runs that are directly created,
   * this is empty.
   * NOTE: the system might choose to delay the schedule depending on the
   * current load, so `schedule_time` doesn't always matches this.
   * @OutputOnly
   */
  core.String schedule;
  /** Minimum time after which a transfer run can be started. */
  core.String scheduleTime;
  /**
   * Time when transfer run was started. Parameter ignored by server for input
   * requests.
   * @OutputOnly
   */
  core.String startTime;
  /**
   * Data transfer run status. Ignored for input requests.
   * @OutputOnly
   * Possible string values are:
   * - "TRANSFER_STATUS_UNSPECIFIED" : Status placeholder.
   * - "INACTIVE" : Data transfer is inactive.
   * - "PENDING" : Data transfer is scheduled and is waiting to be picked up by
   * data transfer backend.
   * - "RUNNING" : Data transfer is in progress.
   * - "SUCCEEDED" : Data transfer completed successsfully.
   * - "FAILED" : Data transfer failed.
   * - "CANCELLED" : Data transfer is cancelled.
   */
  core.String status;
  /**
   * Last time the data transfer run status was updated.
   * @OutputOnly
   */
  core.String updateTime;

  TransferRun();

  TransferRun.fromJson(core.Map _json) {
    if (_json.containsKey("dataSourceId")) {
      dataSourceId = _json["dataSourceId"];
    }
    if (_json.containsKey("destinationDatasetId")) {
      destinationDatasetId = _json["destinationDatasetId"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("params")) {
      params = _json["params"];
    }
    if (_json.containsKey("runTime")) {
      runTime = _json["runTime"];
    }
    if (_json.containsKey("schedule")) {
      schedule = _json["schedule"];
    }
    if (_json.containsKey("scheduleTime")) {
      scheduleTime = _json["scheduleTime"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (dataSourceId != null) {
      _json["dataSourceId"] = dataSourceId;
    }
    if (destinationDatasetId != null) {
      _json["destinationDatasetId"] = destinationDatasetId;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (params != null) {
      _json["params"] = params;
    }
    if (runTime != null) {
      _json["runTime"] = runTime;
    }
    if (schedule != null) {
      _json["schedule"] = schedule;
    }
    if (scheduleTime != null) {
      _json["scheduleTime"] = scheduleTime;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}
