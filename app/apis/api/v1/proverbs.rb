module API
  module V1
    class  Proverbs < Grape::API
      before do
        header "Access-Control-Allow-Origin", "*"
      end
      resource :proverbs do
        desc 'GET /api/v1/proverbs/'
        get '/' do
          present Proverb.all
        end
        desc 'GET /api/v1/proverbs/{:id}'
        # パラメータ設定
        params do
          # 必須項目
          requires :id, type: Integer, desc: 'proverb id'
        end
        get ':id' do
          present Proverb.find(params[:id])
        end
        desc 'PUT /api/v1/proverbs/{:id}'
        # パラメータ設定
        params do
          # 必須項目
          requires :id, type: Integer, desc: 'proverb id'
        end
        put ':id' do
          present Proverb.update(params[:id])
        end
        desc 'POST /api/v1/proverbs/create'
        # パラメータ設定
        params do
          # 必須項目
          requires :id, type: Integer, desc: 'proverb id'
        end
        post do
          present Proverb.create(params)
        end
      end
    end
  end
end
