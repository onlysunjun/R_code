# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'


#' Title
#'
#' @param switch 如果是'on'为打开系统的代理，如果为其它为关闭
#'
#' @examples
#' proxy()
proxy <- function(switch = 'on'){
  if (switch == 'on') {
    print('开启代理')
    Sys.setenv(http_proxy = 'http://127.0.0.1:6152',
               https_proxy = 'http://127.0.0.1:6152',
               all_proxy = 'socks5://127.0.0.1:6153')
  }else{
    print('关闭代理')
    Sys.unsetenv("http_proxy")
    Sys.unsetenv("https_proxy")
    Sys.unsetenv("all_proxy")
  }
}
