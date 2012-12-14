class UserController < ApplicationController
  def index
  	user = User.new
	user.username = "Brusmax"
	user.firstname = "Rod"
	user.lastname = "Quiue"
	user.age = 15
	user.save

	user = User.where( username: "Brusmax")
	abort(user.to_json)
  end
end
