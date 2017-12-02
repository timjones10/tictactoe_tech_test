class Field

attr_reader :content

  def initialize(content = '_')
    @content = content
  end

  def update_content(content)
    @content = content
  end

end
