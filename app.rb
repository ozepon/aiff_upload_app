class App < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  logger = Logger.new('app.log')

  # root
  get '/' do
    slim :index
    # 'hellossss'
  end

  # file upload
  post '/upload' do
    # tempfile削除
    # tempfile.close(true)

    aiff_path = "./aiff/"
    FileUtils.mkdir_p(aiff_path) unless FileTest.exist?(aiff_path)

    upload_file = "#{aiff_path}#{params[:file][:filename]}"

    begin
      File.open(upload_file, 'w') do |f|
        f.write params[:file][:tempfile].read
      end

      # ここにshellを指定する
      result = `echo 'hello'`
      logger.info "create #{upload_file}"
    rescue => e
      logger.warn e.message
      halt 500, '失敗っす'
    end
    data =  { message: 'upload 成功'}
    json data
  end
end
