class UsersController < ApplicationController

	def index
		 #UserというMODELオブジェクトを作った
		#allがつくとDBに格納されている全てのデータを引っ張ってくるという意味になる
		# Userテーブルの全てのレコードを取得
		@users = User.all
	end

	def new
		#.newは新しいuserオブジェクトの生成
		@user = User.new
	end

	def edit

	end

	def show

	end

	def create
		puts "start".green
		#user = User.new(name:params[:user][:name],age:params[:user][:age],hobby[:user][:hobby])

		puts "success".red if User.create(users_params)

	end

	def update

	end

	def destroy

	end

	private

	def users_params
		params.require(:user).permit(:name, :age, :hobby)
		#params.require(:user).permit(:name, :age, :hobby)
	end
end