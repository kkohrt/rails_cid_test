# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BodySitesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/body_sites').to route_to('body_sites#index')
    end

    it 'routes to #new' do
      expect(get: '/body_sites/new').to route_to('body_sites#new')
    end

    it 'routes to #show' do
      expect(get: '/body_sites/1').to route_to('body_sites#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/body_sites/1/edit').to route_to('body_sites#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/body_sites').to route_to('body_sites#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/body_sites/1').to route_to('body_sites#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/body_sites/1').to route_to('body_sites#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/body_sites/1').to route_to('body_sites#destroy', id: '1')
    end
  end
end
