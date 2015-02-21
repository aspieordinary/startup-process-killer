

COLUMNS = [:USER, :PID, :CPU, :MEM, :VSZ, :RSS, :TT, :STAT, :STARTED, :TIME, :COMMAND]

processes = `ps aux | grep -i nomachine`.split("\n").map{|process| process.split(" ")}
processes.each{|process| `sudo kill -9 #{process[COLUMNS.index(:PID)].to_i}`}
