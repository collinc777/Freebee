
module Api
  module V1

    class CustomerController < ApplicationController
      	def new
			@customer = Customer.new
		end
		
		def create
			@customer = Customer.new(params[:customer])
			if @customer.save
				flash[:notice] = "You signed up successfully"
				flash[:color]= "valid"
			else
				flash[:notice] = "Form is invalid"
				flash[:color]= "invalid"
			end
			render "new"
		end

		def show
			@customer=Customer.find_by_id(params[:id])
			render "show"
		end

      end
   end
end