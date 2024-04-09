class GoodQuote < ApplicationRecord
  after_create :react_to_new_record

  private

  def react_to_new_record
    ReactToNewRecordJob.perform_later(id)
  end
end
