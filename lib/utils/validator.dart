class ValidationState {
  bool status;
  String? error;

  ValidationState({this.status = false, this.error});
}

class Validator {
  static final RegExp _emailRegExp = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  );

  static ValidationState validate(String input, {required List<String> rules}) {
    for (int i = 0; i < rules.length; i++) {
      final String rule = rules[i];
      if (rule == 'required') {
        if (input.trim() == '') {
          return ValidationState(error: 'This field is required');
        }
      }

      if (rule == 'email') {
        if (input == '') {
          return ValidationState(error: 'This field is required');
        }
        if (!_emailRegExp.hasMatch(input)) {
          return ValidationState(error: 'Email format is invalid');
        }
      }

      if (rule.startsWith("min:")) {
        try {
          int? letterCount = int.tryParse(rule.replaceAll("min:", ""));
          if (input.length < letterCount!) {
            return ValidationState(
                status: false,
                error: " should be min $letterCount character long");
          }
        } catch (_) {
          return ValidationState(status: false, error: " - $rule is incorrect");
        }
      }

      if (rule == 'number_only') {
        final RegExp regex = RegExp(r'(\d+)');
        if (!regex.hasMatch(input)) {
          // ignore: avoid_redundant_argument_values
          return ValidationState(status: false, error: 'Value is not a number');
        }
      }

      if (rule == 'mobile_number') {
        const String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
        final RegExp regExp = RegExp(pattern);
        if (input.isEmpty) {
          return ValidationState(error: 'Please enter mobile number');
        } else if (!regExp.hasMatch(input)) {
          return ValidationState(error: 'Please enter valid  mobile number');
        }
      }

      if (rule == 'pan') {
        final RegExp panregExp = RegExp(r'([A-Z]{5}[0-9]{4}[A-Z]{1})');
        if (input == '') {
          return ValidationState(error: 'This field is required');
        }
        if (!panregExp.hasMatch(input)) {
          return ValidationState(error: 'Invalid PAN');
        }
      }

      if (rule == 'aadhar') {
        final RegExp aadharregExp =
            RegExp(r'(^[2-9]{1}[0-9]{3}[0-9]{4}[0-9]{4}$)');
        if (input == '') {
          return ValidationState(error: 'This field is required');
        }
        if (!aadharregExp.hasMatch(input)) {
          return ValidationState(error: 'Invalid Aadhar');
        }
      }

      if (rule == 'password') {
        final RegExp aadharregExp = RegExp(
            r'(^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$)');
        if (input == '') {
          return ValidationState(
              error:
                  'Password should be Minimum eight characters, at least one uppercase letter, one lowercase letter, one number and one special character');
        }
        if (!aadharregExp.hasMatch(input)) {
          return ValidationState(error: 'Incorrect format');
        }
      }
    }

    return ValidationState(status: true);
  }
}
