class foo(
  $my_repo = undef,
  $my_tag  = undef,
){
  @vcsrepo { $my_repo:
    path     => "/home/user/$my_repo",
    source   => 'git@github.com:7yl4r/$my_repo.git',
    ensure   => latest,
    provider => git,
  }
  realize Vcsrepo[$my_repo]

  # then declare resources specific to my_tag
}
