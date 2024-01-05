# Set the working application directory
# working_directory "/path/to/your/app"
working_directory "/var/www/b2-web_programming"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "/var/www/b2-web_programming/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/logs/unicorn.log"
# stdout_path "/path/to/logs/unicorn.log"
stderr_path "/var/www/b2-web_programming/logs/unicorn.log"
stdout_path "/var/www/b2-web_programming/logs/unicorn.log"

# Unicorn socket
# listen "/tmp/unicorn.[app name].sock"
listen 3000, tcp_nopush: true

# Number of processes
worker_processes 4

# Time-out
timeout 30