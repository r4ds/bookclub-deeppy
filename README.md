# DSLC Deep Learning with Python (3e) Book Club

Welcome to the DSLC Deep Learning with Python (3e) Book Club!

We are working together to read [_Deep Learning with Python (3e)_](https://deeplearningwithpython.io) by François Chollet and Matthew Watson (copyright 2025).
If you'd like to buy a physical copy of the book, please consider using [this affiliate link](https://amzn.to/4qKMjpo) to support the Data Science Learning Community.

Join the [#book_club-deeppy](https://dslcio.slack.com/archives/C09PYM1R332) channel on the [DSLC Slack](https://dslc.io/join) to participate.
As we read, we are producing [slides about the book](https://dslc.io/deeppy).

## Meeting Schedule

If you would like to present, please see the sign-up sheet for your cohort (linked below, and pinned in the [#book_club-deeppy](https://dslcio.slack.com/archives/C09PYM1R332) channel on Slack)!

- [Cohort 1](https://docs.google.com/spreadsheets/d/19WyyME0GQ_5eREP0NheEQ79aiKIsTST_tgFl3uwvk5c/edit?usp=sharing) (started 2026-01-19, facilitated by Ron Legere): [Mondays, 3:00 PM CST/CDT](https://www.timeanddate.com/worldclock/converter.html?iso=20260119T210000&p1=24&p2=1440) | [meeting videos](https://www.youtube.com/playlist?list=PL3x6DOfs2NGiCpNDZcbn5CJej2rT8xcZX)

<hr>


## How to Present

This repository is structured as a Quarto website.
To present, follow these instructions:

Do these steps once in RStudio or Positron:

1. [Setup Git and GitHub to work with RStudio](https://github.com/r4ds/bookclub-setup) (click through for detailed, step-by-step instructions; I recommend checking this out even if you're pretty sure you're all set).
2. `usethis::create_from_github("r4ds/bookclub-deeppy")` (cleanly creates your own copy of this repository).

Do these steps each time you present another chapter:

1. Open your project for this book.
2. `usethis::pr_init("my-chapter")` (creates a branch for your work, to avoid confusion, making sure that you have the latest changes from other contributors; replace `my-chapter` with a descriptive name, ideally).
3. `pak::pak()` (installs any packages used by the book that you don't already have installed).
4. Edit the appropriate chapter file (in `slides/`). Use `#` (section) and `##` (slide) to indicate new slides. You do *not* need to update the `_quarto.yml` index; it automatically finds chapter slide files. If the chapter file does not exist, copy another chapter file and rename it appropriately (e.g., `02.qmd` for chapter 2). Make sure to update the title at the top of the file!
5. If you use any R packages that are not already in the `DESCRIPTION`, add them. You can use `usethis::use_package("myCoolPackage")` to add them quickly! Python packages should be added to the `pyproject.toml` file.
6. Preview your changes! ctrl-shift-k (or command-shift-k) will render the current slide + anything that you haven't rendered before in RStudio or Positron. Please do this to make sure it works before you push your changes up to the main repo! Note: When the site builds on your machine, you'll get some untracked files (`01.qmd` etc in the root directory) and directories (`_site` and `.quarto`). Ignore these files; they're generated during the render, and *should* automatically update when you re-render. If you're having trouble rendering, try deleting old copies of these files/directories on your local machine; sometimes quarto gets "stuck." You might also need to delete something in `_freeze` if things aren't updating properly on something you've edited.
7. Commit your changes (through the command line, using Rstudio's Git tab, or using Positron's Source Control section). The exact message usually isn't important, but something like "Updates to chapter 2 slides" is enough.
8. `usethis::pr_push()` (pushes the changes up to github, and opens a "pull request" (PR) to let us know your work is ready). Note: This will open GitHub in a browser window, so you might want to open a browser and login to GitHub.com before this runs.
9. (If we request changes, make them)
10. When your PR has been accepted ("merged"), `usethis::pr_finish()` to close out your branch and prepare your local repository for future work.
11. Now that your local copy is up-to-date with the main repo, you need to update your remote fork. Run `gert::git_push("origin")` or click the `Push` button on the `Git` tab of Rstudio.

When your PR is checked into the main branch, the quarto site will rebuild, adding your slides to [this site](https://dslc.io/deeppy).


## Code of Conduct

Please note that the bookclub-deeppy project is released with a [Contributor Code of Conduct](https://contributor-covenant.org/version/2/1/CODE_OF_CONDUCT.html). By contributing to this project, you agree to abide by its terms.
