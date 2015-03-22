step %(pryを呼び出す) do
  binding.pry
  puts ''
end

step %(表示する) do
  save_and_open_page
end
