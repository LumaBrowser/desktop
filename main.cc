#include "webview/webview.h"

#include <iostream>

#ifdef _WIN32
int WINAPI WinMain(HINSTANCE /*hInst*/, HINSTANCE /*hPrevInst*/,
                   LPSTR /*lpCmdLine*/, int /*nCmdShow*/) {
#else
int main() {
#endif
   try {
      webview::webview w(true, nullptr);
      w.set_title("Luma");
      w.set_size(1280, 720, WEBVIEW_HINT_NONE);

      w.navigate("https://duckduckgo.com/");

      // inject javascript to add a devtools toggle
      w.eval(R"(
         document.addEventListener('keydown', function(e) {
            if (e.ctrlKey && e.shiftKey && e.key === 'I') {
               openDevTools();
            }
         });
      )");

      w.run();
   } catch (const webview::exception &e) {
      std::cerr << e.what() << '\n';
      return 1;
   }

  return 0;
}