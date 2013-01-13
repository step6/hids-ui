class Category < ActiveRecord::Base
	self.table_name = "category"
	self.primary_key = "cat_id"

	has_and_belongs_to_many :rules, :class_name => "Signature",
									:join_table => "signature_category_mapping",
									:foreign_key => "cat_id",
									:association_foreign_key => "rule_id"

end
