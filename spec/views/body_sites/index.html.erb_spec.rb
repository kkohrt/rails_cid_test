# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'body_sites/index', type: :view do
  before do
    assign(
      :body_sites,
      [
        FactoryBot.create(:body_site, region: 'torso'),
        FactoryBot.create(:body_site, region: 'leg')
      ]
    )
  end

  it 'renders a list of body_sites with attribute name headers' do
    render
    assert_select 'tr>th', text: 'Identifier'.to_s, count: 1
    assert_select 'tr>th', text: 'Name'.to_s, count: 1
    assert_select 'tr>th', text: 'Region'.to_s, count: 1
  end

  it 'includes data from body_sites records' do
    render
    body_site = BodySite.first
    assert_select 'tr>td', text: body_site.identifier.to_s, count: 1
    assert_select 'tr>td', text: body_site.name.to_s, count: 1
    assert_select 'tr>td', text: body_site.region.to_s, count: 1
  end
end
