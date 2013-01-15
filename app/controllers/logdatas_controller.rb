class LogdatasController < ApplicationController
	def index
      @logs = Logdata.find(:all)
    end

    def delete
      Logdata.destroy_all()

      respond_to do |format|
        format.js # delete.js.erb
      end
    end
end
