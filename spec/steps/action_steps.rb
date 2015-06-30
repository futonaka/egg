step %(:url にアクセスする) do |url|
  visit url
end

step %(:text リンクをクリックする) do |text|
  click_link text
end

step %(:n 番目の :text リンクをクリックする) do |n, text|
  n = n.to_i - 1
  all(:link_or_button, text)[n].click
end

step %(:text ボタンをクリックする) do |text|
  click_button text
end

step %(:n 番目の :text ボタンをクリックする) do |n, text|
  n = n.to_i - 1
  all(:link_or_button, text)[n].click
end

step %(:field に :value を設定する) do |field, value|
  fill_in field, with: value
end

step %(:n 番目の :field に :value を設定する) do |n, field, value|
  fill_in field, with: value
end

step %(:option オプションの :value を選択する) do |option, value|
  select value, from: option
end

step %(:choice を選択する) do |choice|
  choose choice
end

step %(:choice をチェックする) do |choice|
  check choice
end

step %(:choice のチェックを外す) do |choice|
  uncheck choice
end

step %(:upload にファイル :file_path を添付する) do |upload, file_path|
  attach_file(upload, file_path)
end
