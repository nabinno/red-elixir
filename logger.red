Red []

Logger: ctx [
	info: fn [message][
        logfile: []
		append logfile reduce [Date/_now message]
	]
]
