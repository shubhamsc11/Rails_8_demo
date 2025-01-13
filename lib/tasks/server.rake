namespace :server do
  task :puma do
    exec "rails server puma"
  end

  task :unicorn do
    exec "rails server unicorn"
  end

  task :thin do
    exec "rails server thin"
  end
end
