require 'active_support/core_ext/string'
require 'rake'
class SunilCustomField
   def initialize(model,field_name,field_type)
	table_name="#{model}".downcase!	
	`rails g migration add_#{field_name}_to_#{table_name.pluralize} #{field_name}:#{field_type}`      
	`rake db:migrate`      			
	#{model}.reset_column_information
	return #{model}.column_names
   end  

private

def check_params
 raise if method(:initialize).arity != 3
end


end
