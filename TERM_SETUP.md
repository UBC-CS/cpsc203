# Term transition checklist

How to archive a finished term and reset this site for the next one. Written
during the 2025W2 → 2026W1 handoff; keep it updated if the process changes.

## 1. Archive the outgoing term

1. Tag the final commit on `main` in both `cpsc203` and `cpsc203-root`:
   `git tag -a <termcode>-final -m "Final snapshot of <term>" main && git push origin <termcode>-final`
2. Render the site from that tag (`quarto render` with the repo in that state).
3. Copy the rendered `_site/` output into a permanent subfolder on the
   `gh-pages` branch, e.g. `<termcode>/` (checkout `gh-pages` in a worktree,
   `cp -R _site/. <termcode>/`, commit, push). Quarto's generated links are
   page-relative, so this works without any special `output-dir` config —
   just spot-check a couple of nested pages (e.g. a slide deck) locally
   before pushing, since a large copy is expensive to redo.
4. The deploy workflow (`.github/workflows/main.yml`) publishes with
   `keep_files: true` (via `peaceiris/actions-gh-pages`), so archived
   subfolders are never touched by future deploys of the live site. Don't
   revert that flag — without it, the next deploy wipes every past archive.
5. Result: the old term stays permanently browsable at
   `https://ubc-cs.github.io/cpsc203/<termcode>/`, and the exact source is
   recoverable via the git tag.

`pl-ubc-cpsc203` does not need this treatment — PrairieLearn already keeps
terms side by side under `courseInstances/<termcode>/`, nothing is ever
overwritten there.

## 2. Reset `cpsc203` (the website) for the incoming term

Only logistics data gets cleared — it's genuinely dead once the term ends.
**Slides (`slides/`) and weekly summaries (`summaries/`) are NOT wiped**;
they stay in the tree and get edited forward in place as the new term
proceeds, same as they were built up during the outgoing term. That's also
what keeps the old term's material easily visible in the working tree, on
top of the hosted archive from step 1.

Files touched, and what to check:

- **`data/schedule.csv`** — reset to a blank skeleton (dates and all
  video/lab/POTW/project/exam links cleared; week numbers and the reading
  week marker kept). Fill in real dates once the UBC academic calendar for
  the term is known, and links as each PrairieLearn assessment / recording
  is created.
- **`_variables.yml`** — `term`, `term-end-date`, `time`, `location`,
  `lms` (Canvas), `piazza`, `prairielearn`, and `instructor.name` /
  `instructor.pronouns` are all placeholders (`TODO-...`). Fill in once
  Canvas/Piazza/PrairieLearn course instances exist and the instructor for
  the term is confirmed.
- **`_quarto.yml`** — the sidebar nav hardcodes the same Canvas/Piazza/
  PrairieLearn URLs a second time (`website.sidebar.tools` section); update
  those too.
- **`syllabus.qmd`** — no hardcoded dates as of the 2025W2→2026W1 reset, but
  re-check in case that changes.

To find everything still needing a real value: `grep -rn "TODO-2026W1\|TODO-CONFIRM" .`
(swap the term code each cycle).

## 3. `pl-ubc-cpsc203`

Create the new course instance by copying the previous term's
`courseInstances/<termcode>/` folder and updating `infoCourseInstance.json`
(dates, long/short name). The shared `questions/` bank does not need
touching — it's reused across terms and improved in place.
