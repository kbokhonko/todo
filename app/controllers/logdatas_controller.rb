class LogdatasController < ApplicationController
	def index
      @logs = Logdata.find(:all)
    end

    def delete
      Logdata.destroy_all()
<<<<<<< HEAD

=======
 
>>>>>>> 2f6ffb6a96b638963dc85514c43df9b4a8d76df6
      respond_to do |format|
        format.js # delete.js.erb
      end
    end
end
