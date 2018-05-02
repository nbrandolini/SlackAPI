class Channel

  # to keep the actions
  # Keep the options in here just in case we will need them later

  attr_reader :name, :id

  def initialize(name, id, options = { })
    @name = name
    @id = id

  end


end
