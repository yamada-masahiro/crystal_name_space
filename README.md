# Crystal Name Space

Shows that two independent unit tests interfere when you run `crystal spec`.

## Installation

Copy this repository via `git clone`.

## Usage

First, run two tests one by one below:

``` shell
cd path/to/root/directory
crystal spec spec/foo/baz_spec.cr
crystal spec spec/bar/baz_spec.cr
```
then you will get no error.

Next, run two at a time below:

``` shell
crystal spec
```
then you might get a failure below:
```
  1) Bar::Baz #do_something returns a string
     Failure/Error: baz.do_something.should eq "I am Foo Baz."

       Expected: "I am Foo Baz."
            got: "I am Bar Baz."

     # spec/foo/baz_spec.cr:10
```
No test for Bar::Baz is in [foo/baz_spec.cr](spec/foo/baz_spec.cr), so the test runner must mix them.


## Creator

[YAMADA Masahiro](https://github.com/yamada-masahiro)
