require './formatter.rb'
require './html_formatter.rb'
require './plane_text_formatter.rb'
require './report.rb'

report = Report.new(HTMLFormatter.new)
report.output_report

report.formatter = PlaneTextFormatter.new
report.output_report