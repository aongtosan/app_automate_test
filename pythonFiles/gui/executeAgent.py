from robot import run


import tkinter as tk

def on_button_click():
    # Run the .robot test file
    run(".\\Robots\\poc\\rest_api_test.robot")
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



