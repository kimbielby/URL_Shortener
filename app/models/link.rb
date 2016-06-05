class Link < ActiveRecord::Base
  def self.redirection(arg)
    link_id = Link.find_by(short_URL: arg).id
    original_link = Link.find_by(id: link_id).original_URL
    redirect_to 'http://' + original_link
  end
end
