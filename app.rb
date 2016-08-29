class App < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  logger = Logger.new('./log/app.log')

  # root
  get '/' do
    slim :index
    # 'hellossss'
  end

  # file upload
  post '/upload' do
    # aiff以外弾く
    halt 415, 'aiffファイルを設定してください' unless params[:file][:type] == 'audio/aiff'


    aiff_path = "./aiff/"
    FileUtils.mkdir_p(aiff_path) unless FileTest.exist?(aiff_path)

    upload_file = "#{aiff_path}#{params[:file][:filename]}"

    begin
      File.open(upload_file, 'w') do |f|
        f.write params[:file][:tempfile].read
      end

      # ここにshellを指定する
      # result = `echo "hello #{1 + 1}"`
      result = `./honoka_ga_make_mix_human_voice.sh #{upload_file}`

      if $? === 0
        puts result
        logger.info "create #{upload_file}"
        logger.info "create #{upload_file}_all.aiff"
      else
        logger.warn result
        halt 500, '失敗っす'
      end
    rescue => e
      logger.warn e.message
      halt 500, '失敗っす'
    end

    # response
    status 200
    content_type :json, :charset => 'utf-8'
    data =  { message: 'upload 成功'}
    data.to_json
  end
end
