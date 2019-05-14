module API
  module V1
    class  OneHundredPeople < Grape::API
      before do
        header "Access-Control-Allow-Origin", "*"
      end
      resource :one_hundred_people do
        desc 'GET /api/v1/one_hundred_people/'
        get '/' do
          OneHundredPerson.all
        end
        desc 'GET /api/v1/one_hundred_people/{:id}'
        params do
          requires :id, type: Integer, desc: 'one_hundred_person id'
        end
        get ':id' do
          OneHundredPerson.find(params[:id])
        end
        desc 'POST /api/v1/one_hundred_people/'
        params do
          requires :kami, type: String, desc: "上の句"
          requires :simo, type: String, desc: "下の句"
          optional :kami_kana, type: String, desc: "上の句（読み）"
          optional :simo_kana, type: String, desc: "上の句（読み）"
          optional :author, type: String, desc: "作者"
        end
        post do
          OneHundredPerson.create!({
            kami: params[:kami],
            simo: params[:simo],
            kami_kana: params[:kami_kana],
            simo_kana: params[:simo_kana],
            author: params[:author]
          })
        end
        desc 'PUT /api/v1/one_hundred_people/{:id}'
        params do
          requires :id, type: Integer, desc: 'one_hundred_person id'
          optional :kami, type: String, desc: "上の句"
          optional :simo, type: String, desc: "下の句"
          optional :kami_kana, type: String, desc: "上の句（読み）"
          optional :simo_kana, type: String, desc: "上の句（読み）"
          optional :author, type: String, desc: "作者"
        end
        put ':id' do
          OneHundredPerson.find(params[:id]).update!({
            kami: params[:kami],
            simo: params[:simo],
            kami_kana: params[:kami_kana],
            simo_kana: params[:simo_kana],
            author: params[:author]
          })
        end
        desc 'DELETE /api/v1/one_hundred_people/{:id}'
        params do
          requires :id, type: Integer, desc: 'one_hundred_person id'
        end
        delete ':id' do
          OneHundredPerson.find(params[:id]).destroy
        end
      end
    end
  end
end
