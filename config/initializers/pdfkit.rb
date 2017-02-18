PDFKit.configure do |config|
 
  if ["development"].include?(Rails.env)
    #only if your are working on 32bit machine
    #config.wkhtmltopdf = Rails.root.join('bin', 'wkhtmltopdf-i386').to_s
  #else
    #if your site is hosted on heroku or any other hosting server which is 64bit
    config.wkhtmltopdf = { :exe_path => '/Users/PapeBarka/.rbenv/versions/2.2.3/lib/ruby/gems/2.2.0/gems/wkhtmltopdf-binary-0.12.3.1'}
  end
 
  config.default_options = {
    :encoding=>"UTF-8",
    :page_size=>"A4",
    :margin_top=>"0.25in",
    :margin_right=>"0.1in",
    :margin_bottom=>"0.25in",
    :margin_left=>"0.1in",
    :disable_smart_shrinking=> false
  }
end