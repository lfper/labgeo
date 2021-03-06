# Build package

# Dependencies
update(devtools::package_deps())

# turn on/off development mode
devtools::dev_mode()

# check examples and documentation
devtools::check_man()
#devtools::run_examples(run = FALSE)

# check the package for Linux and Windows
devtools::check(document = TRUE, check_version = TRUE, force_suggests = TRUE, args = "--use-valgrind")

# turn on/off development mode
devtools::dev_mode()

