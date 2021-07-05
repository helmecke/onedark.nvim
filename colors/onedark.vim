"Reload all modules
lua  << EOF

package.loaded['onedark']        = nil
package.loaded['onedark.utils']  = nil
package.loaded['onedark.colors'] = nil
package.loaded['onedark.scheme'] = nil

require("onedark").setup()

EOF
