### https://github.com/qiao-xin/DupGen_finder

export PATH=".../01_software/DupGen_finder/:$PATH"

target_species=Cbi
outgroup_species=Nve
data_directory=cbi-nve
output_directory=cbi-nve
match_size=5
maximum_distance=10
match_score=50
e_value=1e-05
max_gaps=25
overlap_window=5
#gap_penalty=-1

DupGen_finder.pl -i ${data_directory} -t ${target_species} -c ${outgroup_species} -o ${output_directory} -d ${maximum_distance} -k ${match_score} -s ${match_size} -e ${e_value} -m ${max_gaps} -w ${overlap_window}
DupGen_finder-unique.pl -i ${data_directory} -t ${target_species} -c ${outgroup_species} -o ${output_directory} -d ${maximum_distance} -k ${match_score} -s ${match_size} -e ${e_value} -m ${max_gaps} -w ${overlap_window}


