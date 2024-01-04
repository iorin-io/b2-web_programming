# Set the working application directory
# working_directory "/path/to/your/app"
working_directory "/home/iori/b2-web_programming"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "/home/iori/b2-web_programming/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/logs/unicorn.log"
# stdout_path "/path/to/logs/unicorn.log"
stderr_path "/home/iori/b2-web_programming/logs/unicorn.log"
stdout_path "/home/iori/b2-web_programming/logs/unicorn.log"

# Unicorn socket
# listen "/tmp/unicorn.[app name].sock"
listen "/tmp/unicorn.b2webprogramming.sock"

# Number of processes
worker_processes 4

# Time-out
timeout 30