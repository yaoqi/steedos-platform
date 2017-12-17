Creator.Objects.crm_contacts = 
	name: "crm_contacts"
	icon: "contact"
	fields:
		name: 
			type: "text"
			defaultValue: ""
			description: ""
			inlineHelpText: ""
			required: true
		description: 
			type: "textarea"
		customer_id: 
			type: "master_detail"
			reference_to: "crm_customers"
		birthdate: 
			type: "date"
		title:
			type: "text"
		department:
			type: "text"
		email:
			type: "text"
		phone:
			type: "text"
		home_phone:
			type: "text"
		other_phone:
			type: "text"

	list_views:
		default:
			columns: ["name", "customer_id", "last_viewed"]
		recent:
			filter_scope: "all"
		all:
			filter_scope: "all"
			columns: ["name", "description", "modified", "owner"]
		mine:
			filter_scope: "mine"

	permissions:
		default:
			allowCreate: true
			allowDelete: true
			allowEdit: true
			allowRead: true
			modifyAllRecords: false
			viewAllRecords: false 