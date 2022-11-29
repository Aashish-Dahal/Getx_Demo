class Validator {
  static String? validateTitle(String? value) {
    if (value!.isEmpty) {
      return "Title is required";
    }
    if (value.length < 3) {
      return "Title must be at least 3 characters";
    }
    return null;
  }

  static String? validateSubtitle(String? value) {
    if (value!.isEmpty) {
      return "Subtitle is required";
    }
    if (value.length < 3) {
      return "Subtitle must be at least 3 characters";
    }
    return null;
  }
}
