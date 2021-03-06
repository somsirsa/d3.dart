library d3.src.js.array;

import 'dart:js';
import 'd3.dart';

JsObject _d3 = context['d3'];

/// Compare two values for sorting.
ascending(a, b) => _d3.callMethod('ascending', [a, b]);

/// Compare two values for sorting.
descending(a, b) => _d3.callMethod('descending', [a, b]);

/// Find the minimum value in an array.
min(List array, [/*Function*/ accessor = undefined]) {
  var args = [new JsObject.jsify(array)];
  if (accessor != undefined) {
    args.add(func3VarArgs(accessor));
  }
  return _d3.callMethod('min', args);
}

/// Find the maximum value in an array.
max(List array, [Function accessor = undefined]) {
  var args = [new JsObject.jsify(array)];
  if (accessor != undefined) {
    args.add(func3VarArgs(accessor));
  }
  return _d3.callMethod('max', args);
}

/// Find the minimum and maximum value in an array.
extent(List array, [/*Function*/ accessor = undefined]) {
  var args = [new JsObject.jsify(array)];
  if (accessor != undefined) {
    args.add(func3VarArgs(accessor));
  }
  return _d3.callMethod('extent', args);
}

/// Compute the sum of an array of numbers.
sum(List array, [/*Function*/ accessor = undefined]) {
  var args = [new JsObject.jsify(array)];
  if (accessor != undefined) {
    args.add(func3VarArgs(accessor));
  }
  return _d3.callMethod('sum', args);
}

/// Compute the arithmetic mean of an array of numbers.
mean(List array, [/*Function*/ accessor = undefined]) {
  var args = [new JsObject.jsify(array)];
  if (accessor != undefined) {
    args.add(func3VarArgs(accessor));
  }
  return _d3.callMethod('mean', args);
}

/// Compute the median of an array of numbers (the 0.5-quantile).
median(List array, [/*Function*/ accessor = undefined]) {
  var args = [new JsObject.jsify(array)];
  if (accessor != undefined) {
    args.add(func3VarArgs(accessor));
  }
  return _d3.callMethod('median', args);
}

/// Compute a quantile for a sorted array of numbers.
quantile(List<num> numbers, num p) {
  return _d3.callMethod('quantile', [new JsObject.jsify(numbers), p]);
}

/// Compute the variance of an array of numbers.
variance(List array, [/*Function*/ accessor = undefined]) {
  var args = [new JsObject.jsify(array)];
  if (accessor != undefined) {
    args.add(func3VarArgs(accessor));
  }
  return _d3.callMethod('variance', args);
}

/// Compute the standard deviation of an array of numbers.
deviation(List array, [/*Function*/ accessor = undefined]) {
  var args = [new JsObject.jsify(array)];
  if (accessor != undefined) {
    args.add(func3VarArgs(accessor));
  }
  return _d3.callMethod('deviation', args);
}

/// Search for a value in a sorted array.
bisectLeft(List array, x, [/*int*/ lo = undefined, /*int*/ hi = undefined]) {
  var args = [new JsObject.jsify(array), x];
  if (lo != undefined) {
    args.add(lo);
  }
  if (hi != undefined) {
    args.add(hi);
  }
  return _d3.callMethod('bisectLeft', args);
}

/// Search for a value in a sorted array.
bisect(List array, x, [/*int*/ lo = undefined, /*int*/ hi = undefined]) {
  var args = [new JsObject.jsify(array), x];
  if (lo != undefined) {
    args.add(lo);
  }
  if (hi != undefined) {
    args.add(hi);
  }
  return _d3.callMethod('bisect', args);
}

/// Search for a value in a sorted array.
bisectRight(List array, x, [/*int*/ lo = undefined, /*int*/ hi = undefined]) {
  var args = [new JsObject.jsify(array), x];
  if (lo != undefined) {
    args.add(lo);
  }
  if (hi != undefined) {
    args.add(hi);
  }
  return _d3.callMethod('bisectRight', args);
}

/// Bisect using an accessor or comparator.
bisector(accessor(v)) {
  return _d3.callMethod('bisector', [accessor]);
}

/// Randomize the order of an array.
shuffle(List array, [/*int*/ lo = undefined, /*int*/ hi = undefined]) {
  var args = [new JsObject.jsify(array)];
  if (lo != undefined) {
    args.add(lo);
  }
  if (hi != undefined) {
    args.add(hi);
  }
  return _d3.callMethod('shuffle', args);
}

/// List the keys of an associative array.
keys(object) => _d3.callMethod('keys', [object]);

/// List the values of an associated array.
values(object) => _d3.callMethod('values', [object]);

/// List the key-value entries of an associative array.
entries(object) => _d3.callMethod('entries', [object]);

/// Merge multiple arrays into one array.
merge(List arrays) => _d3.callMethod('merge', [new JsObject.jsify(arrays)]);

/// Generate a range of numeric values.
range([start = undefined, stop = undefined, step = undefined]) {
  var args = [];
  if (start != undefined) {
    args.add(start);
  }
  if (stop != undefined) {
    args.add(stop);
  }
  if (step != undefined) {
    args.add(step);
  }
  return _d3.callMethod('range', args);
}

/// Reorder an array of elements according to an array of indexes.
permute(List array, List<int> indexes) {
  return _d3.callMethod(
      'permute', [new JsObject.jsify(array), new JsObject.jsify(indexes)]);
}

/// Transpose a variable number of arrays.
zip(List arrays) => _d3.callMethod('zip', [new JsObject.jsify(arrays)]);

/// Transpose an array of arrays.
transpose(List<List> matrix) {
  return _d3.callMethod('transpose', [new JsObject.jsify(matrix)]);
}

/// Returns an array of adjacent pairs of elements.
pairs(List array) {
  return _d3.callMethod('pairs', [new JsObject.jsify(array)]);
}

/// Group array elements hierarchically.
Nest nest() => new Nest._(_d3.callMethod('nest'));

class Nest {
  final JsObject _proxy;

  Nest._(this._proxy);

  factory Nest() => nest();

  /// Add a level to the nest hierarchy.
  key(String function(a)) {
    return new Nest._(_proxy.callMethod('key', [function]));
  }

  /// Sort the current nest level by key.
  sortKeys(Function comparator) {
    return new Nest._(_proxy.callMethod('sortKeys', [comparator]));
  }

  /// Sort the leaf nest level by value.
  sortValues(Function comparator) {
    return new Nest._(_proxy.callMethod('sortValues', [comparator]));
  }

  /// Specify a rollup function for leaf values.
  rollup(Function function) {
    return new Nest._(_proxy.callMethod('rollup', [function]));
  }

  /// Evaluate the nest operator, returning an associative array.
  map(List array, [/*Function*/ mapType = undefined]) {
    var args = [new JsObject.jsify(array)];
    if (mapType != undefined) {
      args.add(mapType);
    }
    return _proxy.callMethod('map', args);
  }

  /// Evaluate the nest operator, returning an array of key-values tuples.
  List entries(List array) {
    return _proxy.callMethod('entries', [new JsObject.jsify(array)]);
  }
}

D3Map map([object = undefined, key = undefined]) {
  var args = [];
  if (object != undefined) {
    args.add(object);
  }
  if (key != undefined) {
    args.add(key);
  }
  return new D3Map._(_d3.callMethod('map', args));
}

class D3Map {
  final JsObject _proxy;

  D3Map._(this._proxy);

  factory D3Map([object = undefined, key = undefined]) => map(object, key);

  has(key) => _proxy.callMethod('has', [key]);

  get(key) => _proxy.callMethod('get', [key]);

  set(key, value) => _proxy.callMethod('set', [key, value]);

  remove(key) => _proxy.callMethod('remove', [key]);

  keys() => _proxy.callMethod('keys');

  values() => _proxy.callMethod('values');

  entries() => _proxy.callMethod('entries');

  forEach(function) => _proxy.callMethod('forEach', [function]);

  bool empty() => _proxy.callMethod('empty');

  int size() => _proxy.callMethod('size');
}

/*
D3Set set([array]) {
  return _d3.callMethod('', []);
}

class D3Set {
  final JsObject _proxy;

  has(value) {
    return _proxy.callMethod('', []);
  }

  add(value) {
    return _proxy.callMethod('', []);
  }

  remove(value) {
    return _proxy.callMethod('', []);
  }

  values() {
    return _proxy.callMethod('', []);
  }

  forEach(function) {
    return _proxy.callMethod('', []);
  }

  bool empty() {
    return _proxy.callMethod('', []);
  }

  int size() {
    return _proxy.callMethod('', []);
  }
}
*/
