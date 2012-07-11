class CrawlsController < ApplicationController

  skip_before_filter:verify_authenticity_token
  require "watir-webdriver"

  def gotoUrl
    
    url = params[:url]
    browser = Watir::Browser.new :chrome
    if url != ''
      browser.goto url
    end
    @returned = browser.html
    
  end

  def clicklink
    
    browser = Watir::Browser.new :chrome
    filter = params[:filter]
    if filter != ''
        if browser.link(:text, filter).exists?
          begin
            browser.link(:text, filter).click
            @returned = browser.html
          rescue
            @returned = 'link not found!'
          end      
        elsif browser.button(:text, filter).exists?
          begin
            browser.button(:text, filter).click
            @returned = browser.html
          rescue
            @returned = 'button not found!'
          end 
        end
    end
  
  end
  
end
