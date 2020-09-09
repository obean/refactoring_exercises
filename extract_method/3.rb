

def print(browser, window)
  safari_small_message = "You are using the Safari browser in a small window."
  not_safari_or_big_message = "You are not using the Safari browser or have a big window."
  win_size(window) && browser_type(browser) ? safaro_small_message : not_safari_or_big_message
end

def win_size(window)
  true if window.size < "768px"
end

def browser_type(browser)
  true if browser.type == "safari"
end
