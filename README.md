# cpptemplate {#mainpage}
> Short blurb about what your product does.

[![CircleCI][circleci-badge]][circleci-url]
[![CodeFactor Grade][codefactor-badge]][codefactor-url]
[![Documentation][documentation-badge]][documentation-url]
[![License][license-badge]][license-url]

One to two paragraph statement about your product and what it does.

![](images/header.png)

## Getting Started

To build it execute:
- `~\PROJECTNAME\build\cmake .. -DCMAKE_TOOLCHAIN_FILE={YOUR_PATH_TO_VCPKG}/scripts/buildsystems/vcpkg.cmake`
- `~\PROJECTNAME\build\cmake --build . --config Release`

You can execute the program by `./PROJECTNAME`

### Prerequisites/Dependencies

- [cmake][cmake-url] Open-Source, cross-platform build tool
- [fmt][fmt-url] External library used for formatting and printing results
- [doctest][doctest-url] Feature-rich C++11/14/17/20 single-header testing framework for unit tests and TDD

## Usage example

A few motivating and useful examples of how your product can be used. Spice this up with code blocks and potentially more screenshots.

_For more examples and usage, please refer to the [Wiki][wiki]._

## Release History

* 0.2.1
    * CHANGE: Update docs (module code remains unchanged)
* 0.2.0
    * CHANGE: Remove `setDefaultXYZ()`
    * ADD: Add `init()`
* 0.1.1
    * FIX: Crash when calling `baz()` (Thanks @GenerousContributorName!)
* 0.1.0
    * The first proper release
    * CHANGE: Rename `foo()` to `bar()`
* 0.0.1
    * Work in progress

## Meta

**Benjamin Mahr** – [GitHub][rep-url]  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;– [LinkedIn][linkedin-url]  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;– [Twitter][twitter-url]  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;– [Mail][mail]

Distributed under the MIT license. See ``LICENSE`` for more information.

## Contributing

1. Fork it (<https://github.com/Ben1980/cpptemplate/fork>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request

## Acknowledgments

- Transforming CTest results int JUnit notation – https://stackoverflow.com/a/21688776/1541782
- README.md template inspiration – https://github.com/dbader/readme-template
- Doxygen GitHub-Action – https://github.com/mattnotmitt/doxygen-action
- gh-pages GitHub-Action – https://github.com/peaceiris/actions-gh-pages

[circleci-url]: (https://circleci.com/gh/Ben1980/cpptemplate)
[codefactor-url]: (https://www.codefactor.io/repository/github/ben1980/cpptemplate)
[documentation-url]: (https://ben1980.github.io/cpptemplate/)
[license-url]: (https://github.com/Ben1980/cpptemplate/blob/master/LICENSE)
[circleci-badge]: (https://img.shields.io/circleci/build/gh/Ben1980/cpptemplate)
[codefactor-badge]: (https://img.shields.io/codefactor/grade/github/ben1980/cpptemplate)
[documentation-badge]: (https://img.shields.io/github/workflow/status/Ben1980/cpptemplate/Documentation?label=Documentation)
[license-badge]: (https://img.shields.io/github/license/Ben1980/cpptemplate)
[cmake-url]: (https://cmake.org/)
[fmt-url]: (https://fmt.dev/latest/index.html)
[doctest-url]: (https://github.com/onqtam/doctest)
[rep-url]: (https://github.com/Ben1980)
[linkedin-url]: (https://www.linkedin.com/in/benjamin-mahr-728a1639/)
[twitter-url]: (https://twitter.com/BenMahr)
[mail]: (ben.amhr@gmail.com)

