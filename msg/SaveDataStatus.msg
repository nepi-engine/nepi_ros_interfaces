# The current_data_dir field provides the current directory to which NEPI data products are saved
string current_data_dir

# The filename prefixe added to NEPI data product save files
string current_filename_prefix

# Save Data Configs is a string of a list of node available data products and their current configured save rate.
# Save Data Configs msg format = str(["data_product_name", "##", "data_product_name", "##", ...])
# Save rates = 0 will not save when saving is enabled
string save_data_configs

# The save_data field indicates whether captured data is currently being saved in continuous fashion. The
# save-data-next control does not affect this field
SaveData save_data
