class Claim < ActiveRecord::Base
  attr_accessible :birth, :claimmoney, :duration, :mothersname, :name, :salary

  VALID_NAME_REGEX = /\A([A-Z]\w+)( [A-Z]\w+)+\z/i
  validates :name, presence: true, length: {maximum: 50}, format: {with: VALID_NAME_REGEX}
  validates :mothersname, presence: true, length: {maximum: 50}, format: {with: VALID_NAME_REGEX}
  validates :birth, presence: true
  validates :salary, presence: true
  validates :claimmoney, presence: true
  validates :duration, presence: true
end
