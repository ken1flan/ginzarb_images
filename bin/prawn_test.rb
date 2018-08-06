require 'prawn'

pdf = Prawn::Document.new

# テキスト出力
pdf.text 'Hello, Ginza.rb!'

font_file = '/Users/ken1flan/Library/Fonts/07やさしさゴシックボールド.ttf'
pdf.font(font_file) do # フォント指定してテキスト出力
  title = 'Ginza.rb 第60回 RubyKaigi 2018を肴に一杯呑もう！'
  image_file = '60th.jpg'
  pdf.rotate(90, origin: [200, 200]) do # 回転
    pdf.stroke_rectangle [350, 225], 100, 50 # 枠線
    pdf.image image_file, width: 150, at: [360, 205] # 画像出力
    pdf.draw_text title, size: 10, at: [360, 205] # テキスト出力
  end
end

# PDF作成
pdf.render_file 'hello.pdf'
