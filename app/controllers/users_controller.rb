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
		@user = User.find(params[:id])
	end

	def show

	end

	def create
		puts "start".red
		#user = User.new(name:params[:user][:name],age:params[:user][:age],hobby[:user][:hobby])
		# user = User.new(name: params[:user][:name], age: params[:user][:age], hobby: params[:user][:hobby])
		# user.save
		#if User.create(name:params[:user][:name],age:params[:user][:age],hobby[:user][:hobby])
		# if User.create(name: params[:user][:name], age: params[:user][:age], hobby: params[:user][:hobby])
		# 	puts "保存成功"
		# end
		puts "success".green if User.create(users_params)

	end

	def update
		user = User.find(params[:id])
		user.update(users_params)
	end

	def destroy

	end

	private

	def users_params
		params.require(:user).permit(:name, :age, :hobby)
		#params.require(:user).permit(:name, :age, :hobby)
	end
end
