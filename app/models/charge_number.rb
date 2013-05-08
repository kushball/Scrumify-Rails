class ChargeNumber < ActiveRecord::Base
  belongs_to :group
  has_many :time_logs, :dependent => :destroy
 
  attr_accessible :group_id, :name, :description

  # Call on group creation, makes default charge numbers for a group.
  def self.default_charge_numbers(group_id)
    chnum = ChargeNumber.new(:name => "-S2012-CSE110-00", :description => "Hours spent in lecture.", :group_id => group_id)
    chnum.save
    chnum = ChargeNumber.new(:name => "-S2012-CSE110-01", :description => "Hours spent on customer meetings.", :group_id => group_id)
    chnum.save
    chnum = ChargeNumber.new(:name => "-S2012-CSE110-02", :description => "Hours spent in scheduled all-hands labs.", :group_id => group_id)
    chnum.save
    chnum = ChargeNumber.new(:name => "-S2012-CSE110-03", :description => "Hours spent reading/researching technology.", :group_id => group_id)
    chnum.save
    chnum = ChargeNumber.new(:name => "-S2012-CSE110-04", :description => "Hours spent on use cases/user story.", :group_id => group_id)
    chnum.save
    chnum = ChargeNumber.new(:name => "-S2012-CSE110-05", :description => "Hours spent on requirements.", :group_id => group_id)
    chnum.save
    chnum = ChargeNumber.new(:name => "-S2012-CSE110-06", :description => "Hours spent on design.", :group_id => group_id)
    chnum.save
    chnum = ChargeNumber.new(:name => "-S2012-CSE110-07", :description => "Hours spent on coding.", :group_id => group_id)
    chnum.save
    chnum = ChargeNumber.new(:name => "-S2012-CSE110-08", :description => "Hours spent on testing.", :group_id => group_id)
    chnum.save
    chnum = ChargeNumber.new(:name => "-S2012-CSE110-09", :description => "Hours spent on code reviews.", :group_id => group_id)
    chnum.save
    chnum = ChargeNumber.new(:name => "-S2012-CSE110-10", :description => "Hours spent on delivery preparation.", :group_id => group_id)
    chnum.save
  end


end
