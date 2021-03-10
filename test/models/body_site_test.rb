# == Schema Information
#
# Table name: body_sites
#
#  id         :bigint           not null, primary key
#  identifier :string           not null
#  name       :string           not null
#  region     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_body_sites_on_identifier  (identifier) UNIQUE
#  index_body_sites_on_name        (name) UNIQUE
#
require 'test_helper'

class BodySiteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
