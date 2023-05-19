///
//  Generated code. Do not modify.
//  source: time_series_analyzer.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'time_series_analyzer.pb.dart' as $0;
export 'time_series_analyzer.pb.dart';

class STPSDAnalyzerServiceClient extends $grpc.Client {
  static final _$analyzeSTPSD =
      $grpc.ClientMethod<$0.TimeSeriesData, $0.STPSDDataPoint>(
          '/time_series_analyzer.STPSDAnalyzerService/analyzeSTPSD',
          ($0.TimeSeriesData value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.STPSDDataPoint.fromBuffer(value));
  static final _$stopAnalysis = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/time_series_analyzer.STPSDAnalyzerService/stopAnalysis',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  STPSDAnalyzerServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.STPSDDataPoint> analyzeSTPSD(
      $0.TimeSeriesData request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$analyzeSTPSD, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> stopAnalysis($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$stopAnalysis, request, options: options);
  }
}

abstract class STPSDAnalyzerServiceBase extends $grpc.Service {
  $core.String get $name => 'time_series_analyzer.STPSDAnalyzerService';

  STPSDAnalyzerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.TimeSeriesData, $0.STPSDDataPoint>(
        'analyzeSTPSD',
        analyzeSTPSD_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.TimeSeriesData.fromBuffer(value),
        ($0.STPSDDataPoint value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'stopAnalysis',
        stopAnalysis_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Stream<$0.STPSDDataPoint> analyzeSTPSD_Pre(
      $grpc.ServiceCall call, $async.Future<$0.TimeSeriesData> request) async* {
    yield* analyzeSTPSD(call, await request);
  }

  $async.Future<$0.Empty> stopAnalysis_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return stopAnalysis(call, await request);
  }

  $async.Stream<$0.STPSDDataPoint> analyzeSTPSD(
      $grpc.ServiceCall call, $0.TimeSeriesData request);
  $async.Future<$0.Empty> stopAnalysis(
      $grpc.ServiceCall call, $0.Empty request);
}
