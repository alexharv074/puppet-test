class foo () {
  define my_vcs_repo ($myRepo, $myTag) {
    vcsrepo { "$myRepo-$myTag":
      path     => "/home/user/$myRepo-$myTag",
      source   => "git@github.com:7yl4r/$myRepo.git",
      revision => 'production',  # aka branch
      ensure   => latest,
      provider => git,
    }
  }

  $data = [
    {
      myRepo => testRepo,
      myTag  => testTag1,
    },
    {
      myRepo => testRepo,
      myTag  => testTag2,
    },
  ]

  $data.each |$i, $ref| {
    $myRepo = $ref['myRepo']
    $myTag  = $ref['myTag']
    foo::my_vcs_repo { "$myRepo-$i":
      myRepo => $myRepo,
      myTag => $myTag,
    }
  }
}
