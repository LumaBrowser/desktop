# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "F:/meowser/luma/build/_deps/microsoft_web_webview2-src")
  file(MAKE_DIRECTORY "F:/meowser/luma/build/_deps/microsoft_web_webview2-src")
endif()
file(MAKE_DIRECTORY
  "F:/meowser/luma/build/_deps/microsoft_web_webview2-build"
  "F:/meowser/luma/build/_deps/microsoft_web_webview2-subbuild/microsoft_web_webview2-populate-prefix"
  "F:/meowser/luma/build/_deps/microsoft_web_webview2-subbuild/microsoft_web_webview2-populate-prefix/tmp"
  "F:/meowser/luma/build/_deps/microsoft_web_webview2-subbuild/microsoft_web_webview2-populate-prefix/src/microsoft_web_webview2-populate-stamp"
  "F:/meowser/luma/build/_deps/microsoft_web_webview2-subbuild/microsoft_web_webview2-populate-prefix/src"
  "F:/meowser/luma/build/_deps/microsoft_web_webview2-subbuild/microsoft_web_webview2-populate-prefix/src/microsoft_web_webview2-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "F:/meowser/luma/build/_deps/microsoft_web_webview2-subbuild/microsoft_web_webview2-populate-prefix/src/microsoft_web_webview2-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "F:/meowser/luma/build/_deps/microsoft_web_webview2-subbuild/microsoft_web_webview2-populate-prefix/src/microsoft_web_webview2-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()