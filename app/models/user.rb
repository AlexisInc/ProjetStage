Class User < ApplicationRecord

    attr_accessor :title, :first, :last, :address, :phone, :email, :picture

    def initialize(title,first,last)
        @title =title
        @first=first
        @last=last
        @address=address
        @phone=phone
        @email=email
        @picture=picture
    end

    def bonjour
        puts "bjr #{@title}. #{@first} #{@last}"
    end

