if ENV['MY_WORDS_PROFILER_DISABLE'] == '1'
  Rack::MiniProfiler.config.auto_inject = false
elsif ENV['MY_WORDS_PROFILER_HIDDEN'] != '1'
  Rack::MiniProfiler.config.start_hidden = true
end
