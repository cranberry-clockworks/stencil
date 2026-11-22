;; extends

(class_declaration name: (identifier) @type.definition)
(interface_declaration name: (identifier) @type.definition)
(struct_declaration name: (identifier) @type.definition)
(enum_declaration name: (identifier) @type.definition)
(record_declaration name: (identifier) @type.definition)
(delegate_declaration name: (identifier) @type.definition)
(type_parameter name: (identifier) @type.definition)

(field_declaration (variable_declaration (variable_declarator name: (identifier) @variable.definition)))
(event_field_declaration (variable_declaration (variable_declarator name: (identifier) @variable.definition)))
(property_declaration name: (identifier) @variable.definition)
(enum_member_declaration name: (identifier) @variable.definition)
