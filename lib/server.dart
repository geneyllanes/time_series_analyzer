import 'dart:async';
import 'dart:math';
import 'package:fftea/fftea.dart';
import 'package:grpc/grpc.dart' as grpc;
import 'package:logging/logging.dart';
import 'package:time_series_analyzer/generated/time_series_analyzer.dart';

final Logger _logger = Logger('STPSDAnalyzer');

class STPSDAnalyzerService extends STPSDAnalyzerServiceBase {
  @override
  Stream<STPSDDataPoint> analyzeSTPSD(
      grpc.ServiceCall call, TimeSeriesData request) async* {
    final config = STPSDConfig()
      ..windowSize = 1
      ..overlap = 2;

    final windowSize = config.windowSize;
    final overlap = config.overlap;

    final int windowSamples = (windowSize * request.data.length).round();
    final int overlapSamples = (overlap * request.data.length).round();
    final int stepSize = windowSamples - overlapSamples;
    final int dataLength = request.data.length;

    for (var i = 0; i + windowSamples <= dataLength; i += stepSize) {
      final windowedData = request.data.sublist(i, i + windowSamples);
      final frequencies = calculateFrequencies(windowedData);
      final powerLevels = calculatePowerLevels(windowedData);

      yield STPSDDataPoint()
        ..frequencies.addAll(frequencies)
        ..powerLevels.addAll(powerLevels);
    }
  }

  List<double> calculateFrequencies(List<double> windowedData) {
    final int windowSize = windowedData.length;
    final frequencies = List<double>.filled(windowSize, 0.0);

    // Calculate the frequencies using the FFT
    final fft = FFT(windowedData.length);
    final spectrum = fft.realFft(windowedData);

    // Calculate the frequency resolution
    final frequencyResolution = 1 / windowSize;

    for (var i = 0; i < windowSize; i++) {
      frequencies[i] = i * frequencyResolution;
    }

    return frequencies;
  }

  List<double> calculatePowerLevels(List<double> windowedData) {
    // Calculate the power levels from the windowed data
    // (implementation omitted for brevity)
    throw UnimplementedError();
  }

  @override
  Future<Empty> stopAnalysis(grpc.ServiceCall call, Empty request) async {
    // Perform cleanup or stop any ongoing analysis
    throw UnimplementedError();
  }
}

class Server {
  static void configureLogger() {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((record) {
      print('${record.level.name}: ${record.time}: ${record.message}');
    });
  }

  static Future<void> main(List<String> args) async {
    configureLogger();

    final server = grpc.Server([STPSDAnalyzerService()]);
    await server.serve(port: 8081);
    _logger.info('Server listening on port ${server.port}...');
  }
}
