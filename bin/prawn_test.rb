require 'prawn'

pdf = Prawn::Document.new
pdf.text 'Hello, Ginza.rb!'
pdf.render_file 'hello.pdf'
