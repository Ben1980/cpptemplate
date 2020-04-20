# cpptemplate {#mainpage}
> A C++ GitHub template project.

[![CircleCI][circleci-badge]][circleci-url]
[![CodeFactor Grade][codefactor-badge]][codefactor-url]
[![Documentation][documentation-badge]][documentation-url]
[![License][license-badge]][license-url]

A C++ GitHub template project consisting of a circleci build pipeline utilising cmake, ctest, vcpkg, and an automated documentation deployment via GitHub-Actions at gh-pages branch.

![](images/header.png)

## Getting Started

To build the project:
- Setup toolchain `~/PROJECTNAME/build/cmake .. -DCMAKE_TOOLCHAIN_FILE={YOUR_PATH_TO_VCPKG}/scripts/buildsystems/vcpkg.cmake`
- Build `~/PROJECTNAME/build/cmake --build . --config Release`
- Execute the tests `~/PROJECTNAME/build/ctest`
- You can execute the program by `./build/app/PROJECTNAME`

To update the docker image:
- Edit the Dockerfile to your needs
- Build docker image `sudo docker build -t IMAGENAME .`
- Tag docker image with dockerhub username `sudo docker tag IMAGENAME:TAG DOCKERHUBUSERNAME/IMAGENAME:TAG`
- Push docker image to dockerhub `sudo docker push DOCKERHUBUSERNAME/IMAGENAME:TAG`

To change/add dependencies:
- Edit the vcpkg part of `.cirlceci/config.yml` to your needs
```
- run:
    name: Install vcpkg dependencies
    command: ./../../vcpkg/vcpkg install DEPENDENCIES
```

### Prerequisites/Dependencies

- [cmake][cmake-url] – Open-Source, cross-platform build tool
- [fmt][fmt-url] – External library used for formatting and printing results
- [doctest][doctest-url] – Feature-rich C++11/14/17/20 single-header testing framework for unit tests and TDD
- [vcpkg][vcpkg-url] – C++ Library Manager for Windows, Linux, and MacOS
- [python 3][python-url] – A programming language used to convert ctest results with a xml transformation (xslt)

## Release History

* [1.1.0][v1.1.0]
    * CHANGED: README.md extended and several links corrected
    * CHANGED: Dockerfile cleaned up which also lead to a slightly smaller docker image
* [1.0.0][v1.0.0]
    * ADD: Customized docker image for C++/cmake builds with vcpkg as dependency manager
    * ADD: GitHub action to generate documentation
    * ADD: GitHub project template

## Meta

Documentation can be found at https://ben1980.github.io/cpptemplate/

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

- Converting CTest results int JUnit XML – https://stackoverflow.com/a/21688776/1541782
- README.md template inspiration – https://github.com/dbader/readme-template
- Doxygen GitHub-Action – https://github.com/mattnotmitt/doxygen-action
- gh-pages GitHub-Action – https://github.com/peaceiris/actions-gh-pages
- Dockerfile Tips – https://blog.container-solutions.com/6-dockerfile-tips-official-images

[circleci-url]: https://circleci.com/gh/Ben1980/cpptemplate
[codefactor-url]: https://www.codefactor.io/repository/github/ben1980/cpptemplate
[documentation-url]: https://ben1980.github.io/cpptemplate/
[license-url]: https://github.com/Ben1980/cpptemplate/blob/master/LICENSE
[circleci-badge]: https://img.shields.io/circleci/build/gh/Ben1980/cpptemplate
[codefactor-badge]: https://img.shields.io/codefactor/grade/github/ben1980/cpptemplate
[documentation-badge]: https://img.shields.io/github/workflow/status/Ben1980/cpptemplate/Documentation?label=Documentation
[license-badge]: https://img.shields.io/github/license/Ben1980/cpptemplate
[cmake-url]: https://cmake.org/
[fmt-url]: https://fmt.dev/latest/index.html
[doctest-url]: https://github.com/onqtam/doctest
[rep-url]: https://github.com/Ben1980
[linkedin-url]: https://www.linkedin.com/in/benjamin-mahr-728a1639/
[twitter-url]: https://twitter.com/BenMahr
[mail]: ben.amhr@gmail.com
[vcpkg-url]: https://github.com/microsoft/vcpkg
[python-url]: https://www.python.org/

[v1.0.0]: https://github.com/Ben1980/cpptemplate/releases/tag/v1.0.0
[v1.1.0]: https://github.com/Ben1980/cpptemplate/releases/tag/v1.1.0
