import 'package:signals_core/signals_core.dart';
import 'package:test/test.dart';

void main() {
  group('AsyncSignal', () {
    test('data', () async {
      final s = asyncSignal(AsyncState<int>.data(0));
      expect(s.peek().isLoading, false);
      expect(s.peek().hasError, false);
      expect(s.peek().hasValue, true);
      expect(s.peek().requireValue, 0);
      expect(s.requireValue, 0);
    });

    test('error', () async {
      final s = asyncSignal(AsyncState<int>.error('error'));
      expect(s.peek().isLoading, false);
      expect(s.peek().hasError, true);
      expect(s.peek().hasValue, false);
      expect(s.peek().error, 'error');
    });

    test('loading', () async {
      final s = asyncSignal(AsyncState<int>.loading());
      expect(s.peek().isLoading, true);
      expect(s.peek().hasError, false);
      expect(s.peek().hasValue, false);
    });

    test('state', () async {
      final s = asyncSignal(AsyncState<int>.loading());
      expect(s().isLoading, true);
      s.setValue(0);
      expect(s().isLoading, false);
      expect(s().hasError, false);
      expect(s().hasValue, true);
      expect(s().requireValue, 0);
      expect(s.requireValue, 0);
      s.setError('error');
      expect(s().isLoading, false);
      expect(s().hasError, true);
      expect(s().hasValue, false);
      expect(s().error, 'error');
      s.setLoading();
      expect(s().isLoading, true);
      expect(s().hasError, false);
      expect(s().hasValue, false);
    });
  });
}
