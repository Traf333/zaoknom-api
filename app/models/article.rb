class Article < ApplicationRecord

  scope :published, -> { where.not(published_at: nil) }


  def published=(value)
    self.published_at = value == 'true' ? Time.now : nil
  end
end
