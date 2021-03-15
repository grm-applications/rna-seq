
module load roslin/python/3.8.1

git clone https://github.com/ewels/MultiQC.git
cd MultiQC
pip install .
cd ..
python ./modules/Python/multiqc_run.py

rm -rf MultiQC
mkdir MultiQC
mv multiqc_data ./MultiQC/multiqc_data
mv multiqc_report.html ./MultiQC/multiqc_report.html

module unload roslin/python/3.8.1
