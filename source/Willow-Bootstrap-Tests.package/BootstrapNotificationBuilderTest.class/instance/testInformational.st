tests-Building
testInformational

	| notification html |

	notification := BootstrapNotificationBuilder new
		informational;
		buildApplying: CompositeComponentCommand empty.

	html := self render: notification.

	self assert: html equals: '<div class="alert alert-info" role="alert"></div>'