tests-Supplying
testCheckboxUnlabeledOnModelOffModelApplying

	| supplier checkbox html |

	supplier := BootstrapComponentSupplier online.

	checkbox := supplier
		checkboxUnlabeledOnModel: 3
		offModel: 'the off'
		applying: (ComponentClassificationCommand toStyleWith: WillowCssStyles willow).

	html := self render: checkbox.

	self
		assert: html
		equals:
			'<input class="willow" checked="checked" name="1" type="checkbox"/><input name="2" type="hidden"/>'