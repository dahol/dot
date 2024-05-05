#!/bin/bash
# maybe

# Define paths to monitor
watch_paths=("./nvim" "./.zshrc")

# Loop to monitor multiple paths
for path in "${watch_paths[@]}"; do
    # Check if path exists before monitoring
    if [ -e "$path" ]; then
        # Run inotifywait in the background for each path
        inotifywait -m "$path" -e create -e modify -e delete --format '%w%f %e' |
        while read file event; do
            echo "Detected $event on $file. Triggering sync script..."
            # Path to your sync script
            ./sync.sh
        done &
    else
        echo "Warning: Path '$path' does not exist."
    fi
done

# Keep script running to monitor events
wait

