# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'body_sites/show', type: :view do
  before(:each) do
    @body_site = assign(:body_site, FactoryBot.create(:body_site, region: 'torso'))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Identifier/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Region/)
  end
end
