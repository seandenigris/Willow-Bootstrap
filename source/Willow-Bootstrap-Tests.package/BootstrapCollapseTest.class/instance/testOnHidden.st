tests-Events
testOnHidden

	| html |

	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onHiddenCollapse: JSFunction new) ].
	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("hidden.bs.collapse",function(){});</script>'