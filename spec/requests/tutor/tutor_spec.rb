require 'swagger_helper'
# rubocop:disable Metrics/BlockLength
RSpec.describe '/tutors', type: :request do
  path '/tutors' do
    get('list tutors') do
      response(200, 'successful') do
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

    post('create tutor') do
      response(200, 'tutor added successfully') do
        consumes 'application/json'
        parameter name: :tutor, in: :body, schema: {
          type: :object,
          properties: {
            name: { type: :string },
            location: { type: :string },
            charges: { type: :integer },
            specialization: { type: :string },
            image: { type: :string }
          },
          required: %w[name location charges specialization image]
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

  path '/tutors/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show tutor') do
      response(200, 'successful') do
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

    patch('update tutor') do
      response(200, 'successful') do
        let(:id) { '123' }

        consumes 'application/json'
        parameter name: :tutor, in: :body, schema: {
          type: :object,
          properties: {
            name: { type: :string },
            location: { type: :string },
            charges: { type: :integer },
            specialization: { type: :string },
            image: { type: :string }
          },
          required: %w[name location charges specialization image]
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

    put('update tutor') do
      response(200, 'successful') do
        let(:id) { '123' }

        parameter name: :tutor, in: :body, schema: {
          type: :object,
          properties: {
            name: { type: :string },
            location: { type: :string },
            charges: { type: :integer },
            specialization: { type: :string },
            image: { type: :string }
          },
          required: %w[name location charges specialization image]
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

    delete('delete tutor') do
      response(200, 'successful') do
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
