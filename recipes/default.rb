bash "sleep 120 sec wait for galaxy initial start and wait more 30 sec" do
    code "sleep 120;/etc/init.d/galaxy restart;sleep 30"
    user "root"
    action :run
end

