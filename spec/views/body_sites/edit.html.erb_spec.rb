# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'body_sites/edit', type: :view do
  before(:each) do
    @body_site = assign(:body_site, FactoryBot.create(:body_site, region: 'torso'))
  end

  it 'renders the edit body_site form' do
    render

    assert_select 'form[action=?][method=?]', body_site_path(@body_site), 'post' do
      assert_select 'input[name=?]', 'body_site[identifier]'

      assert_select 'input[name=?]', 'body_site[name]'

      assert_select 'input[name=?]', 'body_site[region]'
    end
  end
end
