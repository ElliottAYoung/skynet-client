class SkynetMethodError < NoMethodError
  def initialize(msg = "Incorrect Method Syntax. Method names Must Include '_'. Please see Documentation for more Information.")
    super
  end
end
