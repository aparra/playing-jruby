include Java

import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors

service = Executors.new_fixed_thread_pool 10

for i in 1..20
  service.execute {
    start = Time.new
    puts "Processando..."
    puts "Tempo: #{Time.new - start}"
  }
end

service.shutdown
service.await_termination 30, java.util.concurrent.TimeUnit::SECONDS
