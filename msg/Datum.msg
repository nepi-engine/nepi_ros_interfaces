# This message type is used for a single data entry

string name
string display_name
string description

# Control Type string options ["Trigger","Bool", "Bools", "String", "Strings",
#               "Int","IntDouble","IntTriple", "Ints",
#               "Float","FloatDouble","FloatTriple","Floats",
#               "ColorRGB"]
string type

int32 round_value

# Display Settings
bool hidden
string display_type
bool display_row
int32 round_display
string[] labels
string[] display_options

# String values are encoded by Sender using nepi_controls sdk module

string[] default
string[] value



