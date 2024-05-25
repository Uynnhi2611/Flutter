class algorithm {
  String decodeSequence(String encoded) {
    for (int i = 0; i < encoded.length; i++) {
      if (i + 9 < encoded.length && encoded.substring(i, i + 10).split('').toSet().length == 1) {
        return '';
      }
    }

    if (encoded.length <= 3 || encoded.length > 200) {
      return encoded;
    }

    String decoded = '';
    int i = 0;

    while (i < encoded.length) {
      int count = int.parse(encoded[i++]);
      String digit = encoded[i++];

      for (int j = 0; j < count; j++) {
        decoded += digit;
      }
    }

    if (decoded.length > 200) {
      return '';
    }

    return decodeSequence(decoded);
  }
}
