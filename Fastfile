def root_path
    Dir.pwd.sub(/.*\Kfastlane/, '').sub(/.*\Kandroid/, '').sub(/.*\Kios/, '').sub(/.*\K\/\//, '')
end
  
  # Have an easy way to run flutter tasks on the root of the project
lane :sh_on_root do |options|
    command = options[:command]
    sh("cd #{root_path} && #{command}")
end

default_platform(:android)

platform :android do
    lane :fetch_dependencies do
        sh_on_root(command: "flutter pub get")
    end

    lane :lint do
        sh_on_root(command: "flutter analyze")
    end

end