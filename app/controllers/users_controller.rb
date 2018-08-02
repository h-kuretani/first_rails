class UsersController < ApplicationController

	def index
		 #UserというMODELオブジェクトを作った
		#allがつくとDBに格納されている全てのデータを引っ張ってくるという意味になる
		@users = User.all
	end

	def new
		#.newは
		@user = User.new
	end

	def edit

	end

	def show

	end

	def create

	end

	def update

	end

	def destroy

	end

end
