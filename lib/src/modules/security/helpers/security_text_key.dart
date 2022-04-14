class SecurityTextKey {
  SecurityTextKey._();
  static const _securityKey = "App.modules.security.";
  static const changeNumber = _securityKey+"change.number";
  static const secretCode = _securityKey+"secret.code";
  static const validate = _securityKey+"validate";
  static const invalidCode = _securityKey+"invalid.code";
}