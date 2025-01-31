import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get title => 'Real EST';

  @override
  String get login => 'Sign in';

  @override
  String get getStarted => 'Let’s get Started';

  @override
  String get signup => 'SIGN UP';

  @override
  String get signin => 'SIGN IN';

  @override
  String get phoneNumber => 'Phone Number';

  @override
  String password(Object arg) {
    return 'Password$arg';
  }

  @override
  String get myProfile => 'My Profile';

  @override
  String get preferences => 'Preferences';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get deleteAccount => 'Delete Account';

  @override
  String get logout => 'Logout';

  @override
  String get enterPassword => 'Enter password';

  @override
  String get dontHaveAccount => 'Don’t have an Account yet? ';

  @override
  String get createAccount => 'Create Account';

  @override
  String get email => 'Email Address';

  @override
  String get enterEmail => 'Enter Email';

  @override
  String get createPassword => 'Create Password';

  @override
  String get instantLogin => 'Instant Login';

  @override
  String get google => 'Google';

  @override
  String get apple => 'Apple';

  @override
  String get facebook => 'Facebook';

  @override
  String get welcome => 'Welcome👋🏻';

  @override
  String get welcomeName => 'Welcome';

  @override
  String get whatdoUwant => 'What would you like to do?';

  @override
  String get learnMore => 'Learn Now';

  @override
  String get pleaseWait => 'Please wait...';

  @override
  String get thanksForReg => 'Thanks for Registering!';

  @override
  String get accountCreated => 'Your account has been successfully \ncreated';

  @override
  String get firstName => 'First Name';

  @override
  String get enterHere => 'Enter Here';

  @override
  String get invalidFirstName => '⛔ Invalid First Name';

  @override
  String get invalidLastName => '⛔ Invalid Last Name';

  @override
  String get lastname => 'Last Name';

  @override
  String get passwordRequirement => 'Password requirements: ';

  @override
  String get uppercase => 'Uppercase letter';

  @override
  String get containsNumber => 'Contains a number';

  @override
  String get specialChar => 'Special character';

  @override
  String get atLeast8Char => 'At least 8 characters';

  @override
  String get bySigningUp => 'By Signing up, you agree to the company ';

  @override
  String get tAndC => 'Term of Service and Privacy Policy.';

  @override
  String get goToDashboard => 'Go to Dashboard';

  @override
  String get forgot => 'Forgot ';

  @override
  String get selectedLanguage => 'Select Language';

  @override
  String get done => 'Done';

  @override
  String get proceed => 'Proceed';

  @override
  String get pleaseLogin => 'Please login';

  @override
  String get change => 'Change';

  @override
  String get new1 => 'New';

  @override
  String get current => 'Current';

  @override
  String get submit => 'Submit';

  @override
  String get update => 'Update';

  @override
  String get reEnterNew => 'Re-enter New';

  @override
  String fnPassword(Object arg) {
    return '$arg Password';
  }

  @override
  String get verifyEmail => 'Verify your email address';

  @override
  String get checkYourEmail => 'Kindly check your mail, we have sent a \nverification link to your email';
}
