class Signature < ActiveRecord::Base
	self.table_name = "signature"
	self.primary_key = "rule_id"

	# Associations
	has_and_belongs_to_many :categories, :join_table => "signature_category_mapping",
										 :foreign_key => "rule_id",
										 :association_foreign_key => "cat_id"
	has_many :alerts, :foreign_key => "rule_id"

	# Scopes
	scope :order_by_alerts_count, joins(:alerts).select('signature.*, count(alert.id) as alert_count').group('signature.rule_id').order('alert_count DESC')

end
