from ultralytics import YOLO

def run_object_detection():
    # Load a model (pre-trained)
    model = YOLO("yolov5n.pt")

    # Run object detection with your desired parameters
    results = model(source=0, show=True, conf=0.4, save=True)

if __name__ == "__main__":
    run_object_detection()
