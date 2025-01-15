#!/bin/zsh
# File              : spaceship.zsh
# Author            : ImCylon <imcylonrs@gmail.com>
# Date              : 08.12.2023
# Last Modified Date: 08.12.2023
# Last Modified By  : ImCylon <imcylonrs@gmail.com>
# Display time

SPACESHIP_TIME_SHOW=true

# Display username always
SPACESHIP_USER_SHOW=always

# Do not truncate path in repos
SPACESHIP_DIR_TRUNC_REPO=false

# Add custom Ember section
# See: https://github.com/spaceship-prompt/spaceship-ember
spaceship add ember

# Add a custom vi-mode section to the prompt
# See: https://github.com/spaceship-prompt/spaceship-vi-mode
spaceship add --before char vi_mode
