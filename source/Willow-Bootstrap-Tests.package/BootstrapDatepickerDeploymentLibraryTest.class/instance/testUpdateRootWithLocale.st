tests
testUpdateRootWithLocale

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | (BootstrapDatepickerDeploymentLibrary using: (WALocale fromString: 'en-NZ')) updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-datepicker-1.7.0/css/bootstrap-datepicker3.min.css"/><script type="text/javascript" src="/files/bootstrap-datepicker-1.7.0/js/bootstrap-datepicker.min.js"></script><script type="text/javascript" src="/files/bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.en-NZ.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'