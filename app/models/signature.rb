class Signature < ActiveRecord::Base
	set_table_name "signature"
	set_primary_key "rule_id"

	has_and_belongs_to_many :categories, :join_table => "signature_category_mapping",
										 :foreign_key => "rule_id",
										 :association_foreign_key => "cat_id"

end
