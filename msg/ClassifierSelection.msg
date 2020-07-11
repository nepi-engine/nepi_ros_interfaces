# This message provides the selection of an image topic and classifier to apply
# to that image topic.

# Image topic - topic to apply classifier to
string img_topic

# Classifier - one of the classifiers provided by the ImageClassifierListQuery
string classifier

# Probability threshold for detection (0.0 - 1.0; higher means more selective)
float32 detection_threshold
