# The current_data_dir field provides the current directory to which NEPI data products are saved
string current_data_dir

# The filename prefix folder added to base data directory 
string current_folder_prefix

# The filename prefix added to NEPI data product save files
string current_filename_prefix

# Array of data product names
nepi_ros_interfaces/SaveDataRate[] save_data_rates

# The save_data field indicates whether captured data is currently being saved in continuous fashion. The
# save-data-next control does not affect this field
SaveData save_data
