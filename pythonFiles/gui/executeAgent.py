from robot import run


import tkinter as tk

def on_button_click():
    test_file_path = "Robots/poc/window_app_test.robot"

# Output directory and other options
    output_dir = "results"
    library_path = ".\\libs\\*"
    # Run the .robot test file
    run(
        test_file_path,
        outputdir=output_dir,
        pythonpath=library_path,
        report="report.html",
        log="log.html",
        output="output.xml"
    )
    print("RUN COMPLETE")

# Create the main window
root = tk.Tk()
root.title("Robot Framework GUI Demo App")
root.geometry("600x400")

# Add a label
label = tk.Label(root, text="Robot Framework GUI Demo App", font=("Arial", 14))
label.pack(pady=10)

# Add a button
button = tk.Button(root, text="start run robot framework", command=on_button_click)
button.pack(pady=10)

# Run the application
root.mainloop()



