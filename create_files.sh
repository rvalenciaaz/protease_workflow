#!/bin/bash

# Create the scripts directory if it doesn't exist
mkdir -p scripts

# Navigate to the scripts directory
cd scripts

# List of script files to create
files=(
    "download_genomes.sh"
    "organize_genomes.sh"
    "run_prokka.sh"
    "collect_proteomes.sh"
    "prepare_database.sh"
    "run_blastp.sh"
    "filter_blast_results.sh"
    "extract_protease_candidates.sh"
    "run_interproscan.sh"
    "run_signalp.sh"
    "extract_signal_peptides.py"
    "run_alphafold.sh"
    "populate_database.py"
    "dimension_reduction.R"
    "deploy_web_interface.sh"
    "protease_analysis_dag.py"
    "parse_signalp_results.py"
    "signalp_visualization.R"
    "create_presence_absence_matrix.py"
    "statistical_analysis.R"
    "functional_enrichment.R"
    "heatmap_visualization.R"
    "phylogenetic_analysis.sh"
)

# Loop through the list and create each file
for file in "${files[@]}"; do
    touch "$file"
    echo "Created file: $file"
done

# Navigate back to the project root directory
cd ..

echo "All files have been created in the 'scripts' directory."
