require 'prawn'

pdf = Prawn::Document.new

# テキスト出力
pdf.text 'Hello, Ginza.rb!'

font_file = '/Users/ken1flan/Library/Fonts/07やさしさゴシックボールド.ttf'
pdf.font(font_file) do # フォント指定してテキスト出力
  title = '第60回 RubyKaigi 2018 を肴に 一杯呑もう！'
  image_file = '60th.jpg'
  pdf.rotate(90, origin: [100, 300]) do # 回転
    pdf.bounding_box([100, 300], width: 200, heignt: 200) do
      pdf.stroke_rectangle [0, 0], 200, 200 # 枠線
      pdf.image image_file, width: 150, at: [0, -20] # 画像出力
      # pdf.draw_text title, size: 10, at: [0, 0] # テキスト出力
      pdf.text title, size: 10 # テキスト出力
    end
  end
end

# PDF作成
pdf.render_file 'hello.pdf'
