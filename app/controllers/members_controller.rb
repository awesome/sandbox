class MembersController < ApplicationController

	def new
		@member = Member.new
		@member.build_user
	end
  
  def edit
    @member = Member.find(params[:id])
  end

	def create
		@member = Member.new(params[:member])

	    respond_to do |format|
	      if @member.save
	        format.html { redirect_to main_path, notice: 'member was successfully created.' }
	        #format.json { render json: @member, status: :created, location: @member }
	      else
	        format.html { render action: "new" }
	        #format.json { render json: @member.errors, status: :unprocessable_entity }
	      end
	    end

	end

	def show
		@member = Member.find(params[:id])
	end

end
