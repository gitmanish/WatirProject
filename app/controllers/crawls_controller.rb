class CrawlsController < ApplicationController


 def gotoUrl
    url = params[:url]
    browser = Watir::Safari.new
    if url !=''
      browser.goto url
    end
    @returned = browser.html
  end


def clickLink
    browser = Watir::Safari.new
    filter=params[:filter]
    if filter != ''
      begin
        browser.link(:text,filter).click
        @returned = browser.html
      rescue
        @returned = "Link Not Found."
      end
    end
  end
end
