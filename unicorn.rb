# @dirは自分の環境に書き換えること
@dir = '/Users/Mac/sdwork/aiff_upload_app/'

worker_processes 2
working_directory @dir
preload_app true
timeout 30
listen "#{@dir}/tmp/aiff_upload_app.sock", :backlog => 64
pid "#{@dir}/tmp/pids/unicorn.pid"
stderr_path "#{@dir}/log/unicorn.stderr.log"
stdout_path "#{@dir}/log/unicorn.stdout.log"
