# makefile_example
"An example makefile for compiling latex pdf with R script dependencies"

# test cases.

1. latex change only should not recompile all rscripts and outputs

2. a change to rscripts with no dependencies should only trigger that r script

3. a change to an rscipt that has output used by other rscipt should trigger that script and all downstream scripts

4. a change to an rscipt the depends on the output of another rscript should first trigger the other rscipt
