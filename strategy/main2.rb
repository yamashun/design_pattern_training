require './report_2.rb'

report = Report2.new(&HTML_FORMATTER)
report.output_report

report.formatter = PLANE_TEXT_FORMATTER
report.output_report