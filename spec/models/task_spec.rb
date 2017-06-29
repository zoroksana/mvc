class Task < ApplicationRecord
  belongs_to :user
  belongs_to :admin, optional: true
  enum status: %i[active archived]
end


require 'rails_helper'

RSpec.describe Task, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
