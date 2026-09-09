# Process Process Status Message

string STATE_LOADING=Loading
string STATE_LOADED=Loaded
string STATE_WAITING=Ready
string STATE_WAITING=Waiting
string STATE_LISTENING=Listening
string STATE_PROCESSING=Processing

string name
string group
string description

string node_name
string namespace

string save_data_topic
string config_topic

string[] data_products

#################
# Process States
#################
bool enabled
bool running
bool state
string msg_str


#################
# Process Settings
#################

bool has_process_reload
string[] available_processes
string selected_process
bool process_ready

bool has_controls
nepi_interfaces/ControlsStatus controls

string[] connected_source_topics

bool has_results
nepi_interfaces/DataStatus results

bool has_results_pub
string results_pub_namespace

bool has_image_pub
string image_pub_name
string[] image_pub_topics



###############
# Process Stats
###############

float32 avg_source_latency
float32 avg_source_rate

float32 avg_preprocess_latency
float32 avg_preprocess_rate
    
float32 avg_process_latency
float32 avg_process_rate

float32 max_process_rate


#################
# Management Settings
#################

##########
# Process
bool manages_processing
float32[] min_max_process_rates
float32 max_process_rate_hz

##########
# Sources
bool manages_sources
bool multi_source_enabled
bool auto_select_enabled
bool auto_select_active
string[] available_source_topics
string[] selected_sources
bool[] sources_connected
string[] sources_pub_namespaces

bool source_selected
bool source_connected

##########
# Imaging
bool manages_imaging
float32[] min_max_image_pub_rates
float32 max_image_pub_rate_hz


###############
# Display Controls
###############
bool show_enable
bool show_rates
bool show_selector
bool show_process
bool show_controls
bool show_data
bool show_results
bool show_stats
bool show_save_data
