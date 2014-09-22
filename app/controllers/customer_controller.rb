
    class CustomersController < ApplicationController
      	def new
			@customer = Customer.new
		end
		
		def create
			@customer = Customer.new(params[:user])
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
			render "show"
		end

      end
