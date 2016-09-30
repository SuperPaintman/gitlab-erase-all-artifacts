# $ gitlab-rails console
# irb(main):001:0>

Ci::Build.where.not(artifacts_file: nil).to_a.each do |build|
    puts "Erase build \##{build.id} artifacts #{build.erase_artifacts!}"
end