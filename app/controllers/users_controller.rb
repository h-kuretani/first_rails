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
		# O/Rマッパー（Object Relational マッピング）
		# オブジェクトのデータをデータベースに登録できる
		# 裏側で勝手にSQLを発行してくれる
		# user = User.new(name: params[:user][:name], age: params[:user][:age], hobby: params[:user][:hobby])
		# user.save
		# if User.create(name: params[:user][:name], age: params[:user][:age], hobby: params[:user][:hobby])
		# 	puts "保存成功"
		# end
		puts "保存成功" if User.create(name: params[:user][:name], age: params[:user][:age], hobby: params[:user][:hobby])
	end

	def update

	end

	def destroy

	end

end
