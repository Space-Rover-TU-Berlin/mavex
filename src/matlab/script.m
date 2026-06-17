disp("hello world")

// This script captures video from the webcam, classifies each frame using a pre-trained ResNet-50 model, and displays the video feed with the predicted label as the title.
cam = webcam;
net = resnet50;

while true
    frame = snapshot(cam);
    img = imresize(frame, [224 224]);
    label = classify(net, img);
    imshow(frame);
    title(string(label));
end
