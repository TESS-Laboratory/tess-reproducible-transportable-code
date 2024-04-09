# tess-reproducible-transportable-code

This repo provides a simple example of how to set up a project to make it easier for others (or yourself!) to run your code on other devices, on operating systems and in future. This is especially important and helpful if you use GitHub or other version control systems, but is valuable even if you currently keep all your code on one machine.

The key components are:
1. Set up your project as an RStudio project, with a .Rproj file.
2. Use a consistent folder structure to make it easier to find and work with scripts and data.
3. Use the `renv` package to track the packages used and their versions.
4. Use the `here` package to manage file paths efficiently and robustly.

For more information on good practices for reproducible coding and project design, I recommend the open source online book The Turing Way:
https://the-turing-way.netlify.app/index.html
