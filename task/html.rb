namespace :html do
  desc "create basic html directory set"
  task "basic" do
    MakeFile.create("index.html")
    dirs = %w|css js img|
    MakeDir.create(dirs)
    MakeFile.create("reset.css","css")
  end

  desc "create basic html directory set + jquery"
  task "jquery" do
    MakeFile.create("index-with-jquery.html")
    dirs = %w|css js img|
    MakeDir.create(dirs)
    MakeFile.create("reset.css","css")
    MakeFile.create("jquery-1.7.2.min.js","js")
  end

  desc "create twitter-boot-strap file and directory set + jquery"
  task "tbs" do
    MakeFile.create("index-with-tbs.html")
    dirs = %w|css js img|
    MakeDir.create(dirs)
    MakeFile.create("bootstrap.css","css")
    MakeFile.create("bootstrap.min.css","css")
    MakeFile.create("bootstrap-responsive.css","css")
    MakeFile.create("bootstrap-responsive.min.css","css")
    MakeFile.create("glyphicons-halflings-white.png","img")
    MakeFile.create("glyphicons-halflings.png","img")
    MakeFile.create("jquery-1.7.2.min.js","js")
    MakeFile.create("bootstrap.js","js")
    MakeFile.create("bootstrap.min.js","js")
  end
end
