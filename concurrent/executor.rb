include Java

import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors

service = Executors.new_fixed_thread_pool 10

20.times do |n|
  service.execute do
    start = Time.new
    puts "Processando..."
    puts "Tempo Thread #{n}: #{Time.new - start}"
  end
end

service.shutdown
service.await_termination 30, java.util.concurrent.TimeUnit::SECONDS
