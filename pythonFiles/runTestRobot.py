from robot import run

# Run the .robot test file
test_file_path = "Robots/poc/window_app_test.robot"

# Output directory and other options
output_dir = "results"
library_path = ".\\libs\\*"

# Run the Robot Framework test
run(
    test_file_path,
    outputdir=output_dir,
    pythonpath=library_path,
    report="report.html",
    log="log.html",
    output="output.xml"
)

