class test (
	exec { 'certbot_nginx' :
		command => 'for file in $(find /tmp/alex -type f); do if [ "$(grep "renew_hook = service nginx reload" $file)" != "renew_hook = service nginx reload" ]; then sed -i 's/\(\[renewalparams\]\)/\1\nrenew_hook = service nginx reload/' $file; fi; done',
    onlyif  => 'systemctl -q is-active certbot.timer && systemctl -q is-active nginx',
	}

  exec { "bash -c "if [ \"$(systemctl -q is-active certbot.timer && echo $?)\" = \"0\" ] && [ \"$(systemctl -q is-active nginx && echo $?)\" = \"0\" ]; then for file in $(find /etc/letsencrypt/renewal -type f); do if [ \"$(grep \"renew_hook = service nginx reload\" $file)\" != \"renew_hook = service nginx reload\" ]; then sed -i 's/\(\[renewalparams\]\)/\1\nrenew_hook = service nginx reload/' $file; fi; done; fi"" :
    provider => shell,
    command => 'bash -c "if [ \"$(systemctl -q is-active certbot.timer && echo $?)\" = \"0\" ] && [ \"$(systemctl -q is-active nginx && echo $?)\" = \"0\" ]; then for file in $(find /etc/letsencrypt/renewal -type f); do if [ \"$(grep \"renew_hook = service nginx reload\" $file)\" != \"renew_hook = service nginx reload\" ]; then sed -i 's/\(\[renewalparams\]\)/\1\nrenew_hook = service nginx reload/' $file; fi; done; fi"',
  }
}
