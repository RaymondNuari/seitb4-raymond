require_relative 'helpers/raymondseit_helper'
require_relative 'helpers/global_helper'
require_relative 'helpers/automation_helper'
require_relative 'helpers/wait_for_ajax_helper'
require_relative 'helpers/checkout_helper'
require_relative 'helpers/createitemsingleoutlet_helper'
require_relative 'helpers/createitemlib_helper'
require_relative 'helpers/deleteitemsingleoutlet_helper'
require_relative 'helpers/deleteitemlib_helper'
require_relative 'helpers/createtaxlib_helper'
require_relative 'helpers/createtaxsingleoutlet_helper'
require_relative 'helpers/deletetaxsingleoutlet_helper'
require_relative 'helpers/deletetaxlib_helper'
require_relative 'helpers/creategratlib_helper'
require_relative 'helpers/creategratsingleoutlet_helper'
require_relative 'helpers/deletegratsingleoutlet_helper'
require_relative 'helpers/deletegratlib_helper'

module Helper
  include AutomationHelper
  include CustomWorld
  include WaitForAjax
  include CheckoutHelper
  include RaymondSeit
  include Createitemsingleoutlet
  include Createitemlib
  include Deleteitemsingleoutlet
  include Deleteitemlib
  include Createtaxsingleoutlet
  include Createtaxlib
  include Deletetaxsingleoutlet
  include Deletetaxlib
  include Creategratlib
  include Creategratsingleoutlet
  include Deletegratsingleoutlet
  include Deletegratlib
end

World(Helper)
