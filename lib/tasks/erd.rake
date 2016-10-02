# Adopted from my coworker Daniel's code.
desc "Generates and opens the erd picture"
task erd: :environment do
  Rake::Task["erd:generate"].invoke
  Rake::Task["erd:open"].invoke
end

namespace :erd do
  desc "Opens the erd picture"
  task open: :environment do
    system %{open "erd/erd.jpg"}
  end

  desc "Generates the erd picture"
  task generate: :environment do
    `bundle exec erd`
  end
end
