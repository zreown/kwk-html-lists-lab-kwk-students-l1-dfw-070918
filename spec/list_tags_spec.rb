require 'pry'

RSpec.describe 'index.html' do
  it 'contains a <ul> tag with at least three <li> tags' do
    ul = parsed_html.search('ul').first
    expect(ul).to_not be_nil, "The main <ul> tag is missing!"
    expect(html_file_contents).to include('</ul>'), "Don't forget to include a closing </ul>"
    
    children = ul.children.select {|child| child.name == "li"}
    expect(children.length).to be >= 3, "Your <ul> tag needs at least three nested <li> tags"

  end


  it 'contains a nested <ul> tag' do
    ul = parsed_html.search('ul').first
    children = ul.children.select {|child| child.name == "li"}
    subchildren = children.select {|child| child.children.length > 0}
    nested_ul = subchildren.any? {|sc| sc.children.any? {|ch| ch.name == "ul"}}

    expect(nested_ul).to be == true, "Add a nested <ul> tag inside one of the unordered <li>"
  end

  it 'contains a <ol> tag' do
    ol = parsed_html.search('ol').first
    expect(ol).to_not be_nil, "Your <ol> tag is missing"
    expect(html_file_contents).to include('</ol>'), "Don't forget to include a closing </ol>"

    children = ol.children.select {|child| child.name == "li"}
    expect(children.length).to be >= 3, "Your <ol> tag needs at least three nested <li> tags"

  end
end
