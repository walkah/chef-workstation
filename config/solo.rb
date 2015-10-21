require 'pathname'

ssl_verify_mode :verify_peer

chef_root = Pathname.new(__FILE__).dirname.parent.expand_path.to_s
var = chef_root + '/var'

cookbook_path chef_root + '/cookbooks'
role_path chef_root + '/roles'
data_bag_path chef_root + '/data_bags'

# Override defaults in /var that aren't user-writable
file_cache_path var + '/cache'
file_backup_path var + '/backup'
checksum_path file_cache_path + '/checksums'

cache_options(path: checksum_path, skip_expires: true)
