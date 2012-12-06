class UserController < ApplicationController
  def index
  	user = User.new
	user.username = "mike"
	user.firstname = "Mike"
	user.lastname = "Boby"
	user.age = 44
	user.save

	user = User.where( username: "mike")
	abort(user.to_json)
  end
end
