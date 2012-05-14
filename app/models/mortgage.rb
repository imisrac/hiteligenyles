class Mortgage < ActiveRecord::Base
  attr_accessible :addexpense, :addincome, :city, :door, :floor, :number, :postcode, :street, :value, :housemortgage

  validate :postcode, presence: true, length: {minimum: 4, maximum: 4}
  validate :city, presence: true
  validate :street, presence: true
  validate :number, presence: true
  validate :value, presence: true
end
