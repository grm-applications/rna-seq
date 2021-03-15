
module load roslin/python/3.8.1

git clone https://github.com/ewels/MultiQC.git
cd MultiQC
pip install .
cd ..
python ./modules/Python/multiqc_run.py
module unload roslin/python/3.8.1
