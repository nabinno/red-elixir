Red []

Logger: context [
	info: function [message][
        logfile: []
		append logfile reduce [now message]
	]
]
