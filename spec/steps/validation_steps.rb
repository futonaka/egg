step %(:label ボタンが表示されている) do |label|
  expect(page.find_button(label)).to be_truthy
end

step %(:text と表示されている) do |text|
  expect(page).to have_content(text)
end

step %(:text が :cnt 個表示されている) do |text, cnt|
  expect(page).to have_content(text, count: cnt)
end

step %(:text と表示されていない) do |text|
  expect(page).not_to have_content(text)
end

step %(ページタイトルに :title と表示されている) do |title|
  expect(page).to have_title(title)
end

step %(ページタイトルに :title と表示されていない) do |title|
  expect(page).not_to have_title(title)
end

step %(CSVファイルが出力される) do
  expect(page.response_headers['Content-Type']).to eq 'text/csv'
  expect(CSV.parse(page.body)).to be_a(Array)
end

step %(ファイル :filename がダウンロードされる) do |filename|
  expect(page.response_headers['Content-Disposition']).to include(%(filename="#{filename}"))
end

step %(セレクトボックス :selectbox に :item がある) do |selectbox, item|
  expect(page).to have_select(selectbox, with_options: item)
end

