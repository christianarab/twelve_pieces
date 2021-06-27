# NOTES ON VALIDATION
#
# VALIDATIONS
# Validations are used to ensure that only valid data is saved into your database.
# They are database agnostic, cannot be bypassed by end users.
#
# ACTIVE RECORD VALIDATION
# When you create a fresh object, for example using the new method, that object does not belong to the database yet. Once you call save upon that object it will be saved into the appropriate database table. Active Record uses the new_record? 
# instance method to determine whether an object is already in the database or not.
# There are methods that skip validations, user beware. List on https://guides.rubyonrails.org/active_record_validations.html
#
# VALID? INVALID?
# valid? triggers your validations and returns true if no errors were found in the object, and false otherwise.
# any errors found can be accessed through the errors instance method, which returns a collection of errors.
#
# ERRORS[]
# Returns an array of errors for given attributes.
#
# VALIDATION HELPERS - ACCEPTANCE, VALIDATES_ASSOCIATED, CONFIRMATION, EXCLUSION, FORMAT, 
# INCLUSION, LENGTH, NUMERICALITY, PRESENCE, ABSENCE, UNIQUENESS, VALIDATES_WITH, VALIDATES_EACH
# ALLOW_NIL, ALLOW_BLANK, MESSAGE, ON
# Active Record comes with pre-defined validation helpers. 
# TODO!! Write up on each validation helper
#
# CONDITIONAL VALIDATION
# Can be done with if: and unless:.
# TODO!! Study more about conditional validations.
#
# DISPLAYING VALIDATION ERRORS
# Can be displayed through "web form" using <% if @article.errors.any? %>,  <% @article.errors.each do |error| %> i><%= error.full_message %></li> 
#
class Article < ApplicationRecord
  has_many :comments
  # Adds validation to fields title and body with presence, and length helpers.
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
