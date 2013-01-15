class Logdata < ActiveRecord::Base
  attr_accessible :modification, :event

  def self.start_logging(content, event)
<<<<<<< HEAD
    Logdata.create!(:modification => content, :event => event)
=======
        @log_data = Logdata.new(:modification => content, :event => event)
        @log_data.save
>>>>>>> 2f6ffb6a96b638963dc85514c43df9b4a8d76df6
  end
end
