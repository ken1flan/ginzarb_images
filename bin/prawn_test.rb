require 'prawn'

pdf = Prawn::Document.new

# テキスト出力
pdf.text 'Hello, Ginza.rb!'

# 画像出力
pdf.image '60th.jpg', width: 150

pdf.render_file 'hello.pdf'
