module ProductsHelper
  def tag_links(tags)
    tags.split(",").map{|tag| link_to "##{tag.strip}", tag_path(tag.strip) }.join(", ") 
  end
  def list_tag_links(tags)
    tags.split(",").map{|tag| link_to "##{tag.strip}", list_tag_path(tag.strip) }.join(", ") 
  end
end
