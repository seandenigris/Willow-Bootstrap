tests-Options
testLanguage

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker language: 'de-DE' ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"language":"de-DE"});</script>'