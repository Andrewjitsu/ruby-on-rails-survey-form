class UsersController < ApplicationController
	def index
		if !session[:count]
			session[:count]=0
		end
	end
	def result
		if session[:count]
			session[:count]+=1
		end
		flash[:success]="Thanks for submitting this form! You have submitted this form #{session[:count]} times."
		session[:name]=params[:name]
		session[:location]=params[:location]
		session[:language]=params[:language]
		session[:comments]=params[:comments]
	end
		
end
