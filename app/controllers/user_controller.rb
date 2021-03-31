class UserController < ApplicationController
  require 'rest-client'
  require 'json'
  require_relative '../models/user.rb'

  helper_method :all

  def create
    @user = User.new
  end

  def index
    puts "test"
=begin
    # API endpoint
    url = 'https://randomuser.me/api/?results=12'
    response = RestClient.get(url) 
    # array to store the response
    results = JSON.parse(response.body)
    userList=[]
    results['results'].each { |result|
        firstuser = User.new(result['name']['title'].capitalize,result['name']['first'].capitalize,result['name']['last'].capitalize)
            #:photo_url => result['picture']['medium']
        userList += [firstuser]
    }
    @UserList = userList
    @Random = RandomUsers.generate
=end
    @result = RandomUserGenerator.generate(results: 2)
    @result.each { |result|
       @user=User.new(result['name']['title'].capitalize,result['name']['first'].capitalize,result['name']['last'].capitalize,result['location']['street'],result['phone'],result['email'],result['picture']['medium'])
    }
    
  end


end
