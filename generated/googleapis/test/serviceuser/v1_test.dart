library googleapis.serviceuser.v1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/serviceuser/v1.dart' as api;

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

buildUnnamed1633() {
  var o = new core.List<api.Method>();
  o.add(buildMethod());
  o.add(buildMethod());
  return o;
}

checkUnnamed1633(core.List<api.Method> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMethod(o[0]);
  checkMethod(o[1]);
}

buildUnnamed1634() {
  var o = new core.List<api.Mixin>();
  o.add(buildMixin());
  o.add(buildMixin());
  return o;
}

checkUnnamed1634(core.List<api.Mixin> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMixin(o[0]);
  checkMixin(o[1]);
}

buildUnnamed1635() {
  var o = new core.List<api.Option>();
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

checkUnnamed1635(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterApi = 0;
buildApi() {
  var o = new api.Api();
  buildCounterApi++;
  if (buildCounterApi < 3) {
    o.methods = buildUnnamed1633();
    o.mixins = buildUnnamed1634();
    o.name = "foo";
    o.options = buildUnnamed1635();
    o.sourceContext = buildSourceContext();
    o.syntax = "foo";
    o.version = "foo";
  }
  buildCounterApi--;
  return o;
}

checkApi(api.Api o) {
  buildCounterApi++;
  if (buildCounterApi < 3) {
    checkUnnamed1633(o.methods);
    checkUnnamed1634(o.mixins);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1635(o.options);
    checkSourceContext(o.sourceContext);
    unittest.expect(o.syntax, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterApi--;
}

core.int buildCounterAuthProvider = 0;
buildAuthProvider() {
  var o = new api.AuthProvider();
  buildCounterAuthProvider++;
  if (buildCounterAuthProvider < 3) {
    o.audiences = "foo";
    o.id = "foo";
    o.issuer = "foo";
    o.jwksUri = "foo";
  }
  buildCounterAuthProvider--;
  return o;
}

checkAuthProvider(api.AuthProvider o) {
  buildCounterAuthProvider++;
  if (buildCounterAuthProvider < 3) {
    unittest.expect(o.audiences, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.issuer, unittest.equals('foo'));
    unittest.expect(o.jwksUri, unittest.equals('foo'));
  }
  buildCounterAuthProvider--;
}

core.int buildCounterAuthRequirement = 0;
buildAuthRequirement() {
  var o = new api.AuthRequirement();
  buildCounterAuthRequirement++;
  if (buildCounterAuthRequirement < 3) {
    o.audiences = "foo";
    o.providerId = "foo";
  }
  buildCounterAuthRequirement--;
  return o;
}

checkAuthRequirement(api.AuthRequirement o) {
  buildCounterAuthRequirement++;
  if (buildCounterAuthRequirement < 3) {
    unittest.expect(o.audiences, unittest.equals('foo'));
    unittest.expect(o.providerId, unittest.equals('foo'));
  }
  buildCounterAuthRequirement--;
}

buildUnnamed1636() {
  var o = new core.List<api.AuthProvider>();
  o.add(buildAuthProvider());
  o.add(buildAuthProvider());
  return o;
}

checkUnnamed1636(core.List<api.AuthProvider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthProvider(o[0]);
  checkAuthProvider(o[1]);
}

buildUnnamed1637() {
  var o = new core.List<api.AuthenticationRule>();
  o.add(buildAuthenticationRule());
  o.add(buildAuthenticationRule());
  return o;
}

checkUnnamed1637(core.List<api.AuthenticationRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthenticationRule(o[0]);
  checkAuthenticationRule(o[1]);
}

core.int buildCounterAuthentication = 0;
buildAuthentication() {
  var o = new api.Authentication();
  buildCounterAuthentication++;
  if (buildCounterAuthentication < 3) {
    o.providers = buildUnnamed1636();
    o.rules = buildUnnamed1637();
  }
  buildCounterAuthentication--;
  return o;
}

checkAuthentication(api.Authentication o) {
  buildCounterAuthentication++;
  if (buildCounterAuthentication < 3) {
    checkUnnamed1636(o.providers);
    checkUnnamed1637(o.rules);
  }
  buildCounterAuthentication--;
}

buildUnnamed1638() {
  var o = new core.List<api.AuthRequirement>();
  o.add(buildAuthRequirement());
  o.add(buildAuthRequirement());
  return o;
}

checkUnnamed1638(core.List<api.AuthRequirement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthRequirement(o[0]);
  checkAuthRequirement(o[1]);
}

core.int buildCounterAuthenticationRule = 0;
buildAuthenticationRule() {
  var o = new api.AuthenticationRule();
  buildCounterAuthenticationRule++;
  if (buildCounterAuthenticationRule < 3) {
    o.allowWithoutCredential = true;
    o.customAuth = buildCustomAuthRequirements();
    o.oauth = buildOAuthRequirements();
    o.requirements = buildUnnamed1638();
    o.selector = "foo";
  }
  buildCounterAuthenticationRule--;
  return o;
}

checkAuthenticationRule(api.AuthenticationRule o) {
  buildCounterAuthenticationRule++;
  if (buildCounterAuthenticationRule < 3) {
    unittest.expect(o.allowWithoutCredential, unittest.isTrue);
    checkCustomAuthRequirements(o.customAuth);
    checkOAuthRequirements(o.oauth);
    checkUnnamed1638(o.requirements);
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterAuthenticationRule--;
}

core.int buildCounterAuthorizationConfig = 0;
buildAuthorizationConfig() {
  var o = new api.AuthorizationConfig();
  buildCounterAuthorizationConfig++;
  if (buildCounterAuthorizationConfig < 3) {
    o.provider = "foo";
  }
  buildCounterAuthorizationConfig--;
  return o;
}

checkAuthorizationConfig(api.AuthorizationConfig o) {
  buildCounterAuthorizationConfig++;
  if (buildCounterAuthorizationConfig < 3) {
    unittest.expect(o.provider, unittest.equals('foo'));
  }
  buildCounterAuthorizationConfig--;
}

buildUnnamed1639() {
  var o = new core.List<api.BackendRule>();
  o.add(buildBackendRule());
  o.add(buildBackendRule());
  return o;
}

checkUnnamed1639(core.List<api.BackendRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackendRule(o[0]);
  checkBackendRule(o[1]);
}

core.int buildCounterBackend = 0;
buildBackend() {
  var o = new api.Backend();
  buildCounterBackend++;
  if (buildCounterBackend < 3) {
    o.rules = buildUnnamed1639();
  }
  buildCounterBackend--;
  return o;
}

checkBackend(api.Backend o) {
  buildCounterBackend++;
  if (buildCounterBackend < 3) {
    checkUnnamed1639(o.rules);
  }
  buildCounterBackend--;
}

core.int buildCounterBackendRule = 0;
buildBackendRule() {
  var o = new api.BackendRule();
  buildCounterBackendRule++;
  if (buildCounterBackendRule < 3) {
    o.address = "foo";
    o.deadline = 42.0;
    o.minDeadline = 42.0;
    o.selector = "foo";
  }
  buildCounterBackendRule--;
  return o;
}

checkBackendRule(api.BackendRule o) {
  buildCounterBackendRule++;
  if (buildCounterBackendRule < 3) {
    unittest.expect(o.address, unittest.equals('foo'));
    unittest.expect(o.deadline, unittest.equals(42.0));
    unittest.expect(o.minDeadline, unittest.equals(42.0));
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterBackendRule--;
}

buildUnnamed1640() {
  var o = new core.List<api.ContextRule>();
  o.add(buildContextRule());
  o.add(buildContextRule());
  return o;
}

checkUnnamed1640(core.List<api.ContextRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContextRule(o[0]);
  checkContextRule(o[1]);
}

core.int buildCounterContext = 0;
buildContext() {
  var o = new api.Context();
  buildCounterContext++;
  if (buildCounterContext < 3) {
    o.rules = buildUnnamed1640();
  }
  buildCounterContext--;
  return o;
}

checkContext(api.Context o) {
  buildCounterContext++;
  if (buildCounterContext < 3) {
    checkUnnamed1640(o.rules);
  }
  buildCounterContext--;
}

buildUnnamed1641() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1641(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1642() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1642(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterContextRule = 0;
buildContextRule() {
  var o = new api.ContextRule();
  buildCounterContextRule++;
  if (buildCounterContextRule < 3) {
    o.provided = buildUnnamed1641();
    o.requested = buildUnnamed1642();
    o.selector = "foo";
  }
  buildCounterContextRule--;
  return o;
}

checkContextRule(api.ContextRule o) {
  buildCounterContextRule++;
  if (buildCounterContextRule < 3) {
    checkUnnamed1641(o.provided);
    checkUnnamed1642(o.requested);
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterContextRule--;
}

core.int buildCounterControl = 0;
buildControl() {
  var o = new api.Control();
  buildCounterControl++;
  if (buildCounterControl < 3) {
    o.environment = "foo";
  }
  buildCounterControl--;
  return o;
}

checkControl(api.Control o) {
  buildCounterControl++;
  if (buildCounterControl < 3) {
    unittest.expect(o.environment, unittest.equals('foo'));
  }
  buildCounterControl--;
}

core.int buildCounterCustomAuthRequirements = 0;
buildCustomAuthRequirements() {
  var o = new api.CustomAuthRequirements();
  buildCounterCustomAuthRequirements++;
  if (buildCounterCustomAuthRequirements < 3) {
    o.provider = "foo";
  }
  buildCounterCustomAuthRequirements--;
  return o;
}

checkCustomAuthRequirements(api.CustomAuthRequirements o) {
  buildCounterCustomAuthRequirements++;
  if (buildCounterCustomAuthRequirements < 3) {
    unittest.expect(o.provider, unittest.equals('foo'));
  }
  buildCounterCustomAuthRequirements--;
}

buildUnnamed1643() {
  var o = new core.List<api.CustomErrorRule>();
  o.add(buildCustomErrorRule());
  o.add(buildCustomErrorRule());
  return o;
}

checkUnnamed1643(core.List<api.CustomErrorRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomErrorRule(o[0]);
  checkCustomErrorRule(o[1]);
}

buildUnnamed1644() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1644(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCustomError = 0;
buildCustomError() {
  var o = new api.CustomError();
  buildCounterCustomError++;
  if (buildCounterCustomError < 3) {
    o.rules = buildUnnamed1643();
    o.types = buildUnnamed1644();
  }
  buildCounterCustomError--;
  return o;
}

checkCustomError(api.CustomError o) {
  buildCounterCustomError++;
  if (buildCounterCustomError < 3) {
    checkUnnamed1643(o.rules);
    checkUnnamed1644(o.types);
  }
  buildCounterCustomError--;
}

core.int buildCounterCustomErrorRule = 0;
buildCustomErrorRule() {
  var o = new api.CustomErrorRule();
  buildCounterCustomErrorRule++;
  if (buildCounterCustomErrorRule < 3) {
    o.isErrorType = true;
    o.selector = "foo";
  }
  buildCounterCustomErrorRule--;
  return o;
}

checkCustomErrorRule(api.CustomErrorRule o) {
  buildCounterCustomErrorRule++;
  if (buildCounterCustomErrorRule < 3) {
    unittest.expect(o.isErrorType, unittest.isTrue);
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterCustomErrorRule--;
}

core.int buildCounterCustomHttpPattern = 0;
buildCustomHttpPattern() {
  var o = new api.CustomHttpPattern();
  buildCounterCustomHttpPattern++;
  if (buildCounterCustomHttpPattern < 3) {
    o.kind = "foo";
    o.path = "foo";
  }
  buildCounterCustomHttpPattern--;
  return o;
}

checkCustomHttpPattern(api.CustomHttpPattern o) {
  buildCounterCustomHttpPattern++;
  if (buildCounterCustomHttpPattern < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
  }
  buildCounterCustomHttpPattern--;
}

core.int buildCounterDisableServiceRequest = 0;
buildDisableServiceRequest() {
  var o = new api.DisableServiceRequest();
  buildCounterDisableServiceRequest++;
  if (buildCounterDisableServiceRequest < 3) {
  }
  buildCounterDisableServiceRequest--;
  return o;
}

checkDisableServiceRequest(api.DisableServiceRequest o) {
  buildCounterDisableServiceRequest++;
  if (buildCounterDisableServiceRequest < 3) {
  }
  buildCounterDisableServiceRequest--;
}

buildUnnamed1645() {
  var o = new core.List<api.Page>();
  o.add(buildPage());
  o.add(buildPage());
  return o;
}

checkUnnamed1645(core.List<api.Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPage(o[0]);
  checkPage(o[1]);
}

buildUnnamed1646() {
  var o = new core.List<api.DocumentationRule>();
  o.add(buildDocumentationRule());
  o.add(buildDocumentationRule());
  return o;
}

checkUnnamed1646(core.List<api.DocumentationRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDocumentationRule(o[0]);
  checkDocumentationRule(o[1]);
}

core.int buildCounterDocumentation = 0;
buildDocumentation() {
  var o = new api.Documentation();
  buildCounterDocumentation++;
  if (buildCounterDocumentation < 3) {
    o.documentationRootUrl = "foo";
    o.overview = "foo";
    o.pages = buildUnnamed1645();
    o.rules = buildUnnamed1646();
    o.summary = "foo";
  }
  buildCounterDocumentation--;
  return o;
}

checkDocumentation(api.Documentation o) {
  buildCounterDocumentation++;
  if (buildCounterDocumentation < 3) {
    unittest.expect(o.documentationRootUrl, unittest.equals('foo'));
    unittest.expect(o.overview, unittest.equals('foo'));
    checkUnnamed1645(o.pages);
    checkUnnamed1646(o.rules);
    unittest.expect(o.summary, unittest.equals('foo'));
  }
  buildCounterDocumentation--;
}

core.int buildCounterDocumentationRule = 0;
buildDocumentationRule() {
  var o = new api.DocumentationRule();
  buildCounterDocumentationRule++;
  if (buildCounterDocumentationRule < 3) {
    o.deprecationDescription = "foo";
    o.description = "foo";
    o.selector = "foo";
  }
  buildCounterDocumentationRule--;
  return o;
}

checkDocumentationRule(api.DocumentationRule o) {
  buildCounterDocumentationRule++;
  if (buildCounterDocumentationRule < 3) {
    unittest.expect(o.deprecationDescription, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterDocumentationRule--;
}

core.int buildCounterEnableServiceRequest = 0;
buildEnableServiceRequest() {
  var o = new api.EnableServiceRequest();
  buildCounterEnableServiceRequest++;
  if (buildCounterEnableServiceRequest < 3) {
  }
  buildCounterEnableServiceRequest--;
  return o;
}

checkEnableServiceRequest(api.EnableServiceRequest o) {
  buildCounterEnableServiceRequest++;
  if (buildCounterEnableServiceRequest < 3) {
  }
  buildCounterEnableServiceRequest--;
}

buildUnnamed1647() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1647(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1648() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1648(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1649() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1649(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEndpoint = 0;
buildEndpoint() {
  var o = new api.Endpoint();
  buildCounterEndpoint++;
  if (buildCounterEndpoint < 3) {
    o.aliases = buildUnnamed1647();
    o.allowCors = true;
    o.apis = buildUnnamed1648();
    o.features = buildUnnamed1649();
    o.name = "foo";
    o.target = "foo";
  }
  buildCounterEndpoint--;
  return o;
}

checkEndpoint(api.Endpoint o) {
  buildCounterEndpoint++;
  if (buildCounterEndpoint < 3) {
    checkUnnamed1647(o.aliases);
    unittest.expect(o.allowCors, unittest.isTrue);
    checkUnnamed1648(o.apis);
    checkUnnamed1649(o.features);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
  }
  buildCounterEndpoint--;
}

buildUnnamed1650() {
  var o = new core.List<api.EnumValue>();
  o.add(buildEnumValue());
  o.add(buildEnumValue());
  return o;
}

checkUnnamed1650(core.List<api.EnumValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnumValue(o[0]);
  checkEnumValue(o[1]);
}

buildUnnamed1651() {
  var o = new core.List<api.Option>();
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

checkUnnamed1651(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterEnum = 0;
buildEnum() {
  var o = new api.Enum();
  buildCounterEnum++;
  if (buildCounterEnum < 3) {
    o.enumvalue = buildUnnamed1650();
    o.name = "foo";
    o.options = buildUnnamed1651();
    o.sourceContext = buildSourceContext();
    o.syntax = "foo";
  }
  buildCounterEnum--;
  return o;
}

checkEnum(api.Enum o) {
  buildCounterEnum++;
  if (buildCounterEnum < 3) {
    checkUnnamed1650(o.enumvalue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1651(o.options);
    checkSourceContext(o.sourceContext);
    unittest.expect(o.syntax, unittest.equals('foo'));
  }
  buildCounterEnum--;
}

buildUnnamed1652() {
  var o = new core.List<api.Option>();
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

checkUnnamed1652(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterEnumValue = 0;
buildEnumValue() {
  var o = new api.EnumValue();
  buildCounterEnumValue++;
  if (buildCounterEnumValue < 3) {
    o.name = "foo";
    o.number = 42;
    o.options = buildUnnamed1652();
  }
  buildCounterEnumValue--;
  return o;
}

checkEnumValue(api.EnumValue o) {
  buildCounterEnumValue++;
  if (buildCounterEnumValue < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.number, unittest.equals(42));
    checkUnnamed1652(o.options);
  }
  buildCounterEnumValue--;
}

core.int buildCounterExperimental = 0;
buildExperimental() {
  var o = new api.Experimental();
  buildCounterExperimental++;
  if (buildCounterExperimental < 3) {
    o.authorization = buildAuthorizationConfig();
  }
  buildCounterExperimental--;
  return o;
}

checkExperimental(api.Experimental o) {
  buildCounterExperimental++;
  if (buildCounterExperimental < 3) {
    checkAuthorizationConfig(o.authorization);
  }
  buildCounterExperimental--;
}

buildUnnamed1653() {
  var o = new core.List<api.Option>();
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

checkUnnamed1653(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterField = 0;
buildField() {
  var o = new api.Field();
  buildCounterField++;
  if (buildCounterField < 3) {
    o.cardinality = "foo";
    o.defaultValue = "foo";
    o.jsonName = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.number = 42;
    o.oneofIndex = 42;
    o.options = buildUnnamed1653();
    o.packed = true;
    o.typeUrl = "foo";
  }
  buildCounterField--;
  return o;
}

checkField(api.Field o) {
  buildCounterField++;
  if (buildCounterField < 3) {
    unittest.expect(o.cardinality, unittest.equals('foo'));
    unittest.expect(o.defaultValue, unittest.equals('foo'));
    unittest.expect(o.jsonName, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.number, unittest.equals(42));
    unittest.expect(o.oneofIndex, unittest.equals(42));
    checkUnnamed1653(o.options);
    unittest.expect(o.packed, unittest.isTrue);
    unittest.expect(o.typeUrl, unittest.equals('foo'));
  }
  buildCounterField--;
}

buildUnnamed1654() {
  var o = new core.List<api.HttpRule>();
  o.add(buildHttpRule());
  o.add(buildHttpRule());
  return o;
}

checkUnnamed1654(core.List<api.HttpRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpRule(o[0]);
  checkHttpRule(o[1]);
}

core.int buildCounterHttp = 0;
buildHttp() {
  var o = new api.Http();
  buildCounterHttp++;
  if (buildCounterHttp < 3) {
    o.fullyDecodeReservedExpansion = true;
    o.rules = buildUnnamed1654();
  }
  buildCounterHttp--;
  return o;
}

checkHttp(api.Http o) {
  buildCounterHttp++;
  if (buildCounterHttp < 3) {
    unittest.expect(o.fullyDecodeReservedExpansion, unittest.isTrue);
    checkUnnamed1654(o.rules);
  }
  buildCounterHttp--;
}

buildUnnamed1655() {
  var o = new core.List<api.HttpRule>();
  o.add(buildHttpRule());
  o.add(buildHttpRule());
  return o;
}

checkUnnamed1655(core.List<api.HttpRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpRule(o[0]);
  checkHttpRule(o[1]);
}

core.int buildCounterHttpRule = 0;
buildHttpRule() {
  var o = new api.HttpRule();
  buildCounterHttpRule++;
  if (buildCounterHttpRule < 3) {
    o.additionalBindings = buildUnnamed1655();
    o.body = "foo";
    o.custom = buildCustomHttpPattern();
    o.delete = "foo";
    o.get = "foo";
    o.mediaDownload = buildMediaDownload();
    o.mediaUpload = buildMediaUpload();
    o.patch = "foo";
    o.post = "foo";
    o.put = "foo";
    o.responseBody = "foo";
    o.restCollection = "foo";
    o.restMethodName = "foo";
    o.selector = "foo";
  }
  buildCounterHttpRule--;
  return o;
}

checkHttpRule(api.HttpRule o) {
  buildCounterHttpRule++;
  if (buildCounterHttpRule < 3) {
    checkUnnamed1655(o.additionalBindings);
    unittest.expect(o.body, unittest.equals('foo'));
    checkCustomHttpPattern(o.custom);
    unittest.expect(o.delete, unittest.equals('foo'));
    unittest.expect(o.get, unittest.equals('foo'));
    checkMediaDownload(o.mediaDownload);
    checkMediaUpload(o.mediaUpload);
    unittest.expect(o.patch, unittest.equals('foo'));
    unittest.expect(o.post, unittest.equals('foo'));
    unittest.expect(o.put, unittest.equals('foo'));
    unittest.expect(o.responseBody, unittest.equals('foo'));
    unittest.expect(o.restCollection, unittest.equals('foo'));
    unittest.expect(o.restMethodName, unittest.equals('foo'));
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterHttpRule--;
}

core.int buildCounterLabelDescriptor = 0;
buildLabelDescriptor() {
  var o = new api.LabelDescriptor();
  buildCounterLabelDescriptor++;
  if (buildCounterLabelDescriptor < 3) {
    o.description = "foo";
    o.key = "foo";
    o.valueType = "foo";
  }
  buildCounterLabelDescriptor--;
  return o;
}

checkLabelDescriptor(api.LabelDescriptor o) {
  buildCounterLabelDescriptor++;
  if (buildCounterLabelDescriptor < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.valueType, unittest.equals('foo'));
  }
  buildCounterLabelDescriptor--;
}

buildUnnamed1656() {
  var o = new core.List<api.PublishedService>();
  o.add(buildPublishedService());
  o.add(buildPublishedService());
  return o;
}

checkUnnamed1656(core.List<api.PublishedService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPublishedService(o[0]);
  checkPublishedService(o[1]);
}

core.int buildCounterListEnabledServicesResponse = 0;
buildListEnabledServicesResponse() {
  var o = new api.ListEnabledServicesResponse();
  buildCounterListEnabledServicesResponse++;
  if (buildCounterListEnabledServicesResponse < 3) {
    o.nextPageToken = "foo";
    o.services = buildUnnamed1656();
  }
  buildCounterListEnabledServicesResponse--;
  return o;
}

checkListEnabledServicesResponse(api.ListEnabledServicesResponse o) {
  buildCounterListEnabledServicesResponse++;
  if (buildCounterListEnabledServicesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1656(o.services);
  }
  buildCounterListEnabledServicesResponse--;
}

buildUnnamed1657() {
  var o = new core.List<api.LabelDescriptor>();
  o.add(buildLabelDescriptor());
  o.add(buildLabelDescriptor());
  return o;
}

checkUnnamed1657(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0]);
  checkLabelDescriptor(o[1]);
}

core.int buildCounterLogDescriptor = 0;
buildLogDescriptor() {
  var o = new api.LogDescriptor();
  buildCounterLogDescriptor++;
  if (buildCounterLogDescriptor < 3) {
    o.description = "foo";
    o.displayName = "foo";
    o.labels = buildUnnamed1657();
    o.name = "foo";
  }
  buildCounterLogDescriptor--;
  return o;
}

checkLogDescriptor(api.LogDescriptor o) {
  buildCounterLogDescriptor++;
  if (buildCounterLogDescriptor < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed1657(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLogDescriptor--;
}

buildUnnamed1658() {
  var o = new core.List<api.LoggingDestination>();
  o.add(buildLoggingDestination());
  o.add(buildLoggingDestination());
  return o;
}

checkUnnamed1658(core.List<api.LoggingDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoggingDestination(o[0]);
  checkLoggingDestination(o[1]);
}

buildUnnamed1659() {
  var o = new core.List<api.LoggingDestination>();
  o.add(buildLoggingDestination());
  o.add(buildLoggingDestination());
  return o;
}

checkUnnamed1659(core.List<api.LoggingDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoggingDestination(o[0]);
  checkLoggingDestination(o[1]);
}

core.int buildCounterLogging = 0;
buildLogging() {
  var o = new api.Logging();
  buildCounterLogging++;
  if (buildCounterLogging < 3) {
    o.consumerDestinations = buildUnnamed1658();
    o.producerDestinations = buildUnnamed1659();
  }
  buildCounterLogging--;
  return o;
}

checkLogging(api.Logging o) {
  buildCounterLogging++;
  if (buildCounterLogging < 3) {
    checkUnnamed1658(o.consumerDestinations);
    checkUnnamed1659(o.producerDestinations);
  }
  buildCounterLogging--;
}

buildUnnamed1660() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1660(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLoggingDestination = 0;
buildLoggingDestination() {
  var o = new api.LoggingDestination();
  buildCounterLoggingDestination++;
  if (buildCounterLoggingDestination < 3) {
    o.logs = buildUnnamed1660();
    o.monitoredResource = "foo";
  }
  buildCounterLoggingDestination--;
  return o;
}

checkLoggingDestination(api.LoggingDestination o) {
  buildCounterLoggingDestination++;
  if (buildCounterLoggingDestination < 3) {
    checkUnnamed1660(o.logs);
    unittest.expect(o.monitoredResource, unittest.equals('foo'));
  }
  buildCounterLoggingDestination--;
}

core.int buildCounterMediaDownload = 0;
buildMediaDownload() {
  var o = new api.MediaDownload();
  buildCounterMediaDownload++;
  if (buildCounterMediaDownload < 3) {
    o.completeNotification = true;
    o.downloadService = "foo";
    o.dropzone = "foo";
    o.enabled = true;
    o.maxDirectDownloadSize = "foo";
    o.useDirectDownload = true;
  }
  buildCounterMediaDownload--;
  return o;
}

checkMediaDownload(api.MediaDownload o) {
  buildCounterMediaDownload++;
  if (buildCounterMediaDownload < 3) {
    unittest.expect(o.completeNotification, unittest.isTrue);
    unittest.expect(o.downloadService, unittest.equals('foo'));
    unittest.expect(o.dropzone, unittest.equals('foo'));
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.maxDirectDownloadSize, unittest.equals('foo'));
    unittest.expect(o.useDirectDownload, unittest.isTrue);
  }
  buildCounterMediaDownload--;
}

buildUnnamed1661() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1661(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMediaUpload = 0;
buildMediaUpload() {
  var o = new api.MediaUpload();
  buildCounterMediaUpload++;
  if (buildCounterMediaUpload < 3) {
    o.completeNotification = true;
    o.dropzone = "foo";
    o.enabled = true;
    o.maxSize = "foo";
    o.mimeTypes = buildUnnamed1661();
    o.progressNotification = true;
    o.startNotification = true;
    o.uploadService = "foo";
  }
  buildCounterMediaUpload--;
  return o;
}

checkMediaUpload(api.MediaUpload o) {
  buildCounterMediaUpload++;
  if (buildCounterMediaUpload < 3) {
    unittest.expect(o.completeNotification, unittest.isTrue);
    unittest.expect(o.dropzone, unittest.equals('foo'));
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.maxSize, unittest.equals('foo'));
    checkUnnamed1661(o.mimeTypes);
    unittest.expect(o.progressNotification, unittest.isTrue);
    unittest.expect(o.startNotification, unittest.isTrue);
    unittest.expect(o.uploadService, unittest.equals('foo'));
  }
  buildCounterMediaUpload--;
}

buildUnnamed1662() {
  var o = new core.List<api.Option>();
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

checkUnnamed1662(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterMethod = 0;
buildMethod() {
  var o = new api.Method();
  buildCounterMethod++;
  if (buildCounterMethod < 3) {
    o.name = "foo";
    o.options = buildUnnamed1662();
    o.requestStreaming = true;
    o.requestTypeUrl = "foo";
    o.responseStreaming = true;
    o.responseTypeUrl = "foo";
    o.syntax = "foo";
  }
  buildCounterMethod--;
  return o;
}

checkMethod(api.Method o) {
  buildCounterMethod++;
  if (buildCounterMethod < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1662(o.options);
    unittest.expect(o.requestStreaming, unittest.isTrue);
    unittest.expect(o.requestTypeUrl, unittest.equals('foo'));
    unittest.expect(o.responseStreaming, unittest.isTrue);
    unittest.expect(o.responseTypeUrl, unittest.equals('foo'));
    unittest.expect(o.syntax, unittest.equals('foo'));
  }
  buildCounterMethod--;
}

buildUnnamed1663() {
  var o = new core.List<api.LabelDescriptor>();
  o.add(buildLabelDescriptor());
  o.add(buildLabelDescriptor());
  return o;
}

checkUnnamed1663(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0]);
  checkLabelDescriptor(o[1]);
}

core.int buildCounterMetricDescriptor = 0;
buildMetricDescriptor() {
  var o = new api.MetricDescriptor();
  buildCounterMetricDescriptor++;
  if (buildCounterMetricDescriptor < 3) {
    o.description = "foo";
    o.displayName = "foo";
    o.labels = buildUnnamed1663();
    o.metricKind = "foo";
    o.name = "foo";
    o.type = "foo";
    o.unit = "foo";
    o.valueType = "foo";
  }
  buildCounterMetricDescriptor--;
  return o;
}

checkMetricDescriptor(api.MetricDescriptor o) {
  buildCounterMetricDescriptor++;
  if (buildCounterMetricDescriptor < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed1663(o.labels);
    unittest.expect(o.metricKind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.valueType, unittest.equals('foo'));
  }
  buildCounterMetricDescriptor--;
}

buildUnnamed1664() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1664(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterMetricRule = 0;
buildMetricRule() {
  var o = new api.MetricRule();
  buildCounterMetricRule++;
  if (buildCounterMetricRule < 3) {
    o.metricCosts = buildUnnamed1664();
    o.selector = "foo";
  }
  buildCounterMetricRule--;
  return o;
}

checkMetricRule(api.MetricRule o) {
  buildCounterMetricRule++;
  if (buildCounterMetricRule < 3) {
    checkUnnamed1664(o.metricCosts);
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterMetricRule--;
}

core.int buildCounterMixin = 0;
buildMixin() {
  var o = new api.Mixin();
  buildCounterMixin++;
  if (buildCounterMixin < 3) {
    o.name = "foo";
    o.root = "foo";
  }
  buildCounterMixin--;
  return o;
}

checkMixin(api.Mixin o) {
  buildCounterMixin++;
  if (buildCounterMixin < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.root, unittest.equals('foo'));
  }
  buildCounterMixin--;
}

buildUnnamed1665() {
  var o = new core.List<api.LabelDescriptor>();
  o.add(buildLabelDescriptor());
  o.add(buildLabelDescriptor());
  return o;
}

checkUnnamed1665(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0]);
  checkLabelDescriptor(o[1]);
}

core.int buildCounterMonitoredResourceDescriptor = 0;
buildMonitoredResourceDescriptor() {
  var o = new api.MonitoredResourceDescriptor();
  buildCounterMonitoredResourceDescriptor++;
  if (buildCounterMonitoredResourceDescriptor < 3) {
    o.description = "foo";
    o.displayName = "foo";
    o.labels = buildUnnamed1665();
    o.name = "foo";
    o.type = "foo";
  }
  buildCounterMonitoredResourceDescriptor--;
  return o;
}

checkMonitoredResourceDescriptor(api.MonitoredResourceDescriptor o) {
  buildCounterMonitoredResourceDescriptor++;
  if (buildCounterMonitoredResourceDescriptor < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed1665(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterMonitoredResourceDescriptor--;
}

buildUnnamed1666() {
  var o = new core.List<api.MonitoringDestination>();
  o.add(buildMonitoringDestination());
  o.add(buildMonitoringDestination());
  return o;
}

checkUnnamed1666(core.List<api.MonitoringDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoringDestination(o[0]);
  checkMonitoringDestination(o[1]);
}

buildUnnamed1667() {
  var o = new core.List<api.MonitoringDestination>();
  o.add(buildMonitoringDestination());
  o.add(buildMonitoringDestination());
  return o;
}

checkUnnamed1667(core.List<api.MonitoringDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoringDestination(o[0]);
  checkMonitoringDestination(o[1]);
}

core.int buildCounterMonitoring = 0;
buildMonitoring() {
  var o = new api.Monitoring();
  buildCounterMonitoring++;
  if (buildCounterMonitoring < 3) {
    o.consumerDestinations = buildUnnamed1666();
    o.producerDestinations = buildUnnamed1667();
  }
  buildCounterMonitoring--;
  return o;
}

checkMonitoring(api.Monitoring o) {
  buildCounterMonitoring++;
  if (buildCounterMonitoring < 3) {
    checkUnnamed1666(o.consumerDestinations);
    checkUnnamed1667(o.producerDestinations);
  }
  buildCounterMonitoring--;
}

buildUnnamed1668() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1668(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMonitoringDestination = 0;
buildMonitoringDestination() {
  var o = new api.MonitoringDestination();
  buildCounterMonitoringDestination++;
  if (buildCounterMonitoringDestination < 3) {
    o.metrics = buildUnnamed1668();
    o.monitoredResource = "foo";
  }
  buildCounterMonitoringDestination--;
  return o;
}

checkMonitoringDestination(api.MonitoringDestination o) {
  buildCounterMonitoringDestination++;
  if (buildCounterMonitoringDestination < 3) {
    checkUnnamed1668(o.metrics);
    unittest.expect(o.monitoredResource, unittest.equals('foo'));
  }
  buildCounterMonitoringDestination--;
}

core.int buildCounterOAuthRequirements = 0;
buildOAuthRequirements() {
  var o = new api.OAuthRequirements();
  buildCounterOAuthRequirements++;
  if (buildCounterOAuthRequirements < 3) {
    o.canonicalScopes = "foo";
  }
  buildCounterOAuthRequirements--;
  return o;
}

checkOAuthRequirements(api.OAuthRequirements o) {
  buildCounterOAuthRequirements++;
  if (buildCounterOAuthRequirements < 3) {
    unittest.expect(o.canonicalScopes, unittest.equals('foo'));
  }
  buildCounterOAuthRequirements--;
}

buildUnnamed1669() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed1669(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map; unittest.expect(casted1, unittest.hasLength(3)); unittest.expect(casted1["list"], unittest.equals([1, 2, 3])); unittest.expect(casted1["bool"], unittest.equals(true)); unittest.expect(casted1["string"], unittest.equals('foo')); 
  var casted2 = (o["y"]) as core.Map; unittest.expect(casted2, unittest.hasLength(3)); unittest.expect(casted2["list"], unittest.equals([1, 2, 3])); unittest.expect(casted2["bool"], unittest.equals(true)); unittest.expect(casted2["string"], unittest.equals('foo')); 
}

buildUnnamed1670() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed1670(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map; unittest.expect(casted3, unittest.hasLength(3)); unittest.expect(casted3["list"], unittest.equals([1, 2, 3])); unittest.expect(casted3["bool"], unittest.equals(true)); unittest.expect(casted3["string"], unittest.equals('foo')); 
  var casted4 = (o["y"]) as core.Map; unittest.expect(casted4, unittest.hasLength(3)); unittest.expect(casted4["list"], unittest.equals([1, 2, 3])); unittest.expect(casted4["bool"], unittest.equals(true)); unittest.expect(casted4["string"], unittest.equals('foo')); 
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed1669();
    o.name = "foo";
    o.response = buildUnnamed1670();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed1669(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1670(o.response);
  }
  buildCounterOperation--;
}

buildUnnamed1671() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1671(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1672() {
  var o = new core.List<api.Step>();
  o.add(buildStep());
  o.add(buildStep());
  return o;
}

checkUnnamed1672(core.List<api.Step> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStep(o[0]);
  checkStep(o[1]);
}

core.int buildCounterOperationMetadata = 0;
buildOperationMetadata() {
  var o = new api.OperationMetadata();
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    o.progressPercentage = 42;
    o.resourceNames = buildUnnamed1671();
    o.startTime = "foo";
    o.steps = buildUnnamed1672();
  }
  buildCounterOperationMetadata--;
  return o;
}

checkOperationMetadata(api.OperationMetadata o) {
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    unittest.expect(o.progressPercentage, unittest.equals(42));
    checkUnnamed1671(o.resourceNames);
    unittest.expect(o.startTime, unittest.equals('foo'));
    checkUnnamed1672(o.steps);
  }
  buildCounterOperationMetadata--;
}

buildUnnamed1673() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed1673(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map; unittest.expect(casted5, unittest.hasLength(3)); unittest.expect(casted5["list"], unittest.equals([1, 2, 3])); unittest.expect(casted5["bool"], unittest.equals(true)); unittest.expect(casted5["string"], unittest.equals('foo')); 
  var casted6 = (o["y"]) as core.Map; unittest.expect(casted6, unittest.hasLength(3)); unittest.expect(casted6["list"], unittest.equals([1, 2, 3])); unittest.expect(casted6["bool"], unittest.equals(true)); unittest.expect(casted6["string"], unittest.equals('foo')); 
}

core.int buildCounterOption = 0;
buildOption() {
  var o = new api.Option();
  buildCounterOption++;
  if (buildCounterOption < 3) {
    o.name = "foo";
    o.value = buildUnnamed1673();
  }
  buildCounterOption--;
  return o;
}

checkOption(api.Option o) {
  buildCounterOption++;
  if (buildCounterOption < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1673(o.value);
  }
  buildCounterOption--;
}

buildUnnamed1674() {
  var o = new core.List<api.Page>();
  o.add(buildPage());
  o.add(buildPage());
  return o;
}

checkUnnamed1674(core.List<api.Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPage(o[0]);
  checkPage(o[1]);
}

core.int buildCounterPage = 0;
buildPage() {
  var o = new api.Page();
  buildCounterPage++;
  if (buildCounterPage < 3) {
    o.content = "foo";
    o.name = "foo";
    o.subpages = buildUnnamed1674();
  }
  buildCounterPage--;
  return o;
}

checkPage(api.Page o) {
  buildCounterPage++;
  if (buildCounterPage < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1674(o.subpages);
  }
  buildCounterPage--;
}

core.int buildCounterPublishedService = 0;
buildPublishedService() {
  var o = new api.PublishedService();
  buildCounterPublishedService++;
  if (buildCounterPublishedService < 3) {
    o.name = "foo";
    o.service = buildService();
  }
  buildCounterPublishedService--;
  return o;
}

checkPublishedService(api.PublishedService o) {
  buildCounterPublishedService++;
  if (buildCounterPublishedService < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkService(o.service);
  }
  buildCounterPublishedService--;
}

buildUnnamed1675() {
  var o = new core.List<api.QuotaLimit>();
  o.add(buildQuotaLimit());
  o.add(buildQuotaLimit());
  return o;
}

checkUnnamed1675(core.List<api.QuotaLimit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuotaLimit(o[0]);
  checkQuotaLimit(o[1]);
}

buildUnnamed1676() {
  var o = new core.List<api.MetricRule>();
  o.add(buildMetricRule());
  o.add(buildMetricRule());
  return o;
}

checkUnnamed1676(core.List<api.MetricRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricRule(o[0]);
  checkMetricRule(o[1]);
}

core.int buildCounterQuota = 0;
buildQuota() {
  var o = new api.Quota();
  buildCounterQuota++;
  if (buildCounterQuota < 3) {
    o.limits = buildUnnamed1675();
    o.metricRules = buildUnnamed1676();
  }
  buildCounterQuota--;
  return o;
}

checkQuota(api.Quota o) {
  buildCounterQuota++;
  if (buildCounterQuota < 3) {
    checkUnnamed1675(o.limits);
    checkUnnamed1676(o.metricRules);
  }
  buildCounterQuota--;
}

buildUnnamed1677() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1677(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterQuotaLimit = 0;
buildQuotaLimit() {
  var o = new api.QuotaLimit();
  buildCounterQuotaLimit++;
  if (buildCounterQuotaLimit < 3) {
    o.defaultLimit = "foo";
    o.description = "foo";
    o.displayName = "foo";
    o.duration = "foo";
    o.freeTier = "foo";
    o.maxLimit = "foo";
    o.metric = "foo";
    o.name = "foo";
    o.unit = "foo";
    o.values = buildUnnamed1677();
  }
  buildCounterQuotaLimit--;
  return o;
}

checkQuotaLimit(api.QuotaLimit o) {
  buildCounterQuotaLimit++;
  if (buildCounterQuotaLimit < 3) {
    unittest.expect(o.defaultLimit, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.freeTier, unittest.equals('foo'));
    unittest.expect(o.maxLimit, unittest.equals('foo'));
    unittest.expect(o.metric, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.unit, unittest.equals('foo'));
    checkUnnamed1677(o.values);
  }
  buildCounterQuotaLimit--;
}

buildUnnamed1678() {
  var o = new core.List<api.PublishedService>();
  o.add(buildPublishedService());
  o.add(buildPublishedService());
  return o;
}

checkUnnamed1678(core.List<api.PublishedService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPublishedService(o[0]);
  checkPublishedService(o[1]);
}

core.int buildCounterSearchServicesResponse = 0;
buildSearchServicesResponse() {
  var o = new api.SearchServicesResponse();
  buildCounterSearchServicesResponse++;
  if (buildCounterSearchServicesResponse < 3) {
    o.nextPageToken = "foo";
    o.services = buildUnnamed1678();
  }
  buildCounterSearchServicesResponse--;
  return o;
}

checkSearchServicesResponse(api.SearchServicesResponse o) {
  buildCounterSearchServicesResponse++;
  if (buildCounterSearchServicesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1678(o.services);
  }
  buildCounterSearchServicesResponse--;
}

buildUnnamed1679() {
  var o = new core.List<api.Api>();
  o.add(buildApi());
  o.add(buildApi());
  return o;
}

checkUnnamed1679(core.List<api.Api> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApi(o[0]);
  checkApi(o[1]);
}

buildUnnamed1680() {
  var o = new core.List<api.Endpoint>();
  o.add(buildEndpoint());
  o.add(buildEndpoint());
  return o;
}

checkUnnamed1680(core.List<api.Endpoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEndpoint(o[0]);
  checkEndpoint(o[1]);
}

buildUnnamed1681() {
  var o = new core.List<api.Enum>();
  o.add(buildEnum());
  o.add(buildEnum());
  return o;
}

checkUnnamed1681(core.List<api.Enum> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnum(o[0]);
  checkEnum(o[1]);
}

buildUnnamed1682() {
  var o = new core.List<api.LogDescriptor>();
  o.add(buildLogDescriptor());
  o.add(buildLogDescriptor());
  return o;
}

checkUnnamed1682(core.List<api.LogDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogDescriptor(o[0]);
  checkLogDescriptor(o[1]);
}

buildUnnamed1683() {
  var o = new core.List<api.MetricDescriptor>();
  o.add(buildMetricDescriptor());
  o.add(buildMetricDescriptor());
  return o;
}

checkUnnamed1683(core.List<api.MetricDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricDescriptor(o[0]);
  checkMetricDescriptor(o[1]);
}

buildUnnamed1684() {
  var o = new core.List<api.MonitoredResourceDescriptor>();
  o.add(buildMonitoredResourceDescriptor());
  o.add(buildMonitoredResourceDescriptor());
  return o;
}

checkUnnamed1684(core.List<api.MonitoredResourceDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoredResourceDescriptor(o[0]);
  checkMonitoredResourceDescriptor(o[1]);
}

buildUnnamed1685() {
  var o = new core.List<api.Type>();
  o.add(buildType());
  o.add(buildType());
  return o;
}

checkUnnamed1685(core.List<api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o[0]);
  checkType(o[1]);
}

buildUnnamed1686() {
  var o = new core.List<api.Type>();
  o.add(buildType());
  o.add(buildType());
  return o;
}

checkUnnamed1686(core.List<api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o[0]);
  checkType(o[1]);
}

core.int buildCounterService = 0;
buildService() {
  var o = new api.Service();
  buildCounterService++;
  if (buildCounterService < 3) {
    o.apis = buildUnnamed1679();
    o.authentication = buildAuthentication();
    o.backend = buildBackend();
    o.configVersion = 42;
    o.context = buildContext();
    o.control = buildControl();
    o.customError = buildCustomError();
    o.documentation = buildDocumentation();
    o.endpoints = buildUnnamed1680();
    o.enums = buildUnnamed1681();
    o.experimental = buildExperimental();
    o.http = buildHttp();
    o.id = "foo";
    o.logging = buildLogging();
    o.logs = buildUnnamed1682();
    o.metrics = buildUnnamed1683();
    o.monitoredResources = buildUnnamed1684();
    o.monitoring = buildMonitoring();
    o.name = "foo";
    o.producerProjectId = "foo";
    o.quota = buildQuota();
    o.sourceInfo = buildSourceInfo();
    o.systemParameters = buildSystemParameters();
    o.systemTypes = buildUnnamed1685();
    o.title = "foo";
    o.types = buildUnnamed1686();
    o.usage = buildUsage();
    o.visibility = buildVisibility();
  }
  buildCounterService--;
  return o;
}

checkService(api.Service o) {
  buildCounterService++;
  if (buildCounterService < 3) {
    checkUnnamed1679(o.apis);
    checkAuthentication(o.authentication);
    checkBackend(o.backend);
    unittest.expect(o.configVersion, unittest.equals(42));
    checkContext(o.context);
    checkControl(o.control);
    checkCustomError(o.customError);
    checkDocumentation(o.documentation);
    checkUnnamed1680(o.endpoints);
    checkUnnamed1681(o.enums);
    checkExperimental(o.experimental);
    checkHttp(o.http);
    unittest.expect(o.id, unittest.equals('foo'));
    checkLogging(o.logging);
    checkUnnamed1682(o.logs);
    checkUnnamed1683(o.metrics);
    checkUnnamed1684(o.monitoredResources);
    checkMonitoring(o.monitoring);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.producerProjectId, unittest.equals('foo'));
    checkQuota(o.quota);
    checkSourceInfo(o.sourceInfo);
    checkSystemParameters(o.systemParameters);
    checkUnnamed1685(o.systemTypes);
    unittest.expect(o.title, unittest.equals('foo'));
    checkUnnamed1686(o.types);
    checkUsage(o.usage);
    checkVisibility(o.visibility);
  }
  buildCounterService--;
}

core.int buildCounterSourceContext = 0;
buildSourceContext() {
  var o = new api.SourceContext();
  buildCounterSourceContext++;
  if (buildCounterSourceContext < 3) {
    o.fileName = "foo";
  }
  buildCounterSourceContext--;
  return o;
}

checkSourceContext(api.SourceContext o) {
  buildCounterSourceContext++;
  if (buildCounterSourceContext < 3) {
    unittest.expect(o.fileName, unittest.equals('foo'));
  }
  buildCounterSourceContext--;
}

buildUnnamed1687() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed1687(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o["x"]) as core.Map; unittest.expect(casted7, unittest.hasLength(3)); unittest.expect(casted7["list"], unittest.equals([1, 2, 3])); unittest.expect(casted7["bool"], unittest.equals(true)); unittest.expect(casted7["string"], unittest.equals('foo')); 
  var casted8 = (o["y"]) as core.Map; unittest.expect(casted8, unittest.hasLength(3)); unittest.expect(casted8["list"], unittest.equals([1, 2, 3])); unittest.expect(casted8["bool"], unittest.equals(true)); unittest.expect(casted8["string"], unittest.equals('foo')); 
}

buildUnnamed1688() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed1687());
  o.add(buildUnnamed1687());
  return o;
}

checkUnnamed1688(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1687(o[0]);
  checkUnnamed1687(o[1]);
}

core.int buildCounterSourceInfo = 0;
buildSourceInfo() {
  var o = new api.SourceInfo();
  buildCounterSourceInfo++;
  if (buildCounterSourceInfo < 3) {
    o.sourceFiles = buildUnnamed1688();
  }
  buildCounterSourceInfo--;
  return o;
}

checkSourceInfo(api.SourceInfo o) {
  buildCounterSourceInfo++;
  if (buildCounterSourceInfo < 3) {
    checkUnnamed1688(o.sourceFiles);
  }
  buildCounterSourceInfo--;
}

buildUnnamed1689() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed1689(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o["x"]) as core.Map; unittest.expect(casted9, unittest.hasLength(3)); unittest.expect(casted9["list"], unittest.equals([1, 2, 3])); unittest.expect(casted9["bool"], unittest.equals(true)); unittest.expect(casted9["string"], unittest.equals('foo')); 
  var casted10 = (o["y"]) as core.Map; unittest.expect(casted10, unittest.hasLength(3)); unittest.expect(casted10["list"], unittest.equals([1, 2, 3])); unittest.expect(casted10["bool"], unittest.equals(true)); unittest.expect(casted10["string"], unittest.equals('foo')); 
}

buildUnnamed1690() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed1689());
  o.add(buildUnnamed1689());
  return o;
}

checkUnnamed1690(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1689(o[0]);
  checkUnnamed1689(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed1690();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed1690(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterStep = 0;
buildStep() {
  var o = new api.Step();
  buildCounterStep++;
  if (buildCounterStep < 3) {
    o.description = "foo";
    o.status = "foo";
  }
  buildCounterStep--;
  return o;
}

checkStep(api.Step o) {
  buildCounterStep++;
  if (buildCounterStep < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterStep--;
}

core.int buildCounterSystemParameter = 0;
buildSystemParameter() {
  var o = new api.SystemParameter();
  buildCounterSystemParameter++;
  if (buildCounterSystemParameter < 3) {
    o.httpHeader = "foo";
    o.name = "foo";
    o.urlQueryParameter = "foo";
  }
  buildCounterSystemParameter--;
  return o;
}

checkSystemParameter(api.SystemParameter o) {
  buildCounterSystemParameter++;
  if (buildCounterSystemParameter < 3) {
    unittest.expect(o.httpHeader, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.urlQueryParameter, unittest.equals('foo'));
  }
  buildCounterSystemParameter--;
}

buildUnnamed1691() {
  var o = new core.List<api.SystemParameter>();
  o.add(buildSystemParameter());
  o.add(buildSystemParameter());
  return o;
}

checkUnnamed1691(core.List<api.SystemParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSystemParameter(o[0]);
  checkSystemParameter(o[1]);
}

core.int buildCounterSystemParameterRule = 0;
buildSystemParameterRule() {
  var o = new api.SystemParameterRule();
  buildCounterSystemParameterRule++;
  if (buildCounterSystemParameterRule < 3) {
    o.parameters = buildUnnamed1691();
    o.selector = "foo";
  }
  buildCounterSystemParameterRule--;
  return o;
}

checkSystemParameterRule(api.SystemParameterRule o) {
  buildCounterSystemParameterRule++;
  if (buildCounterSystemParameterRule < 3) {
    checkUnnamed1691(o.parameters);
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterSystemParameterRule--;
}

buildUnnamed1692() {
  var o = new core.List<api.SystemParameterRule>();
  o.add(buildSystemParameterRule());
  o.add(buildSystemParameterRule());
  return o;
}

checkUnnamed1692(core.List<api.SystemParameterRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSystemParameterRule(o[0]);
  checkSystemParameterRule(o[1]);
}

core.int buildCounterSystemParameters = 0;
buildSystemParameters() {
  var o = new api.SystemParameters();
  buildCounterSystemParameters++;
  if (buildCounterSystemParameters < 3) {
    o.rules = buildUnnamed1692();
  }
  buildCounterSystemParameters--;
  return o;
}

checkSystemParameters(api.SystemParameters o) {
  buildCounterSystemParameters++;
  if (buildCounterSystemParameters < 3) {
    checkUnnamed1692(o.rules);
  }
  buildCounterSystemParameters--;
}

buildUnnamed1693() {
  var o = new core.List<api.Field>();
  o.add(buildField());
  o.add(buildField());
  return o;
}

checkUnnamed1693(core.List<api.Field> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkField(o[0]);
  checkField(o[1]);
}

buildUnnamed1694() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1694(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1695() {
  var o = new core.List<api.Option>();
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

checkUnnamed1695(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterType = 0;
buildType() {
  var o = new api.Type();
  buildCounterType++;
  if (buildCounterType < 3) {
    o.fields = buildUnnamed1693();
    o.name = "foo";
    o.oneofs = buildUnnamed1694();
    o.options = buildUnnamed1695();
    o.sourceContext = buildSourceContext();
    o.syntax = "foo";
  }
  buildCounterType--;
  return o;
}

checkType(api.Type o) {
  buildCounterType++;
  if (buildCounterType < 3) {
    checkUnnamed1693(o.fields);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1694(o.oneofs);
    checkUnnamed1695(o.options);
    checkSourceContext(o.sourceContext);
    unittest.expect(o.syntax, unittest.equals('foo'));
  }
  buildCounterType--;
}

buildUnnamed1696() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1696(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1697() {
  var o = new core.List<api.UsageRule>();
  o.add(buildUsageRule());
  o.add(buildUsageRule());
  return o;
}

checkUnnamed1697(core.List<api.UsageRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsageRule(o[0]);
  checkUsageRule(o[1]);
}

core.int buildCounterUsage = 0;
buildUsage() {
  var o = new api.Usage();
  buildCounterUsage++;
  if (buildCounterUsage < 3) {
    o.producerNotificationChannel = "foo";
    o.requirements = buildUnnamed1696();
    o.rules = buildUnnamed1697();
  }
  buildCounterUsage--;
  return o;
}

checkUsage(api.Usage o) {
  buildCounterUsage++;
  if (buildCounterUsage < 3) {
    unittest.expect(o.producerNotificationChannel, unittest.equals('foo'));
    checkUnnamed1696(o.requirements);
    checkUnnamed1697(o.rules);
  }
  buildCounterUsage--;
}

core.int buildCounterUsageRule = 0;
buildUsageRule() {
  var o = new api.UsageRule();
  buildCounterUsageRule++;
  if (buildCounterUsageRule < 3) {
    o.allowUnregisteredCalls = true;
    o.selector = "foo";
  }
  buildCounterUsageRule--;
  return o;
}

checkUsageRule(api.UsageRule o) {
  buildCounterUsageRule++;
  if (buildCounterUsageRule < 3) {
    unittest.expect(o.allowUnregisteredCalls, unittest.isTrue);
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterUsageRule--;
}

buildUnnamed1698() {
  var o = new core.List<api.VisibilityRule>();
  o.add(buildVisibilityRule());
  o.add(buildVisibilityRule());
  return o;
}

checkUnnamed1698(core.List<api.VisibilityRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVisibilityRule(o[0]);
  checkVisibilityRule(o[1]);
}

core.int buildCounterVisibility = 0;
buildVisibility() {
  var o = new api.Visibility();
  buildCounterVisibility++;
  if (buildCounterVisibility < 3) {
    o.rules = buildUnnamed1698();
  }
  buildCounterVisibility--;
  return o;
}

checkVisibility(api.Visibility o) {
  buildCounterVisibility++;
  if (buildCounterVisibility < 3) {
    checkUnnamed1698(o.rules);
  }
  buildCounterVisibility--;
}

core.int buildCounterVisibilityRule = 0;
buildVisibilityRule() {
  var o = new api.VisibilityRule();
  buildCounterVisibilityRule++;
  if (buildCounterVisibilityRule < 3) {
    o.restriction = "foo";
    o.selector = "foo";
  }
  buildCounterVisibilityRule--;
  return o;
}

checkVisibilityRule(api.VisibilityRule o) {
  buildCounterVisibilityRule++;
  if (buildCounterVisibilityRule < 3) {
    unittest.expect(o.restriction, unittest.equals('foo'));
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterVisibilityRule--;
}


main() {
  unittest.group("obj-schema-Api", () {
    unittest.test("to-json--from-json", () {
      var o = buildApi();
      var od = new api.Api.fromJson(o.toJson());
      checkApi(od);
    });
  });


  unittest.group("obj-schema-AuthProvider", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuthProvider();
      var od = new api.AuthProvider.fromJson(o.toJson());
      checkAuthProvider(od);
    });
  });


  unittest.group("obj-schema-AuthRequirement", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuthRequirement();
      var od = new api.AuthRequirement.fromJson(o.toJson());
      checkAuthRequirement(od);
    });
  });


  unittest.group("obj-schema-Authentication", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuthentication();
      var od = new api.Authentication.fromJson(o.toJson());
      checkAuthentication(od);
    });
  });


  unittest.group("obj-schema-AuthenticationRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuthenticationRule();
      var od = new api.AuthenticationRule.fromJson(o.toJson());
      checkAuthenticationRule(od);
    });
  });


  unittest.group("obj-schema-AuthorizationConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuthorizationConfig();
      var od = new api.AuthorizationConfig.fromJson(o.toJson());
      checkAuthorizationConfig(od);
    });
  });


  unittest.group("obj-schema-Backend", () {
    unittest.test("to-json--from-json", () {
      var o = buildBackend();
      var od = new api.Backend.fromJson(o.toJson());
      checkBackend(od);
    });
  });


  unittest.group("obj-schema-BackendRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildBackendRule();
      var od = new api.BackendRule.fromJson(o.toJson());
      checkBackendRule(od);
    });
  });


  unittest.group("obj-schema-Context", () {
    unittest.test("to-json--from-json", () {
      var o = buildContext();
      var od = new api.Context.fromJson(o.toJson());
      checkContext(od);
    });
  });


  unittest.group("obj-schema-ContextRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildContextRule();
      var od = new api.ContextRule.fromJson(o.toJson());
      checkContextRule(od);
    });
  });


  unittest.group("obj-schema-Control", () {
    unittest.test("to-json--from-json", () {
      var o = buildControl();
      var od = new api.Control.fromJson(o.toJson());
      checkControl(od);
    });
  });


  unittest.group("obj-schema-CustomAuthRequirements", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomAuthRequirements();
      var od = new api.CustomAuthRequirements.fromJson(o.toJson());
      checkCustomAuthRequirements(od);
    });
  });


  unittest.group("obj-schema-CustomError", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomError();
      var od = new api.CustomError.fromJson(o.toJson());
      checkCustomError(od);
    });
  });


  unittest.group("obj-schema-CustomErrorRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomErrorRule();
      var od = new api.CustomErrorRule.fromJson(o.toJson());
      checkCustomErrorRule(od);
    });
  });


  unittest.group("obj-schema-CustomHttpPattern", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomHttpPattern();
      var od = new api.CustomHttpPattern.fromJson(o.toJson());
      checkCustomHttpPattern(od);
    });
  });


  unittest.group("obj-schema-DisableServiceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDisableServiceRequest();
      var od = new api.DisableServiceRequest.fromJson(o.toJson());
      checkDisableServiceRequest(od);
    });
  });


  unittest.group("obj-schema-Documentation", () {
    unittest.test("to-json--from-json", () {
      var o = buildDocumentation();
      var od = new api.Documentation.fromJson(o.toJson());
      checkDocumentation(od);
    });
  });


  unittest.group("obj-schema-DocumentationRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildDocumentationRule();
      var od = new api.DocumentationRule.fromJson(o.toJson());
      checkDocumentationRule(od);
    });
  });


  unittest.group("obj-schema-EnableServiceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnableServiceRequest();
      var od = new api.EnableServiceRequest.fromJson(o.toJson());
      checkEnableServiceRequest(od);
    });
  });


  unittest.group("obj-schema-Endpoint", () {
    unittest.test("to-json--from-json", () {
      var o = buildEndpoint();
      var od = new api.Endpoint.fromJson(o.toJson());
      checkEndpoint(od);
    });
  });


  unittest.group("obj-schema-Enum", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnum();
      var od = new api.Enum.fromJson(o.toJson());
      checkEnum(od);
    });
  });


  unittest.group("obj-schema-EnumValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnumValue();
      var od = new api.EnumValue.fromJson(o.toJson());
      checkEnumValue(od);
    });
  });


  unittest.group("obj-schema-Experimental", () {
    unittest.test("to-json--from-json", () {
      var o = buildExperimental();
      var od = new api.Experimental.fromJson(o.toJson());
      checkExperimental(od);
    });
  });


  unittest.group("obj-schema-Field", () {
    unittest.test("to-json--from-json", () {
      var o = buildField();
      var od = new api.Field.fromJson(o.toJson());
      checkField(od);
    });
  });


  unittest.group("obj-schema-Http", () {
    unittest.test("to-json--from-json", () {
      var o = buildHttp();
      var od = new api.Http.fromJson(o.toJson());
      checkHttp(od);
    });
  });


  unittest.group("obj-schema-HttpRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildHttpRule();
      var od = new api.HttpRule.fromJson(o.toJson());
      checkHttpRule(od);
    });
  });


  unittest.group("obj-schema-LabelDescriptor", () {
    unittest.test("to-json--from-json", () {
      var o = buildLabelDescriptor();
      var od = new api.LabelDescriptor.fromJson(o.toJson());
      checkLabelDescriptor(od);
    });
  });


  unittest.group("obj-schema-ListEnabledServicesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListEnabledServicesResponse();
      var od = new api.ListEnabledServicesResponse.fromJson(o.toJson());
      checkListEnabledServicesResponse(od);
    });
  });


  unittest.group("obj-schema-LogDescriptor", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogDescriptor();
      var od = new api.LogDescriptor.fromJson(o.toJson());
      checkLogDescriptor(od);
    });
  });


  unittest.group("obj-schema-Logging", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogging();
      var od = new api.Logging.fromJson(o.toJson());
      checkLogging(od);
    });
  });


  unittest.group("obj-schema-LoggingDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildLoggingDestination();
      var od = new api.LoggingDestination.fromJson(o.toJson());
      checkLoggingDestination(od);
    });
  });


  unittest.group("obj-schema-MediaDownload", () {
    unittest.test("to-json--from-json", () {
      var o = buildMediaDownload();
      var od = new api.MediaDownload.fromJson(o.toJson());
      checkMediaDownload(od);
    });
  });


  unittest.group("obj-schema-MediaUpload", () {
    unittest.test("to-json--from-json", () {
      var o = buildMediaUpload();
      var od = new api.MediaUpload.fromJson(o.toJson());
      checkMediaUpload(od);
    });
  });


  unittest.group("obj-schema-Method", () {
    unittest.test("to-json--from-json", () {
      var o = buildMethod();
      var od = new api.Method.fromJson(o.toJson());
      checkMethod(od);
    });
  });


  unittest.group("obj-schema-MetricDescriptor", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetricDescriptor();
      var od = new api.MetricDescriptor.fromJson(o.toJson());
      checkMetricDescriptor(od);
    });
  });


  unittest.group("obj-schema-MetricRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetricRule();
      var od = new api.MetricRule.fromJson(o.toJson());
      checkMetricRule(od);
    });
  });


  unittest.group("obj-schema-Mixin", () {
    unittest.test("to-json--from-json", () {
      var o = buildMixin();
      var od = new api.Mixin.fromJson(o.toJson());
      checkMixin(od);
    });
  });


  unittest.group("obj-schema-MonitoredResourceDescriptor", () {
    unittest.test("to-json--from-json", () {
      var o = buildMonitoredResourceDescriptor();
      var od = new api.MonitoredResourceDescriptor.fromJson(o.toJson());
      checkMonitoredResourceDescriptor(od);
    });
  });


  unittest.group("obj-schema-Monitoring", () {
    unittest.test("to-json--from-json", () {
      var o = buildMonitoring();
      var od = new api.Monitoring.fromJson(o.toJson());
      checkMonitoring(od);
    });
  });


  unittest.group("obj-schema-MonitoringDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildMonitoringDestination();
      var od = new api.MonitoringDestination.fromJson(o.toJson());
      checkMonitoringDestination(od);
    });
  });


  unittest.group("obj-schema-OAuthRequirements", () {
    unittest.test("to-json--from-json", () {
      var o = buildOAuthRequirements();
      var od = new api.OAuthRequirements.fromJson(o.toJson());
      checkOAuthRequirements(od);
    });
  });


  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });


  unittest.group("obj-schema-OperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationMetadata();
      var od = new api.OperationMetadata.fromJson(o.toJson());
      checkOperationMetadata(od);
    });
  });


  unittest.group("obj-schema-Option", () {
    unittest.test("to-json--from-json", () {
      var o = buildOption();
      var od = new api.Option.fromJson(o.toJson());
      checkOption(od);
    });
  });


  unittest.group("obj-schema-Page", () {
    unittest.test("to-json--from-json", () {
      var o = buildPage();
      var od = new api.Page.fromJson(o.toJson());
      checkPage(od);
    });
  });


  unittest.group("obj-schema-PublishedService", () {
    unittest.test("to-json--from-json", () {
      var o = buildPublishedService();
      var od = new api.PublishedService.fromJson(o.toJson());
      checkPublishedService(od);
    });
  });


  unittest.group("obj-schema-Quota", () {
    unittest.test("to-json--from-json", () {
      var o = buildQuota();
      var od = new api.Quota.fromJson(o.toJson());
      checkQuota(od);
    });
  });


  unittest.group("obj-schema-QuotaLimit", () {
    unittest.test("to-json--from-json", () {
      var o = buildQuotaLimit();
      var od = new api.QuotaLimit.fromJson(o.toJson());
      checkQuotaLimit(od);
    });
  });


  unittest.group("obj-schema-SearchServicesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchServicesResponse();
      var od = new api.SearchServicesResponse.fromJson(o.toJson());
      checkSearchServicesResponse(od);
    });
  });


  unittest.group("obj-schema-Service", () {
    unittest.test("to-json--from-json", () {
      var o = buildService();
      var od = new api.Service.fromJson(o.toJson());
      checkService(od);
    });
  });


  unittest.group("obj-schema-SourceContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourceContext();
      var od = new api.SourceContext.fromJson(o.toJson());
      checkSourceContext(od);
    });
  });


  unittest.group("obj-schema-SourceInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourceInfo();
      var od = new api.SourceInfo.fromJson(o.toJson());
      checkSourceInfo(od);
    });
  });


  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });


  unittest.group("obj-schema-Step", () {
    unittest.test("to-json--from-json", () {
      var o = buildStep();
      var od = new api.Step.fromJson(o.toJson());
      checkStep(od);
    });
  });


  unittest.group("obj-schema-SystemParameter", () {
    unittest.test("to-json--from-json", () {
      var o = buildSystemParameter();
      var od = new api.SystemParameter.fromJson(o.toJson());
      checkSystemParameter(od);
    });
  });


  unittest.group("obj-schema-SystemParameterRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildSystemParameterRule();
      var od = new api.SystemParameterRule.fromJson(o.toJson());
      checkSystemParameterRule(od);
    });
  });


  unittest.group("obj-schema-SystemParameters", () {
    unittest.test("to-json--from-json", () {
      var o = buildSystemParameters();
      var od = new api.SystemParameters.fromJson(o.toJson());
      checkSystemParameters(od);
    });
  });


  unittest.group("obj-schema-Type", () {
    unittest.test("to-json--from-json", () {
      var o = buildType();
      var od = new api.Type.fromJson(o.toJson());
      checkType(od);
    });
  });


  unittest.group("obj-schema-Usage", () {
    unittest.test("to-json--from-json", () {
      var o = buildUsage();
      var od = new api.Usage.fromJson(o.toJson());
      checkUsage(od);
    });
  });


  unittest.group("obj-schema-UsageRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildUsageRule();
      var od = new api.UsageRule.fromJson(o.toJson());
      checkUsageRule(od);
    });
  });


  unittest.group("obj-schema-Visibility", () {
    unittest.test("to-json--from-json", () {
      var o = buildVisibility();
      var od = new api.Visibility.fromJson(o.toJson());
      checkVisibility(od);
    });
  });


  unittest.group("obj-schema-VisibilityRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildVisibilityRule();
      var od = new api.VisibilityRule.fromJson(o.toJson());
      checkVisibilityRule(od);
    });
  });


  unittest.group("resource-ProjectsServicesResourceApi", () {
    unittest.test("method--disable", () {

      var mock = new HttpServerMock();
      api.ProjectsServicesResourceApi res = new api.ServiceuserApi(mock).projects.services;
      var arg_request = buildDisableServiceRequest();
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DisableServiceRequest.fromJson(json);
        checkDisableServiceRequest(obj);

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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.disable(arg_request, arg_name).then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--enable", () {

      var mock = new HttpServerMock();
      api.ProjectsServicesResourceApi res = new api.ServiceuserApi(mock).projects.services;
      var arg_request = buildEnableServiceRequest();
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.EnableServiceRequest.fromJson(json);
        checkEnableServiceRequest(obj);

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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.enable(arg_request, arg_name).then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsServicesResourceApi res = new api.ServiceuserApi(mock).projects.services;
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
        var resp = convert.JSON.encode(buildListEnabledServicesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_parent, pageToken: arg_pageToken, pageSize: arg_pageSize).then(unittest.expectAsync1(((api.ListEnabledServicesResponse response) {
        checkListEnabledServicesResponse(response);
      })));
    });

  });


  unittest.group("resource-ServicesResourceApi", () {
    unittest.test("method--search", () {

      var mock = new HttpServerMock();
      api.ServicesResourceApi res = new api.ServiceuserApi(mock).services;
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("v1/services:search"));
        pathOffset += 18;

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
        var resp = convert.JSON.encode(buildSearchServicesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.search(pageToken: arg_pageToken, pageSize: arg_pageSize).then(unittest.expectAsync1(((api.SearchServicesResponse response) {
        checkSearchServicesResponse(response);
      })));
    });

  });


}

