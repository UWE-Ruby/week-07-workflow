require 'workflow'
#
# A technology is an invention, or any other asset held by the organization
# @api workflow
# @author Ivan Storck ivanoats@uw.edu
# @version 2.0a (dimitri)
#
class Technology
  include Workflow
  workflow do
    state :unapproved do
      event :approve, :transitions_to => :approved
    end
    state :approved do
      event :publish, :transitions_to => :published
      event :unapprove, :transitions_to => :unapproved
    end
    state :published do
      event :retire,  :transitions_to => :retired
    end
    state :retired
  end
 
  def approve
    puts 'technology is approved'
    # send an email or log to a file
  end

  def unapprove
    puts 'technology is unapproved'
  end
  
  def publish
    puts 'technology is published'
  end
  
  def retire
    puts 'technology is retired'
  end
  
end
