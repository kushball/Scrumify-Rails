class EmailFormatValidator < ActiveModel::EachValidator
  def validate_each(object, attribute, value)
    unless value =~ /\A([\w\.%\+\-]+)@ucsd.edu/i || value =~ /hendrik@annighoefer.net/i || value =~ /khbrewd@gmail.com/i || value =~ /robertacoelineves@gmail.com/i || value =~ /vanessa.eckert@web.de/i || value =~ /seature@gmail.com/i || value =~ /dotcom900825@gmail.com/i
      object.errors[attribute] << (options[:message] || "must be a UCSD email address")
    end
  end
end