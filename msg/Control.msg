# Control Message

string name
string display_name
string description

# Control Type string options ["Menu","Selection","Selections","Trigger", "Toggle", "Toggles", "String", "Int","Float","FloatSlider","RangeSlider"]
string type
bool param
int32 round_value

float32 min_bound
float32 max_bound


# RUI Settings
bool hidden
bool disabled
int32 round_display
string[] labels

# String values are encoded by Sender using nepi_controls sdk module
string[] options
string[] default
string[] value
