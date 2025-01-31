import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en')
  ];

  /// No description provided for @title.
  ///
  /// In en, this message translates to:
  /// **'Real EST'**
  String get title;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get login;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Let’s get Started'**
  String get getStarted;

  /// No description provided for @signup.
  ///
  /// In en, this message translates to:
  /// **'SIGN UP'**
  String get signup;

  /// No description provided for @signin.
  ///
  /// In en, this message translates to:
  /// **'SIGN IN'**
  String get signin;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password{arg}'**
  String password(Object arg);

  /// No description provided for @myProfile.
  ///
  /// In en, this message translates to:
  /// **'My Profile'**
  String get myProfile;

  /// No description provided for @preferences.
  ///
  /// In en, this message translates to:
  /// **'Preferences'**
  String get preferences;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get deleteAccount;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @enterPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter password'**
  String get enterPassword;

  /// No description provided for @dontHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don’t have an Account yet? '**
  String get dontHaveAccount;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAccount;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get email;

  /// No description provided for @enterEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter Email'**
  String get enterEmail;

  /// No description provided for @createPassword.
  ///
  /// In en, this message translates to:
  /// **'Create Password'**
  String get createPassword;

  /// No description provided for @instantLogin.
  ///
  /// In en, this message translates to:
  /// **'Instant Login'**
  String get instantLogin;

  /// No description provided for @google.
  ///
  /// In en, this message translates to:
  /// **'Google'**
  String get google;

  /// No description provided for @apple.
  ///
  /// In en, this message translates to:
  /// **'Apple'**
  String get apple;

  /// No description provided for @facebook.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome👋🏻'**
  String get welcome;

  /// No description provided for @welcomeName.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcomeName;

  /// No description provided for @whatdoUwant.
  ///
  /// In en, this message translates to:
  /// **'What would you like to do?'**
  String get whatdoUwant;

  /// No description provided for @learnMore.
  ///
  /// In en, this message translates to:
  /// **'Learn Now'**
  String get learnMore;

  /// No description provided for @pleaseWait.
  ///
  /// In en, this message translates to:
  /// **'Please wait...'**
  String get pleaseWait;

  /// No description provided for @thanksForReg.
  ///
  /// In en, this message translates to:
  /// **'Thanks for Registering!'**
  String get thanksForReg;

  /// No description provided for @accountCreated.
  ///
  /// In en, this message translates to:
  /// **'Your account has been successfully \ncreated'**
  String get accountCreated;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get firstName;

  /// No description provided for @enterHere.
  ///
  /// In en, this message translates to:
  /// **'Enter Here'**
  String get enterHere;

  /// No description provided for @invalidFirstName.
  ///
  /// In en, this message translates to:
  /// **'⛔ Invalid First Name'**
  String get invalidFirstName;

  /// No description provided for @invalidLastName.
  ///
  /// In en, this message translates to:
  /// **'⛔ Invalid Last Name'**
  String get invalidLastName;

  /// No description provided for @lastname.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get lastname;

  /// No description provided for @passwordRequirement.
  ///
  /// In en, this message translates to:
  /// **'Password requirements: '**
  String get passwordRequirement;

  /// No description provided for @uppercase.
  ///
  /// In en, this message translates to:
  /// **'Uppercase letter'**
  String get uppercase;

  /// No description provided for @containsNumber.
  ///
  /// In en, this message translates to:
  /// **'Contains a number'**
  String get containsNumber;

  /// No description provided for @specialChar.
  ///
  /// In en, this message translates to:
  /// **'Special character'**
  String get specialChar;

  /// No description provided for @atLeast8Char.
  ///
  /// In en, this message translates to:
  /// **'At least 8 characters'**
  String get atLeast8Char;

  /// No description provided for @bySigningUp.
  ///
  /// In en, this message translates to:
  /// **'By Signing up, you agree to the company '**
  String get bySigningUp;

  /// No description provided for @tAndC.
  ///
  /// In en, this message translates to:
  /// **'Term of Service and Privacy Policy.'**
  String get tAndC;

  /// No description provided for @goToDashboard.
  ///
  /// In en, this message translates to:
  /// **'Go to Dashboard'**
  String get goToDashboard;

  /// No description provided for @forgot.
  ///
  /// In en, this message translates to:
  /// **'Forgot '**
  String get forgot;

  /// No description provided for @selectedLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectedLanguage;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @proceed.
  ///
  /// In en, this message translates to:
  /// **'Proceed'**
  String get proceed;

  /// No description provided for @pleaseLogin.
  ///
  /// In en, this message translates to:
  /// **'Please login'**
  String get pleaseLogin;

  /// No description provided for @change.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get change;

  /// No description provided for @new1.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get new1;

  /// No description provided for @current.
  ///
  /// In en, this message translates to:
  /// **'Current'**
  String get current;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @reEnterNew.
  ///
  /// In en, this message translates to:
  /// **'Re-enter New'**
  String get reEnterNew;

  /// No description provided for @fnPassword.
  ///
  /// In en, this message translates to:
  /// **'{arg} Password'**
  String fnPassword(Object arg);

  /// No description provided for @verifyEmail.
  ///
  /// In en, this message translates to:
  /// **'Verify your email address'**
  String get verifyEmail;

  /// No description provided for @checkYourEmail.
  ///
  /// In en, this message translates to:
  /// **'Kindly check your mail, we have sent a \nverification link to your email'**
  String get checkYourEmail;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
