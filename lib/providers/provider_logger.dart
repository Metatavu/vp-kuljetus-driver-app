import "package:flutter/foundation.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";

class ProviderLoggerObserver extends ProviderObserver {
  @override
  void didAddProvider(
    final ProviderBase<Object?> provider,
    final Object? value,
    final ProviderContainer container,
  ) {
    if (kDebugMode) {
      print("Provider $provider was initialized with $value");
    }
  }

  @override
  void didDisposeProvider(
    final ProviderBase<Object?> provider,
    final ProviderContainer container,
  ) {
    if (kDebugMode) {
      print("Provider $provider was disposed");
    }
  }

  @override
  void didUpdateProvider(
    final ProviderBase<Object?> provider,
    final Object? previousValue,
    final Object? newValue,
    final ProviderContainer container,
  ) {
    if (kDebugMode) {
      print("Provider $provider updated from $previousValue to $newValue");
    }
  }

  @override
  void providerDidFail(
    final ProviderBase<Object?> provider,
    final Object error,
    final StackTrace stackTrace,
    final ProviderContainer container,
  ) {
    if (kDebugMode) {
      print("Provider $provider threw $error at $stackTrace");
    }
  }
}
