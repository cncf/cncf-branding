require 'yaml'

File.open('./data/projects.yaml', 'r') do |f|
  projects = YAML.load(f)
  projects.each do |p|
    metadata = "---\ntitle: #{p['name']}\n---\n"
    dest_file = "./content/projects/#{p['tag']}.md"
    File.write(dest_file, metadata)
  end
end
