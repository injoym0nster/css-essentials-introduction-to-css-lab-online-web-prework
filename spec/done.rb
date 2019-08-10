results = validator.validate_text(File.read('./style.css'))
      expect(results.validity).to be(true), results.errors.map { |err| "Error on line #{err.line}" }.join(', ')

    end 
      Link tag by car=>stay back when I put you
    end
  end

  context 'within index.html' do
    

    it 'contains a <link> tag' do
      link = parsed_html.search('link')[0]
      expect(link).to_not be_nil, "No <link> tag was found"
    end
    

    it 'correctly links to the style.css file with a relative path' do
      link = parsed_html.search('link')[0]
      expect(link).to_not be_nil, "No <link> tag was found"
      expect(link.attributes["href"]).to match(/\.\/style\.css/), "Make sure you provide a relative path to style.css from index.html"
    end
    

  end
  
  


  context 'within style.css' do
    it 'sets body background to #00b3e6' do
      selector = parsed_css.find_by_selector('body')[0]
@@ -53,7 +53,7 @@
      selector = parsed_css.find_by_selector('div')[0]
      expect(selector).to include('padding: 30px;'), "Missing properly formatted padding declaration"
    end
    # 
    #
    it 'sets #main-header font size to 22px' do
      selector = parsed_css.find_by_selector('#main-header')[0]
      expect(selector).to include("font-size: 22px;"), "Missing properly formatted font-size declaration"
@@ -63,7 +63,7 @@
      selector = parsed_css.find_by_selector('.perspective-questions')[0]
      expect(selector).to include("font-style: italic"), "Missing properly formatted font-style declaration"
    end
  

  end
  

end
