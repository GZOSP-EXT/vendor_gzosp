#
# CM-specific macros
#
define uniq
$(if $1,$(firstword $1) $(call uniq,$(filter-out $(firstword $1),$1)))
endef

# Include QCOM macros
include vendor/tesla/build/core/utils.mk

# Include vendor platform definitions
include vendor/tesla/build/core/vendor/*.mk
