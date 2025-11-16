kanata() {
    # Path to your Kanata executable and config
    local kanata_bin="/mnt/c/Users/GeirGarðarsson/kanata/kanata_winIOv2.exe"
    local kanata_cfg="$HOME/kanata/kanata.kbd"
    local log_file="/tmp/kanata.log"

    case "$1" in
        up)
            if pgrep -f "$kanata_bin" >/dev/null; then
                echo "[Kanata] Already running."
            else
                echo "[Kanata] Starting..."
                nohup "$kanata_bin" -c "$kanata_cfg" > "$log_file" 2>&1 &
                sleep 0.2
                echo "[Kanata] Started. Logs: $log_file"
                cat $log_file
            fi
            ;;
        down)
            echo "[Kanata] Searching for kanata processes..."
            local pids=$(tasklist.exe 2>/dev/null | grep -i kanata | awk '{print $2}')
            if [[ -n "$pids" ]]; then
                echo "[Kanata] Found processes, stopping..."
                echo "$pids" | while read -r pid; do
                    taskkill.exe /F /PID "$pid" 2>/dev/null
                done
                echo "[Kanata] Stopped."
            else
                echo "[Kanata] Not running."
            fi
            ;;
        status)
            local pids=$(tasklist.exe 2>/dev/null | grep -i kanata | awk '{print $2}')
            if [[ -n "$pids" ]]; then
                echo "[Kanata] Running (PIDs: $(echo $pids | tr '\n' ' '))"
            else
                echo "[Kanata] Not running."
            fi
            ;;
        *)
            echo "Usage: kanata {up|down|status}"
            ;;
    esac
}

