class Logdata < ActiveRecord::Base
  attr_accessible :modification, :event

  def self.start_logging(content, event)
        @log_data = Logdata.new(:modification => content, :event => event)
        @log_data.save
  end
end
