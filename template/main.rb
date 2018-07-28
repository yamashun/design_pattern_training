require('./report.rb')
require('./html_report.rb')
require('./plane_text_report.rb')

html_report = HTMLReport.new
html_report.output_report

plane_text_report = PlaneTextReport.new
plane_text_report.output_report