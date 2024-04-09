class ReactToNewRecordJob < ApplicationJob
  queue_as :default

  def perform(id)
    Rails.logger.info("Successfully reacted to new record #{id}")
  end
end
