class Admin < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tasks
  has_many :comments, as: :author
end


require 'rails_helper'

RSpec.describe Admin, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
