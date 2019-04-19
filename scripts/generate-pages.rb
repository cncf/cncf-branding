require 'yaml'

File.open('./data/projects.yaml', 'r') do |f|
  projects = YAML.load(f)
  projects.each do |p|
    metadata = "---\ntitle: #{p['name']}\n---\n"
    dest_file = "./content/projects/#{p['tag']}.md"

    File.open(dest_file, 'w') do |f|
      f.write(metadata)
    end
  end
end
