class Comment < ApplicationRecord
  belongs_to :author, polymorphic: true
end

require 'rails_helper'

RSpec.describe Comment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
