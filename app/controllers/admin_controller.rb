class AdminController < ApplicationController
	before_action :authenticate_user!,:except=>[:front_page]
	helper_method :full_name,:address
	
	def upload_note
		@enote = EnoteMaster.new
	end
	
	def create_enote
	@enote = EnoteMaster.new(enote_params)
	
	if @enote.save
		redirect_to :action=>"enote_index"
	else
		render :action=> "upload_note"		
	end
	
	end
	
	def buy_enote
		puts params[:enote_id]
		render :plain=>"Download enote"
	end
	

	
	private
	def enote_params
		params.require(:enote_master).permit(:title, :costing,:description, :expire_date,:file_type,:status)
    end
	
	def full_name
		return "Arvind Janvekar"
	end
	
	def address
		return "kolhapur"
	end
end
