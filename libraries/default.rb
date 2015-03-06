def collectd_option(option)
  if option.kind_of? String
    "\"#{option}\""
  elsif option.kind_of? Array
    option.map { |o| collectd_option(o) }.join(" ")
  else
    option
  end
end
