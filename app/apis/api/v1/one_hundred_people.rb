module API
  module V1
    class  OneHundredPeople < Grape::API
      before do
        header "Access-Control-Allow-Origin", "*"
      end
      resource :one_hundred_people do
        desc 'GET /api/v1/one_hundred_people/'
        get '/' do
          present OneHundredPerson.all
        end
        desc 'GET /api/v1/one_hundred_people/{:id}'
        params do
          requires :id, type: Integer, desc: 'one_hundred_person id'
        end
        get ':id' do
          present OneHundredPerson.find(params[:id])
        end
      end
    end
  end
end
