# frozen_string_literal: true

require 'yaml'
class ConfigUtility
  def fetch_config(config_key)
    config = YAML.load_file('config.yaml')
    config[config_key]
  end

  def fetch_batched_config(config_key_list)
    raise NotImplementedError "#{__method__} not implemented"
  end
end
