
tell application "Contacts"
	
	log "begin"
	
	set peopleToChange to people
	
	repeat with thisPerson in peopleToChange
		if birth date of thisPerson is not missing value then
			set theDialogText to (first name of thisPerson) & " " & (last name of thisPerson)
			display dialog theDialogText buttons {"Remove Birthday", "Keep Birthday"} default button "Keep Birthday"
			if result = {button returned:"Remove Birthday"} then
				delete birth date of thisPerson
				save
			end if
		end if
	end repeat
end tell
