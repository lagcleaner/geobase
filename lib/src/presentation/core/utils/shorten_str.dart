String shortenStr(String strRaw, {int strLimit = 10, bool addDots = false}) {
  final max = strLimit < strRaw.length ? strLimit : strRaw.length;
  final str = strRaw.substring(0, max);
  if (addDots && strRaw.length > max) return '$str...';
  return str;
}
