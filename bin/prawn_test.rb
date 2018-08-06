require 'prawn'

pdf = Prawn::Document.new

# テキスト出力
pdf.text 'Hello, Ginza.rb!'

# 画像出力
pdf.image '60th.jpg', width: 150

# フォント指定してテキスト出力
font_file = '/Users/ken1flan/Library/Fonts/07やさしさゴシックボールド.ttf'
title = '第60回 RubyKaigi 2018を肴に一杯呑もう！'
pdf.font(font_file) do
  pdf.text title
end

# PDF作成
pdf.render_file 'hello.pdf'
