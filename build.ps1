g++ *.cpp -o Hunter -std=c++17 -ffast-math -fopenmp
Remove-Item Render\\* 
Remove-Item RenderImage\\* 
.\Hunter.exe
python.exe .\showrenderdata.py
