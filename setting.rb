system('
if [ -f ~/Rakefile ] ; then
  echo "already exists ~/Rakefile"
fi
if [ ! -f ~/Rakefile ] ; then
  ln -s ${PWD}/Rakefile ~/
  echo "make symbolic link of [Rakefile] at your home directory(~/)"
fi
if [ -d ~/init_dir ] || [ -L ~/init_dir ] ; then
  echo "already exists ~/init_dir/"
fi
if [ ! -d ~/init_dir ] && [ ! -L ~/init_dir ]; then
  ln -s ${PWD} ~/
  echo "make symbolic link of [init_dir/] at your home directory(~/)"
fi
')
