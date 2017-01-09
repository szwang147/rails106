module FlashesHelper
  FLASH_CLASS = { alert: "danger", notice:"succese", warning: "warning"}.freeze

  def flash_class(key)
    FLASH_CLASSES.fetch key.to_sym, key
  end
  def user_facing_flahes
    flash.to_hash.slice "alert", "notice", "warning"
  end
end
