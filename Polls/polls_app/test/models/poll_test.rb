# == Schema Information
#
# Table name: polls
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#
require "test_helper"

class PollTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
