require 'swagger_helper'
# rubocop:disable Metrics/BlockLength
RSpec.describe '/appointments', type: :request do
  path '/users/{user_id}/appointments' do
    parameter name: 'user_id', in: :path, type: :string, description: 'user_id'

    get('list appointments') do
      response(200, 'successful') do
        let(:user_id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    post('create appointment') do
      response(200, 'successful') do
        let(:user_id) { '123' }

        consumes 'application/json'
        parameter name: :tutor, in: :body, schema: {
          type: :object,
          properties: {
            location: { type: :string },
            date: { type: :string },
            tutor_id: { type: :integer }
          },
          required: %w[location date]
        }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/users/{user_id}/appointments/{id}' do
    parameter name: 'user_id', in: :path, type: :string, description: 'user_id'
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show appointment') do
      response(200, 'successful') do
        let(:user_id) { '123' }
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    patch('update appointment') do
      response(200, 'successful') do
        let(:user_id) { '123' }
        let(:id) { '123' }

        consumes 'application/json'
        parameter name: :tutor, in: :body, schema: {
          type: :object,
          properties: {
            location: { type: :string },
            date: { type: :string },
            tutor_id: { type: :integer }
          },
          required: %w[location date]
        }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    put('update appointment') do
      response(200, 'successful') do
        let(:user_id) { '123' }
        let(:id) { '123' }

        consumes 'application/json'
        parameter name: :tutor, in: :body, schema: {
          type: :object,
          properties: {
            location: { type: :string },
            date: { type: :string },
            tutor_id: { type: :integer }
          },
          required: %w[location date]
        }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    delete('delete appointment') do
      response(200, 'successful') do
        let(:user_id) { '123' }
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/tutors/{tutor_id}/appointments' do
    # You'll want to customize the parameter types...
    parameter name: 'tutor_id', in: :path, type: :string, description: 'tutor_id'

    get('list appointments') do
      response(200, 'successful') do
        let(:tutor_id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '//tutors/{tutor_id}/appointments/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'tutor_id', in: :path, type: :string, description: 'tutor_id'
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show appointment') do
      response(200, 'successful') do
        let(:tutor_id) { '123' }
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end

# rubocop:enable Metrics/BlockLength
