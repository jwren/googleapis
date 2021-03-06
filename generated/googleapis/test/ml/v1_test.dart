library googleapis.ml.v1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/ml/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request.finalize()
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(
    core.int status, core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed0() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed0(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map; unittest.expect(casted1, unittest.hasLength(3)); unittest.expect(casted1["list"], unittest.equals([1, 2, 3])); unittest.expect(casted1["bool"], unittest.equals(true)); unittest.expect(casted1["string"], unittest.equals('foo')); 
  var casted2 = (o["y"]) as core.Map; unittest.expect(casted2, unittest.hasLength(3)); unittest.expect(casted2["list"], unittest.equals([1, 2, 3])); unittest.expect(casted2["bool"], unittest.equals(true)); unittest.expect(casted2["string"], unittest.equals('foo')); 
}

buildUnnamed1() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed0());
  o.add(buildUnnamed0());
  return o;
}

checkUnnamed1(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed0(o[0]);
  checkUnnamed0(o[1]);
}

core.int buildCounterGoogleApiHttpBody = 0;
buildGoogleApiHttpBody() {
  var o = new api.GoogleApiHttpBody();
  buildCounterGoogleApiHttpBody++;
  if (buildCounterGoogleApiHttpBody < 3) {
    o.contentType = "foo";
    o.data = "foo";
    o.extensions = buildUnnamed1();
  }
  buildCounterGoogleApiHttpBody--;
  return o;
}

checkGoogleApiHttpBody(api.GoogleApiHttpBody o) {
  buildCounterGoogleApiHttpBody++;
  if (buildCounterGoogleApiHttpBody < 3) {
    unittest.expect(o.contentType, unittest.equals('foo'));
    unittest.expect(o.data, unittest.equals('foo'));
    checkUnnamed1(o.extensions);
  }
  buildCounterGoogleApiHttpBody--;
}

core.int buildCounterGoogleCloudMlV1HyperparameterOutputHyperparameterMetric = 0;
buildGoogleCloudMlV1HyperparameterOutputHyperparameterMetric() {
  var o = new api.GoogleCloudMlV1HyperparameterOutputHyperparameterMetric();
  buildCounterGoogleCloudMlV1HyperparameterOutputHyperparameterMetric++;
  if (buildCounterGoogleCloudMlV1HyperparameterOutputHyperparameterMetric < 3) {
    o.objectiveValue = 42.0;
    o.trainingStep = "foo";
  }
  buildCounterGoogleCloudMlV1HyperparameterOutputHyperparameterMetric--;
  return o;
}

checkGoogleCloudMlV1HyperparameterOutputHyperparameterMetric(api.GoogleCloudMlV1HyperparameterOutputHyperparameterMetric o) {
  buildCounterGoogleCloudMlV1HyperparameterOutputHyperparameterMetric++;
  if (buildCounterGoogleCloudMlV1HyperparameterOutputHyperparameterMetric < 3) {
    unittest.expect(o.objectiveValue, unittest.equals(42.0));
    unittest.expect(o.trainingStep, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1HyperparameterOutputHyperparameterMetric--;
}

core.int buildCounterGoogleCloudMlV1AutomaticScaling = 0;
buildGoogleCloudMlV1AutomaticScaling() {
  var o = new api.GoogleCloudMlV1AutomaticScaling();
  buildCounterGoogleCloudMlV1AutomaticScaling++;
  if (buildCounterGoogleCloudMlV1AutomaticScaling < 3) {
    o.minNodes = 42;
  }
  buildCounterGoogleCloudMlV1AutomaticScaling--;
  return o;
}

checkGoogleCloudMlV1AutomaticScaling(api.GoogleCloudMlV1AutomaticScaling o) {
  buildCounterGoogleCloudMlV1AutomaticScaling++;
  if (buildCounterGoogleCloudMlV1AutomaticScaling < 3) {
    unittest.expect(o.minNodes, unittest.equals(42));
  }
  buildCounterGoogleCloudMlV1AutomaticScaling--;
}

core.int buildCounterGoogleCloudMlV1CancelJobRequest = 0;
buildGoogleCloudMlV1CancelJobRequest() {
  var o = new api.GoogleCloudMlV1CancelJobRequest();
  buildCounterGoogleCloudMlV1CancelJobRequest++;
  if (buildCounterGoogleCloudMlV1CancelJobRequest < 3) {
  }
  buildCounterGoogleCloudMlV1CancelJobRequest--;
  return o;
}

checkGoogleCloudMlV1CancelJobRequest(api.GoogleCloudMlV1CancelJobRequest o) {
  buildCounterGoogleCloudMlV1CancelJobRequest++;
  if (buildCounterGoogleCloudMlV1CancelJobRequest < 3) {
  }
  buildCounterGoogleCloudMlV1CancelJobRequest--;
}

core.int buildCounterGoogleCloudMlV1GetConfigResponse = 0;
buildGoogleCloudMlV1GetConfigResponse() {
  var o = new api.GoogleCloudMlV1GetConfigResponse();
  buildCounterGoogleCloudMlV1GetConfigResponse++;
  if (buildCounterGoogleCloudMlV1GetConfigResponse < 3) {
    o.serviceAccount = "foo";
    o.serviceAccountProject = "foo";
  }
  buildCounterGoogleCloudMlV1GetConfigResponse--;
  return o;
}

checkGoogleCloudMlV1GetConfigResponse(api.GoogleCloudMlV1GetConfigResponse o) {
  buildCounterGoogleCloudMlV1GetConfigResponse++;
  if (buildCounterGoogleCloudMlV1GetConfigResponse < 3) {
    unittest.expect(o.serviceAccount, unittest.equals('foo'));
    unittest.expect(o.serviceAccountProject, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1GetConfigResponse--;
}

buildUnnamed2() {
  var o = new core.List<api.GoogleCloudMlV1HyperparameterOutputHyperparameterMetric>();
  o.add(buildGoogleCloudMlV1HyperparameterOutputHyperparameterMetric());
  o.add(buildGoogleCloudMlV1HyperparameterOutputHyperparameterMetric());
  return o;
}

checkUnnamed2(core.List<api.GoogleCloudMlV1HyperparameterOutputHyperparameterMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1HyperparameterOutputHyperparameterMetric(o[0]);
  checkGoogleCloudMlV1HyperparameterOutputHyperparameterMetric(o[1]);
}

buildUnnamed3() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudMlV1HyperparameterOutput = 0;
buildGoogleCloudMlV1HyperparameterOutput() {
  var o = new api.GoogleCloudMlV1HyperparameterOutput();
  buildCounterGoogleCloudMlV1HyperparameterOutput++;
  if (buildCounterGoogleCloudMlV1HyperparameterOutput < 3) {
    o.allMetrics = buildUnnamed2();
    o.finalMetric = buildGoogleCloudMlV1HyperparameterOutputHyperparameterMetric();
    o.hyperparameters = buildUnnamed3();
    o.trialId = "foo";
  }
  buildCounterGoogleCloudMlV1HyperparameterOutput--;
  return o;
}

checkGoogleCloudMlV1HyperparameterOutput(api.GoogleCloudMlV1HyperparameterOutput o) {
  buildCounterGoogleCloudMlV1HyperparameterOutput++;
  if (buildCounterGoogleCloudMlV1HyperparameterOutput < 3) {
    checkUnnamed2(o.allMetrics);
    checkGoogleCloudMlV1HyperparameterOutputHyperparameterMetric(o.finalMetric);
    checkUnnamed3(o.hyperparameters);
    unittest.expect(o.trialId, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1HyperparameterOutput--;
}

buildUnnamed4() {
  var o = new core.List<api.GoogleCloudMlV1ParameterSpec>();
  o.add(buildGoogleCloudMlV1ParameterSpec());
  o.add(buildGoogleCloudMlV1ParameterSpec());
  return o;
}

checkUnnamed4(core.List<api.GoogleCloudMlV1ParameterSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1ParameterSpec(o[0]);
  checkGoogleCloudMlV1ParameterSpec(o[1]);
}

core.int buildCounterGoogleCloudMlV1HyperparameterSpec = 0;
buildGoogleCloudMlV1HyperparameterSpec() {
  var o = new api.GoogleCloudMlV1HyperparameterSpec();
  buildCounterGoogleCloudMlV1HyperparameterSpec++;
  if (buildCounterGoogleCloudMlV1HyperparameterSpec < 3) {
    o.goal = "foo";
    o.hyperparameterMetricTag = "foo";
    o.maxParallelTrials = 42;
    o.maxTrials = 42;
    o.params = buildUnnamed4();
  }
  buildCounterGoogleCloudMlV1HyperparameterSpec--;
  return o;
}

checkGoogleCloudMlV1HyperparameterSpec(api.GoogleCloudMlV1HyperparameterSpec o) {
  buildCounterGoogleCloudMlV1HyperparameterSpec++;
  if (buildCounterGoogleCloudMlV1HyperparameterSpec < 3) {
    unittest.expect(o.goal, unittest.equals('foo'));
    unittest.expect(o.hyperparameterMetricTag, unittest.equals('foo'));
    unittest.expect(o.maxParallelTrials, unittest.equals(42));
    unittest.expect(o.maxTrials, unittest.equals(42));
    checkUnnamed4(o.params);
  }
  buildCounterGoogleCloudMlV1HyperparameterSpec--;
}

core.int buildCounterGoogleCloudMlV1Job = 0;
buildGoogleCloudMlV1Job() {
  var o = new api.GoogleCloudMlV1Job();
  buildCounterGoogleCloudMlV1Job++;
  if (buildCounterGoogleCloudMlV1Job < 3) {
    o.createTime = "foo";
    o.endTime = "foo";
    o.errorMessage = "foo";
    o.jobId = "foo";
    o.predictionInput = buildGoogleCloudMlV1PredictionInput();
    o.predictionOutput = buildGoogleCloudMlV1PredictionOutput();
    o.startTime = "foo";
    o.state = "foo";
    o.trainingInput = buildGoogleCloudMlV1TrainingInput();
    o.trainingOutput = buildGoogleCloudMlV1TrainingOutput();
  }
  buildCounterGoogleCloudMlV1Job--;
  return o;
}

checkGoogleCloudMlV1Job(api.GoogleCloudMlV1Job o) {
  buildCounterGoogleCloudMlV1Job++;
  if (buildCounterGoogleCloudMlV1Job < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.errorMessage, unittest.equals('foo'));
    unittest.expect(o.jobId, unittest.equals('foo'));
    checkGoogleCloudMlV1PredictionInput(o.predictionInput);
    checkGoogleCloudMlV1PredictionOutput(o.predictionOutput);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    checkGoogleCloudMlV1TrainingInput(o.trainingInput);
    checkGoogleCloudMlV1TrainingOutput(o.trainingOutput);
  }
  buildCounterGoogleCloudMlV1Job--;
}

buildUnnamed5() {
  var o = new core.List<api.GoogleCloudMlV1Job>();
  o.add(buildGoogleCloudMlV1Job());
  o.add(buildGoogleCloudMlV1Job());
  return o;
}

checkUnnamed5(core.List<api.GoogleCloudMlV1Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1Job(o[0]);
  checkGoogleCloudMlV1Job(o[1]);
}

core.int buildCounterGoogleCloudMlV1ListJobsResponse = 0;
buildGoogleCloudMlV1ListJobsResponse() {
  var o = new api.GoogleCloudMlV1ListJobsResponse();
  buildCounterGoogleCloudMlV1ListJobsResponse++;
  if (buildCounterGoogleCloudMlV1ListJobsResponse < 3) {
    o.jobs = buildUnnamed5();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudMlV1ListJobsResponse--;
  return o;
}

checkGoogleCloudMlV1ListJobsResponse(api.GoogleCloudMlV1ListJobsResponse o) {
  buildCounterGoogleCloudMlV1ListJobsResponse++;
  if (buildCounterGoogleCloudMlV1ListJobsResponse < 3) {
    checkUnnamed5(o.jobs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1ListJobsResponse--;
}

buildUnnamed6() {
  var o = new core.List<api.GoogleCloudMlV1Model>();
  o.add(buildGoogleCloudMlV1Model());
  o.add(buildGoogleCloudMlV1Model());
  return o;
}

checkUnnamed6(core.List<api.GoogleCloudMlV1Model> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1Model(o[0]);
  checkGoogleCloudMlV1Model(o[1]);
}

core.int buildCounterGoogleCloudMlV1ListModelsResponse = 0;
buildGoogleCloudMlV1ListModelsResponse() {
  var o = new api.GoogleCloudMlV1ListModelsResponse();
  buildCounterGoogleCloudMlV1ListModelsResponse++;
  if (buildCounterGoogleCloudMlV1ListModelsResponse < 3) {
    o.models = buildUnnamed6();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudMlV1ListModelsResponse--;
  return o;
}

checkGoogleCloudMlV1ListModelsResponse(api.GoogleCloudMlV1ListModelsResponse o) {
  buildCounterGoogleCloudMlV1ListModelsResponse++;
  if (buildCounterGoogleCloudMlV1ListModelsResponse < 3) {
    checkUnnamed6(o.models);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1ListModelsResponse--;
}

buildUnnamed7() {
  var o = new core.List<api.GoogleCloudMlV1Version>();
  o.add(buildGoogleCloudMlV1Version());
  o.add(buildGoogleCloudMlV1Version());
  return o;
}

checkUnnamed7(core.List<api.GoogleCloudMlV1Version> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1Version(o[0]);
  checkGoogleCloudMlV1Version(o[1]);
}

core.int buildCounterGoogleCloudMlV1ListVersionsResponse = 0;
buildGoogleCloudMlV1ListVersionsResponse() {
  var o = new api.GoogleCloudMlV1ListVersionsResponse();
  buildCounterGoogleCloudMlV1ListVersionsResponse++;
  if (buildCounterGoogleCloudMlV1ListVersionsResponse < 3) {
    o.nextPageToken = "foo";
    o.versions = buildUnnamed7();
  }
  buildCounterGoogleCloudMlV1ListVersionsResponse--;
  return o;
}

checkGoogleCloudMlV1ListVersionsResponse(api.GoogleCloudMlV1ListVersionsResponse o) {
  buildCounterGoogleCloudMlV1ListVersionsResponse++;
  if (buildCounterGoogleCloudMlV1ListVersionsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed7(o.versions);
  }
  buildCounterGoogleCloudMlV1ListVersionsResponse--;
}

core.int buildCounterGoogleCloudMlV1ManualScaling = 0;
buildGoogleCloudMlV1ManualScaling() {
  var o = new api.GoogleCloudMlV1ManualScaling();
  buildCounterGoogleCloudMlV1ManualScaling++;
  if (buildCounterGoogleCloudMlV1ManualScaling < 3) {
    o.nodes = 42;
  }
  buildCounterGoogleCloudMlV1ManualScaling--;
  return o;
}

checkGoogleCloudMlV1ManualScaling(api.GoogleCloudMlV1ManualScaling o) {
  buildCounterGoogleCloudMlV1ManualScaling++;
  if (buildCounterGoogleCloudMlV1ManualScaling < 3) {
    unittest.expect(o.nodes, unittest.equals(42));
  }
  buildCounterGoogleCloudMlV1ManualScaling--;
}

buildUnnamed8() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudMlV1Model = 0;
buildGoogleCloudMlV1Model() {
  var o = new api.GoogleCloudMlV1Model();
  buildCounterGoogleCloudMlV1Model++;
  if (buildCounterGoogleCloudMlV1Model < 3) {
    o.defaultVersion = buildGoogleCloudMlV1Version();
    o.description = "foo";
    o.name = "foo";
    o.onlinePredictionLogging = true;
    o.regions = buildUnnamed8();
  }
  buildCounterGoogleCloudMlV1Model--;
  return o;
}

checkGoogleCloudMlV1Model(api.GoogleCloudMlV1Model o) {
  buildCounterGoogleCloudMlV1Model++;
  if (buildCounterGoogleCloudMlV1Model < 3) {
    checkGoogleCloudMlV1Version(o.defaultVersion);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.onlinePredictionLogging, unittest.isTrue);
    checkUnnamed8(o.regions);
  }
  buildCounterGoogleCloudMlV1Model--;
}

core.int buildCounterGoogleCloudMlV1OperationMetadata = 0;
buildGoogleCloudMlV1OperationMetadata() {
  var o = new api.GoogleCloudMlV1OperationMetadata();
  buildCounterGoogleCloudMlV1OperationMetadata++;
  if (buildCounterGoogleCloudMlV1OperationMetadata < 3) {
    o.createTime = "foo";
    o.endTime = "foo";
    o.isCancellationRequested = true;
    o.modelName = "foo";
    o.operationType = "foo";
    o.startTime = "foo";
    o.version = buildGoogleCloudMlV1Version();
  }
  buildCounterGoogleCloudMlV1OperationMetadata--;
  return o;
}

checkGoogleCloudMlV1OperationMetadata(api.GoogleCloudMlV1OperationMetadata o) {
  buildCounterGoogleCloudMlV1OperationMetadata++;
  if (buildCounterGoogleCloudMlV1OperationMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.isCancellationRequested, unittest.isTrue);
    unittest.expect(o.modelName, unittest.equals('foo'));
    unittest.expect(o.operationType, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    checkGoogleCloudMlV1Version(o.version);
  }
  buildCounterGoogleCloudMlV1OperationMetadata--;
}

buildUnnamed9() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed10() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed10(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterGoogleCloudMlV1ParameterSpec = 0;
buildGoogleCloudMlV1ParameterSpec() {
  var o = new api.GoogleCloudMlV1ParameterSpec();
  buildCounterGoogleCloudMlV1ParameterSpec++;
  if (buildCounterGoogleCloudMlV1ParameterSpec < 3) {
    o.categoricalValues = buildUnnamed9();
    o.discreteValues = buildUnnamed10();
    o.maxValue = 42.0;
    o.minValue = 42.0;
    o.parameterName = "foo";
    o.scaleType = "foo";
    o.type = "foo";
  }
  buildCounterGoogleCloudMlV1ParameterSpec--;
  return o;
}

checkGoogleCloudMlV1ParameterSpec(api.GoogleCloudMlV1ParameterSpec o) {
  buildCounterGoogleCloudMlV1ParameterSpec++;
  if (buildCounterGoogleCloudMlV1ParameterSpec < 3) {
    checkUnnamed9(o.categoricalValues);
    checkUnnamed10(o.discreteValues);
    unittest.expect(o.maxValue, unittest.equals(42.0));
    unittest.expect(o.minValue, unittest.equals(42.0));
    unittest.expect(o.parameterName, unittest.equals('foo'));
    unittest.expect(o.scaleType, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1ParameterSpec--;
}

core.int buildCounterGoogleCloudMlV1PredictRequest = 0;
buildGoogleCloudMlV1PredictRequest() {
  var o = new api.GoogleCloudMlV1PredictRequest();
  buildCounterGoogleCloudMlV1PredictRequest++;
  if (buildCounterGoogleCloudMlV1PredictRequest < 3) {
    o.httpBody = buildGoogleApiHttpBody();
  }
  buildCounterGoogleCloudMlV1PredictRequest--;
  return o;
}

checkGoogleCloudMlV1PredictRequest(api.GoogleCloudMlV1PredictRequest o) {
  buildCounterGoogleCloudMlV1PredictRequest++;
  if (buildCounterGoogleCloudMlV1PredictRequest < 3) {
    checkGoogleApiHttpBody(o.httpBody);
  }
  buildCounterGoogleCloudMlV1PredictRequest--;
}

buildUnnamed11() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed11(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudMlV1PredictionInput = 0;
buildGoogleCloudMlV1PredictionInput() {
  var o = new api.GoogleCloudMlV1PredictionInput();
  buildCounterGoogleCloudMlV1PredictionInput++;
  if (buildCounterGoogleCloudMlV1PredictionInput < 3) {
    o.dataFormat = "foo";
    o.inputPaths = buildUnnamed11();
    o.maxWorkerCount = "foo";
    o.modelName = "foo";
    o.outputPath = "foo";
    o.region = "foo";
    o.runtimeVersion = "foo";
    o.uri = "foo";
    o.versionName = "foo";
  }
  buildCounterGoogleCloudMlV1PredictionInput--;
  return o;
}

checkGoogleCloudMlV1PredictionInput(api.GoogleCloudMlV1PredictionInput o) {
  buildCounterGoogleCloudMlV1PredictionInput++;
  if (buildCounterGoogleCloudMlV1PredictionInput < 3) {
    unittest.expect(o.dataFormat, unittest.equals('foo'));
    checkUnnamed11(o.inputPaths);
    unittest.expect(o.maxWorkerCount, unittest.equals('foo'));
    unittest.expect(o.modelName, unittest.equals('foo'));
    unittest.expect(o.outputPath, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.runtimeVersion, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
    unittest.expect(o.versionName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1PredictionInput--;
}

core.int buildCounterGoogleCloudMlV1PredictionOutput = 0;
buildGoogleCloudMlV1PredictionOutput() {
  var o = new api.GoogleCloudMlV1PredictionOutput();
  buildCounterGoogleCloudMlV1PredictionOutput++;
  if (buildCounterGoogleCloudMlV1PredictionOutput < 3) {
    o.errorCount = "foo";
    o.nodeHours = 42.0;
    o.outputPath = "foo";
    o.predictionCount = "foo";
  }
  buildCounterGoogleCloudMlV1PredictionOutput--;
  return o;
}

checkGoogleCloudMlV1PredictionOutput(api.GoogleCloudMlV1PredictionOutput o) {
  buildCounterGoogleCloudMlV1PredictionOutput++;
  if (buildCounterGoogleCloudMlV1PredictionOutput < 3) {
    unittest.expect(o.errorCount, unittest.equals('foo'));
    unittest.expect(o.nodeHours, unittest.equals(42.0));
    unittest.expect(o.outputPath, unittest.equals('foo'));
    unittest.expect(o.predictionCount, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1PredictionOutput--;
}

core.int buildCounterGoogleCloudMlV1SetDefaultVersionRequest = 0;
buildGoogleCloudMlV1SetDefaultVersionRequest() {
  var o = new api.GoogleCloudMlV1SetDefaultVersionRequest();
  buildCounterGoogleCloudMlV1SetDefaultVersionRequest++;
  if (buildCounterGoogleCloudMlV1SetDefaultVersionRequest < 3) {
  }
  buildCounterGoogleCloudMlV1SetDefaultVersionRequest--;
  return o;
}

checkGoogleCloudMlV1SetDefaultVersionRequest(api.GoogleCloudMlV1SetDefaultVersionRequest o) {
  buildCounterGoogleCloudMlV1SetDefaultVersionRequest++;
  if (buildCounterGoogleCloudMlV1SetDefaultVersionRequest < 3) {
  }
  buildCounterGoogleCloudMlV1SetDefaultVersionRequest--;
}

buildUnnamed12() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed13() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed13(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudMlV1TrainingInput = 0;
buildGoogleCloudMlV1TrainingInput() {
  var o = new api.GoogleCloudMlV1TrainingInput();
  buildCounterGoogleCloudMlV1TrainingInput++;
  if (buildCounterGoogleCloudMlV1TrainingInput < 3) {
    o.args = buildUnnamed12();
    o.hyperparameters = buildGoogleCloudMlV1HyperparameterSpec();
    o.jobDir = "foo";
    o.masterType = "foo";
    o.packageUris = buildUnnamed13();
    o.parameterServerCount = "foo";
    o.parameterServerType = "foo";
    o.pythonModule = "foo";
    o.region = "foo";
    o.runtimeVersion = "foo";
    o.scaleTier = "foo";
    o.workerCount = "foo";
    o.workerType = "foo";
  }
  buildCounterGoogleCloudMlV1TrainingInput--;
  return o;
}

checkGoogleCloudMlV1TrainingInput(api.GoogleCloudMlV1TrainingInput o) {
  buildCounterGoogleCloudMlV1TrainingInput++;
  if (buildCounterGoogleCloudMlV1TrainingInput < 3) {
    checkUnnamed12(o.args);
    checkGoogleCloudMlV1HyperparameterSpec(o.hyperparameters);
    unittest.expect(o.jobDir, unittest.equals('foo'));
    unittest.expect(o.masterType, unittest.equals('foo'));
    checkUnnamed13(o.packageUris);
    unittest.expect(o.parameterServerCount, unittest.equals('foo'));
    unittest.expect(o.parameterServerType, unittest.equals('foo'));
    unittest.expect(o.pythonModule, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.runtimeVersion, unittest.equals('foo'));
    unittest.expect(o.scaleTier, unittest.equals('foo'));
    unittest.expect(o.workerCount, unittest.equals('foo'));
    unittest.expect(o.workerType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1TrainingInput--;
}

buildUnnamed14() {
  var o = new core.List<api.GoogleCloudMlV1HyperparameterOutput>();
  o.add(buildGoogleCloudMlV1HyperparameterOutput());
  o.add(buildGoogleCloudMlV1HyperparameterOutput());
  return o;
}

checkUnnamed14(core.List<api.GoogleCloudMlV1HyperparameterOutput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1HyperparameterOutput(o[0]);
  checkGoogleCloudMlV1HyperparameterOutput(o[1]);
}

core.int buildCounterGoogleCloudMlV1TrainingOutput = 0;
buildGoogleCloudMlV1TrainingOutput() {
  var o = new api.GoogleCloudMlV1TrainingOutput();
  buildCounterGoogleCloudMlV1TrainingOutput++;
  if (buildCounterGoogleCloudMlV1TrainingOutput < 3) {
    o.completedTrialCount = "foo";
    o.consumedMLUnits = 42.0;
    o.isHyperparameterTuningJob = true;
    o.trials = buildUnnamed14();
  }
  buildCounterGoogleCloudMlV1TrainingOutput--;
  return o;
}

checkGoogleCloudMlV1TrainingOutput(api.GoogleCloudMlV1TrainingOutput o) {
  buildCounterGoogleCloudMlV1TrainingOutput++;
  if (buildCounterGoogleCloudMlV1TrainingOutput < 3) {
    unittest.expect(o.completedTrialCount, unittest.equals('foo'));
    unittest.expect(o.consumedMLUnits, unittest.equals(42.0));
    unittest.expect(o.isHyperparameterTuningJob, unittest.isTrue);
    checkUnnamed14(o.trials);
  }
  buildCounterGoogleCloudMlV1TrainingOutput--;
}

core.int buildCounterGoogleCloudMlV1Version = 0;
buildGoogleCloudMlV1Version() {
  var o = new api.GoogleCloudMlV1Version();
  buildCounterGoogleCloudMlV1Version++;
  if (buildCounterGoogleCloudMlV1Version < 3) {
    o.automaticScaling = buildGoogleCloudMlV1AutomaticScaling();
    o.createTime = "foo";
    o.deploymentUri = "foo";
    o.description = "foo";
    o.isDefault = true;
    o.lastUseTime = "foo";
    o.manualScaling = buildGoogleCloudMlV1ManualScaling();
    o.name = "foo";
    o.runtimeVersion = "foo";
  }
  buildCounterGoogleCloudMlV1Version--;
  return o;
}

checkGoogleCloudMlV1Version(api.GoogleCloudMlV1Version o) {
  buildCounterGoogleCloudMlV1Version++;
  if (buildCounterGoogleCloudMlV1Version < 3) {
    checkGoogleCloudMlV1AutomaticScaling(o.automaticScaling);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.deploymentUri, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.isDefault, unittest.isTrue);
    unittest.expect(o.lastUseTime, unittest.equals('foo'));
    checkGoogleCloudMlV1ManualScaling(o.manualScaling);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.runtimeVersion, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1Version--;
}

core.int buildCounterGoogleCloudMlV1beta1AutomaticScaling = 0;
buildGoogleCloudMlV1beta1AutomaticScaling() {
  var o = new api.GoogleCloudMlV1beta1AutomaticScaling();
  buildCounterGoogleCloudMlV1beta1AutomaticScaling++;
  if (buildCounterGoogleCloudMlV1beta1AutomaticScaling < 3) {
    o.minNodes = 42;
  }
  buildCounterGoogleCloudMlV1beta1AutomaticScaling--;
  return o;
}

checkGoogleCloudMlV1beta1AutomaticScaling(api.GoogleCloudMlV1beta1AutomaticScaling o) {
  buildCounterGoogleCloudMlV1beta1AutomaticScaling++;
  if (buildCounterGoogleCloudMlV1beta1AutomaticScaling < 3) {
    unittest.expect(o.minNodes, unittest.equals(42));
  }
  buildCounterGoogleCloudMlV1beta1AutomaticScaling--;
}

core.int buildCounterGoogleCloudMlV1beta1ManualScaling = 0;
buildGoogleCloudMlV1beta1ManualScaling() {
  var o = new api.GoogleCloudMlV1beta1ManualScaling();
  buildCounterGoogleCloudMlV1beta1ManualScaling++;
  if (buildCounterGoogleCloudMlV1beta1ManualScaling < 3) {
    o.nodes = 42;
  }
  buildCounterGoogleCloudMlV1beta1ManualScaling--;
  return o;
}

checkGoogleCloudMlV1beta1ManualScaling(api.GoogleCloudMlV1beta1ManualScaling o) {
  buildCounterGoogleCloudMlV1beta1ManualScaling++;
  if (buildCounterGoogleCloudMlV1beta1ManualScaling < 3) {
    unittest.expect(o.nodes, unittest.equals(42));
  }
  buildCounterGoogleCloudMlV1beta1ManualScaling--;
}

core.int buildCounterGoogleCloudMlV1beta1OperationMetadata = 0;
buildGoogleCloudMlV1beta1OperationMetadata() {
  var o = new api.GoogleCloudMlV1beta1OperationMetadata();
  buildCounterGoogleCloudMlV1beta1OperationMetadata++;
  if (buildCounterGoogleCloudMlV1beta1OperationMetadata < 3) {
    o.createTime = "foo";
    o.endTime = "foo";
    o.isCancellationRequested = true;
    o.modelName = "foo";
    o.operationType = "foo";
    o.startTime = "foo";
    o.version = buildGoogleCloudMlV1beta1Version();
  }
  buildCounterGoogleCloudMlV1beta1OperationMetadata--;
  return o;
}

checkGoogleCloudMlV1beta1OperationMetadata(api.GoogleCloudMlV1beta1OperationMetadata o) {
  buildCounterGoogleCloudMlV1beta1OperationMetadata++;
  if (buildCounterGoogleCloudMlV1beta1OperationMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.isCancellationRequested, unittest.isTrue);
    unittest.expect(o.modelName, unittest.equals('foo'));
    unittest.expect(o.operationType, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    checkGoogleCloudMlV1beta1Version(o.version);
  }
  buildCounterGoogleCloudMlV1beta1OperationMetadata--;
}

core.int buildCounterGoogleCloudMlV1beta1Version = 0;
buildGoogleCloudMlV1beta1Version() {
  var o = new api.GoogleCloudMlV1beta1Version();
  buildCounterGoogleCloudMlV1beta1Version++;
  if (buildCounterGoogleCloudMlV1beta1Version < 3) {
    o.automaticScaling = buildGoogleCloudMlV1beta1AutomaticScaling();
    o.createTime = "foo";
    o.deploymentUri = "foo";
    o.description = "foo";
    o.isDefault = true;
    o.lastUseTime = "foo";
    o.manualScaling = buildGoogleCloudMlV1beta1ManualScaling();
    o.name = "foo";
    o.runtimeVersion = "foo";
  }
  buildCounterGoogleCloudMlV1beta1Version--;
  return o;
}

checkGoogleCloudMlV1beta1Version(api.GoogleCloudMlV1beta1Version o) {
  buildCounterGoogleCloudMlV1beta1Version++;
  if (buildCounterGoogleCloudMlV1beta1Version < 3) {
    checkGoogleCloudMlV1beta1AutomaticScaling(o.automaticScaling);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.deploymentUri, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.isDefault, unittest.isTrue);
    unittest.expect(o.lastUseTime, unittest.equals('foo'));
    checkGoogleCloudMlV1beta1ManualScaling(o.manualScaling);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.runtimeVersion, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1beta1Version--;
}

buildUnnamed15() {
  var o = new core.List<api.GoogleLongrunningOperation>();
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

checkUnnamed15(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
buildGoogleLongrunningListOperationsResponse() {
  var o = new api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed15();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

checkGoogleLongrunningListOperationsResponse(api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed15(o.operations);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

buildUnnamed16() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed16(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map; unittest.expect(casted3, unittest.hasLength(3)); unittest.expect(casted3["list"], unittest.equals([1, 2, 3])); unittest.expect(casted3["bool"], unittest.equals(true)); unittest.expect(casted3["string"], unittest.equals('foo')); 
  var casted4 = (o["y"]) as core.Map; unittest.expect(casted4, unittest.hasLength(3)); unittest.expect(casted4["list"], unittest.equals([1, 2, 3])); unittest.expect(casted4["bool"], unittest.equals(true)); unittest.expect(casted4["string"], unittest.equals('foo')); 
}

buildUnnamed17() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed17(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map; unittest.expect(casted5, unittest.hasLength(3)); unittest.expect(casted5["list"], unittest.equals([1, 2, 3])); unittest.expect(casted5["bool"], unittest.equals(true)); unittest.expect(casted5["string"], unittest.equals('foo')); 
  var casted6 = (o["y"]) as core.Map; unittest.expect(casted6, unittest.hasLength(3)); unittest.expect(casted6["list"], unittest.equals([1, 2, 3])); unittest.expect(casted6["bool"], unittest.equals(true)); unittest.expect(casted6["string"], unittest.equals('foo')); 
}

core.int buildCounterGoogleLongrunningOperation = 0;
buildGoogleLongrunningOperation() {
  var o = new api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed16();
    o.name = "foo";
    o.response = buildUnnamed17();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkGoogleRpcStatus(o.error);
    checkUnnamed16(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed17(o.response);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
buildGoogleProtobufEmpty() {
  var o = new api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {
  }
  buildCounterGoogleProtobufEmpty--;
  return o;
}

checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {
  }
  buildCounterGoogleProtobufEmpty--;
}

buildUnnamed18() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed18(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o["x"]) as core.Map; unittest.expect(casted7, unittest.hasLength(3)); unittest.expect(casted7["list"], unittest.equals([1, 2, 3])); unittest.expect(casted7["bool"], unittest.equals(true)); unittest.expect(casted7["string"], unittest.equals('foo')); 
  var casted8 = (o["y"]) as core.Map; unittest.expect(casted8, unittest.hasLength(3)); unittest.expect(casted8["list"], unittest.equals([1, 2, 3])); unittest.expect(casted8["bool"], unittest.equals(true)); unittest.expect(casted8["string"], unittest.equals('foo')); 
}

buildUnnamed19() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed18());
  o.add(buildUnnamed18());
  return o;
}

checkUnnamed19(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed18(o[0]);
  checkUnnamed18(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
buildGoogleRpcStatus() {
  var o = new api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed19();
    o.message = "foo";
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed19(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}


main() {
  unittest.group("obj-schema-GoogleApiHttpBody", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleApiHttpBody();
      var od = new api.GoogleApiHttpBody.fromJson(o.toJson());
      checkGoogleApiHttpBody(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1HyperparameterOutputHyperparameterMetric", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1HyperparameterOutputHyperparameterMetric();
      var od = new api.GoogleCloudMlV1HyperparameterOutputHyperparameterMetric.fromJson(o.toJson());
      checkGoogleCloudMlV1HyperparameterOutputHyperparameterMetric(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1AutomaticScaling", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1AutomaticScaling();
      var od = new api.GoogleCloudMlV1AutomaticScaling.fromJson(o.toJson());
      checkGoogleCloudMlV1AutomaticScaling(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1CancelJobRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1CancelJobRequest();
      var od = new api.GoogleCloudMlV1CancelJobRequest.fromJson(o.toJson());
      checkGoogleCloudMlV1CancelJobRequest(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1GetConfigResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1GetConfigResponse();
      var od = new api.GoogleCloudMlV1GetConfigResponse.fromJson(o.toJson());
      checkGoogleCloudMlV1GetConfigResponse(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1HyperparameterOutput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1HyperparameterOutput();
      var od = new api.GoogleCloudMlV1HyperparameterOutput.fromJson(o.toJson());
      checkGoogleCloudMlV1HyperparameterOutput(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1HyperparameterSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1HyperparameterSpec();
      var od = new api.GoogleCloudMlV1HyperparameterSpec.fromJson(o.toJson());
      checkGoogleCloudMlV1HyperparameterSpec(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1Job", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1Job();
      var od = new api.GoogleCloudMlV1Job.fromJson(o.toJson());
      checkGoogleCloudMlV1Job(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1ListJobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ListJobsResponse();
      var od = new api.GoogleCloudMlV1ListJobsResponse.fromJson(o.toJson());
      checkGoogleCloudMlV1ListJobsResponse(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1ListModelsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ListModelsResponse();
      var od = new api.GoogleCloudMlV1ListModelsResponse.fromJson(o.toJson());
      checkGoogleCloudMlV1ListModelsResponse(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1ListVersionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ListVersionsResponse();
      var od = new api.GoogleCloudMlV1ListVersionsResponse.fromJson(o.toJson());
      checkGoogleCloudMlV1ListVersionsResponse(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1ManualScaling", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ManualScaling();
      var od = new api.GoogleCloudMlV1ManualScaling.fromJson(o.toJson());
      checkGoogleCloudMlV1ManualScaling(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1Model", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1Model();
      var od = new api.GoogleCloudMlV1Model.fromJson(o.toJson());
      checkGoogleCloudMlV1Model(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1OperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1OperationMetadata();
      var od = new api.GoogleCloudMlV1OperationMetadata.fromJson(o.toJson());
      checkGoogleCloudMlV1OperationMetadata(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1ParameterSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ParameterSpec();
      var od = new api.GoogleCloudMlV1ParameterSpec.fromJson(o.toJson());
      checkGoogleCloudMlV1ParameterSpec(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1PredictRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1PredictRequest();
      var od = new api.GoogleCloudMlV1PredictRequest.fromJson(o.toJson());
      checkGoogleCloudMlV1PredictRequest(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1PredictionInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1PredictionInput();
      var od = new api.GoogleCloudMlV1PredictionInput.fromJson(o.toJson());
      checkGoogleCloudMlV1PredictionInput(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1PredictionOutput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1PredictionOutput();
      var od = new api.GoogleCloudMlV1PredictionOutput.fromJson(o.toJson());
      checkGoogleCloudMlV1PredictionOutput(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1SetDefaultVersionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1SetDefaultVersionRequest();
      var od = new api.GoogleCloudMlV1SetDefaultVersionRequest.fromJson(o.toJson());
      checkGoogleCloudMlV1SetDefaultVersionRequest(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1TrainingInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1TrainingInput();
      var od = new api.GoogleCloudMlV1TrainingInput.fromJson(o.toJson());
      checkGoogleCloudMlV1TrainingInput(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1TrainingOutput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1TrainingOutput();
      var od = new api.GoogleCloudMlV1TrainingOutput.fromJson(o.toJson());
      checkGoogleCloudMlV1TrainingOutput(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1Version", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1Version();
      var od = new api.GoogleCloudMlV1Version.fromJson(o.toJson());
      checkGoogleCloudMlV1Version(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1beta1AutomaticScaling", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1beta1AutomaticScaling();
      var od = new api.GoogleCloudMlV1beta1AutomaticScaling.fromJson(o.toJson());
      checkGoogleCloudMlV1beta1AutomaticScaling(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1beta1ManualScaling", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1beta1ManualScaling();
      var od = new api.GoogleCloudMlV1beta1ManualScaling.fromJson(o.toJson());
      checkGoogleCloudMlV1beta1ManualScaling(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1beta1OperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1beta1OperationMetadata();
      var od = new api.GoogleCloudMlV1beta1OperationMetadata.fromJson(o.toJson());
      checkGoogleCloudMlV1beta1OperationMetadata(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1beta1Version", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1beta1Version();
      var od = new api.GoogleCloudMlV1beta1Version.fromJson(o.toJson());
      checkGoogleCloudMlV1beta1Version(od);
    });
  });


  unittest.group("obj-schema-GoogleLongrunningListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleLongrunningListOperationsResponse();
      var od = new api.GoogleLongrunningListOperationsResponse.fromJson(o.toJson());
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });


  unittest.group("obj-schema-GoogleLongrunningOperation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleLongrunningOperation();
      var od = new api.GoogleLongrunningOperation.fromJson(o.toJson());
      checkGoogleLongrunningOperation(od);
    });
  });


  unittest.group("obj-schema-GoogleProtobufEmpty", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleProtobufEmpty();
      var od = new api.GoogleProtobufEmpty.fromJson(o.toJson());
      checkGoogleProtobufEmpty(od);
    });
  });


  unittest.group("obj-schema-GoogleRpcStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleRpcStatus();
      var od = new api.GoogleRpcStatus.fromJson(o.toJson());
      checkGoogleRpcStatus(od);
    });
  });


  unittest.group("resource-ProjectsResourceApi", () {
    unittest.test("method--getConfig", () {

      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.MlApi(mock).projects;
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleCloudMlV1GetConfigResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.getConfig(arg_name).then(unittest.expectAsync1(((api.GoogleCloudMlV1GetConfigResponse response) {
        checkGoogleCloudMlV1GetConfigResponse(response);
      })));
    });

    unittest.test("method--predict", () {

      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.MlApi(mock).projects;
      var arg_request = buildGoogleCloudMlV1PredictRequest();
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudMlV1PredictRequest.fromJson(json);
        checkGoogleCloudMlV1PredictRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleApiHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.predict(arg_request, arg_name).then(unittest.expectAsync1(((api.GoogleApiHttpBody response) {
        checkGoogleApiHttpBody(response);
      })));
    });

  });


  unittest.group("resource-ProjectsJobsResourceApi", () {
    unittest.test("method--cancel", () {

      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.MlApi(mock).projects.jobs;
      var arg_request = buildGoogleCloudMlV1CancelJobRequest();
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudMlV1CancelJobRequest.fromJson(json);
        checkGoogleCloudMlV1CancelJobRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.cancel(arg_request, arg_name).then(unittest.expectAsync1(((api.GoogleProtobufEmpty response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.MlApi(mock).projects.jobs;
      var arg_request = buildGoogleCloudMlV1Job();
      var arg_parent = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudMlV1Job.fromJson(json);
        checkGoogleCloudMlV1Job(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleCloudMlV1Job());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_parent).then(unittest.expectAsync1(((api.GoogleCloudMlV1Job response) {
        checkGoogleCloudMlV1Job(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.MlApi(mock).projects.jobs;
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleCloudMlV1Job());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_name).then(unittest.expectAsync1(((api.GoogleCloudMlV1Job response) {
        checkGoogleCloudMlV1Job(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.MlApi(mock).projects.jobs;
      var arg_parent = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleCloudMlV1ListJobsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_parent, filter: arg_filter, pageToken: arg_pageToken, pageSize: arg_pageSize).then(unittest.expectAsync1(((api.GoogleCloudMlV1ListJobsResponse response) {
        checkGoogleCloudMlV1ListJobsResponse(response);
      })));
    });

  });


  unittest.group("resource-ProjectsModelsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.ProjectsModelsResourceApi res = new api.MlApi(mock).projects.models;
      var arg_request = buildGoogleCloudMlV1Model();
      var arg_parent = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudMlV1Model.fromJson(json);
        checkGoogleCloudMlV1Model(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleCloudMlV1Model());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_parent).then(unittest.expectAsync1(((api.GoogleCloudMlV1Model response) {
        checkGoogleCloudMlV1Model(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ProjectsModelsResourceApi res = new api.MlApi(mock).projects.models;
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_name).then(unittest.expectAsync1(((api.GoogleLongrunningOperation response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsModelsResourceApi res = new api.MlApi(mock).projects.models;
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleCloudMlV1Model());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_name).then(unittest.expectAsync1(((api.GoogleCloudMlV1Model response) {
        checkGoogleCloudMlV1Model(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsModelsResourceApi res = new api.MlApi(mock).projects.models;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleCloudMlV1ListModelsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_parent, pageToken: arg_pageToken, pageSize: arg_pageSize).then(unittest.expectAsync1(((api.GoogleCloudMlV1ListModelsResponse response) {
        checkGoogleCloudMlV1ListModelsResponse(response);
      })));
    });

  });


  unittest.group("resource-ProjectsModelsVersionsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.ProjectsModelsVersionsResourceApi res = new api.MlApi(mock).projects.models.versions;
      var arg_request = buildGoogleCloudMlV1Version();
      var arg_parent = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudMlV1Version.fromJson(json);
        checkGoogleCloudMlV1Version(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_parent).then(unittest.expectAsync1(((api.GoogleLongrunningOperation response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ProjectsModelsVersionsResourceApi res = new api.MlApi(mock).projects.models.versions;
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_name).then(unittest.expectAsync1(((api.GoogleLongrunningOperation response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsModelsVersionsResourceApi res = new api.MlApi(mock).projects.models.versions;
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleCloudMlV1Version());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_name).then(unittest.expectAsync1(((api.GoogleCloudMlV1Version response) {
        checkGoogleCloudMlV1Version(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsModelsVersionsResourceApi res = new api.MlApi(mock).projects.models.versions;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleCloudMlV1ListVersionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_parent, pageToken: arg_pageToken, pageSize: arg_pageSize).then(unittest.expectAsync1(((api.GoogleCloudMlV1ListVersionsResponse response) {
        checkGoogleCloudMlV1ListVersionsResponse(response);
      })));
    });

    unittest.test("method--setDefault", () {

      var mock = new HttpServerMock();
      api.ProjectsModelsVersionsResourceApi res = new api.MlApi(mock).projects.models.versions;
      var arg_request = buildGoogleCloudMlV1SetDefaultVersionRequest();
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudMlV1SetDefaultVersionRequest.fromJson(json);
        checkGoogleCloudMlV1SetDefaultVersionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleCloudMlV1Version());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.setDefault(arg_request, arg_name).then(unittest.expectAsync1(((api.GoogleCloudMlV1Version response) {
        checkGoogleCloudMlV1Version(response);
      })));
    });

  });


  unittest.group("resource-ProjectsOperationsResourceApi", () {
    unittest.test("method--cancel", () {

      var mock = new HttpServerMock();
      api.ProjectsOperationsResourceApi res = new api.MlApi(mock).projects.operations;
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.cancel(arg_name).then(unittest.expectAsync1(((api.GoogleProtobufEmpty response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ProjectsOperationsResourceApi res = new api.MlApi(mock).projects.operations;
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_name).then(unittest.expectAsync1(((api.GoogleProtobufEmpty response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsOperationsResourceApi res = new api.MlApi(mock).projects.operations;
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_name).then(unittest.expectAsync1(((api.GoogleLongrunningOperation response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsOperationsResourceApi res = new api.MlApi(mock).projects.operations;
      var arg_name = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleLongrunningListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_name, filter: arg_filter, pageToken: arg_pageToken, pageSize: arg_pageSize).then(unittest.expectAsync1(((api.GoogleLongrunningListOperationsResponse response) {
        checkGoogleLongrunningListOperationsResponse(response);
      })));
    });

  });


}

