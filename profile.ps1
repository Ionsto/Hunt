g++ *.cpp -o Hunter -std=c++17 -ffast-math -fopenmp -pg
Remove-Item Render\\* 
Remove-Item RenderImage\\* 
.\Hunter.exe
gprof Hunter gmon.out > analysis.txt
python.exe .\showrenderdata.py
