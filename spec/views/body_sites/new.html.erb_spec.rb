# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'body_sites/new', type: :view do
  let(:body_site) { FactoryBot.build(:body_site, region: 'torso') }

  before(:each) { assign(:body_site, body_site) }

  it 'renders new body_site form' do
    render
    # expect(response.body.to_s).to eq 'foo'

    assert_select 'form[action=?][method=?]', body_sites_path, 'post' do
      assert_select 'input[name=?]', 'body_site[identifier]'

      assert_select 'input[name=?]', 'body_site[name]'

      assert_select 'input[name=?]', 'body_site[region]'
    end
  end
end
