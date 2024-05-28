((abstract_class_declaration
	name: (type_identifier) @class-name
	body: (class_body)) @scope-root)

((class_declaration
	name: (type_identifier) @class-name
	body: (class_body)) @scope-root)

((method_definition
	name: (property_identifier) @method-name
	body: (statement_block)) @scope-root)

((public_field_definition
	name: (property_identifier) @method-name
	value: (arrow_function)) @scope-root)

((variable_declarator
	name: (identifier) @function-name
	value: (arrow_function)) @scope-root)

((assignment_expression
   (member_expression
     property: (property_identifier) @function-name)
   right: (arrow_function)) @scope-root)

((if_statement
  condition: (parenthesized_expression) @if-statement
  ) @scope-root)

((for_in_statement
  body: (statement_block) @for-statement
  ) @scope-root)

((for_in_statement
  body: (expression_statement) @for-statement
  ) @scope-root)

((variable_declarator
  name: (identifier) @object-name
  value: (object)
  ) @scope-root)

((variable_declarator
  name: (identifier) @object-name
  value: (as_expression (object))
  ) @scope-root)

((type_alias_declaration
  name: (type_identifier) @type-name
  ) @scope-root)
