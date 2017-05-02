class SkynetResponseError < StandardError
  def initialize(msg = "An error has occurred on SkyNet. Please check the SkyNet logs for more Details.")
    super
  end
end
