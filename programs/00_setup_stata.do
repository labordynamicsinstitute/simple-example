clear all
include "config.do"

cap mkdir $inputdata
cap mkdir $outputdata
cap mkdir $results
cap mkdir $adobase


program main
	* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	* Add required packages from SSC to this list
	* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	local ssc_packages ///
	    
    if !missing("`ssc_packages'") {
        foreach pkg in `ssc_packages' {
			capture which `pkg'
			if _rc == 111 {			
				dis "Installing `pkg'"
                quietly ssc install `pkg', replace
			}
        }
    }

    * Install packages using net
    capture which latab
	if _rc == 111 {
        quietly cap ado uninstall latab
        quietly net install  latab, from(http://fmwww.bc.edu/RePEc/bocode/l)
	}
end

main
