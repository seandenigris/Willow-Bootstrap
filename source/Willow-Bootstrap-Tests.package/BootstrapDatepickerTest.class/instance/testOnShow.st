tests-Events
testOnShow

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker onShow: JSFunction new ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker().on("show",function(){});</script>'