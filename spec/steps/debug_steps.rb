step %(pryを呼び出す) do
  binding.pry
  puts ''
end

step %(表示する) do
  save_and_open_page
end

step %(スクリーンショットを :fine_name という名前で保存する) do |file_name|
  page.save_screenshot Rails.root.join("spec", "result", file_name)
end
