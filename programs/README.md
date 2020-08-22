# The program directory

All programs are here. 

## Quick start

Run 

`master.do`

in batch mode (or double-click, and "run" the do file).

## Details

The file `master.do` includes the `config.do`, which sets some parameters. You might need to configure some paths, depending on how you unzip the required data.

It then calls

- `$programs/00_setup_stata.do` to install any necessary packages (only needs to be run once, but can be re-run without problems)
- `$programs/01_dataclean.do` does the data readin and cleaning, and writes out the analysis file `$outputdata/pumsak.dta`
- `$programs/02_table1.do` does the analysis in the paper, creating the only table. Writes out LaTeX table to include in paper.




