
class Challenge {
  String _name;
  String _description;
  List<String> _lessons;

  Challenge(this._name, this._description, this._lessons);

  String get name => _name;

  String get description => _description;

  List<String> get lessons => _lessons;

}