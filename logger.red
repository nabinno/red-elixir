Red []

logger: ctx [
	info: fn [message][
        logfile: []
		append logfile reduce [date/_now message]
	]
]
