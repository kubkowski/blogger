require 'spec_helper'

describe Article do
  
	@article = Article.new(title: "Sample title", body: "Lorem ipsum")

  subject { @article }
  it { should respond_to(:title) }
  it { should respond_to(:body) }
  
end
