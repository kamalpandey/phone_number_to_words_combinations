# frozen_string_literal: true

INVALID_ERR_MSG = 'Invalid Phone Number'

module Exceptions
  # Raise exception for invalid phone number
  class InvalidPhoneNumber < StandardError
    def initialize(msg = INVALID_ERR_MSG)
      super(msg)
    end
  end
end
