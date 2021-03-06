#!/bin/bash
# LinuxGSM check_executable.sh function
# Author: Daniel Gibbs
# Website: https://linuxgsm.com
# Description: Checks if server executable exists.

local commandname="CHECK"
local function_selfname="$(basename "$(readlink -f "${BASH_SOURCE[0]}")")"

# Check if executable exists
if [ ! -f "${executabledir}/${execname}" ]; then
	fn_print_fail_nl "executable was not found:"
	echo " * ${executabledir}/${execname}"
	if [ -d "${lgsmlogdir}" ]; then
		fn_script_log_fatal "Executable was not found: ${executabledir}/${execname}"
	fi
	core_exit.sh
fi
