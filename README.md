Welcome to Madpy!
=================

![The Madpy Magpy.](img/madpy-logo.png)

Organizers
==========

<img src="README_files/figure-markdown_strict/organizers-1.png" alt="Pierce Edmiston, Dan Imhoff, Willy Hakizimana, and James Bourbeau." height="80%" />
<p class="caption">
Pierce Edmiston, Dan Imhoff, Willy Hakizimana, and James Bourbeau.
</p>

Sponsor
=======

![](README_files/figure-markdown_strict/sponsor-1.png)

Code of conduct
===============

**Madpy is a community group** and open to all experience levels.  
We are committed to **a safe, professional environment.**  
**Questions and comments** supporting the speaker are encouraged.  
**Interruptions and criticisms** of the speaker are not.

[github.com/madison-python/code-of-conduct](https://github.com/madison-python/code-of-conduct)

Want more Madpy?
================

[meetup.com/madpython](https://www.meetup.com/madpython/)  
[github.com/madison-python](https://github.com/madison-python)  
[github.com/madison-python/welcome](https://github.com/madison-python/welcome)

Join us on Slack
----------------

`slack.madpy.com` to sign up.  
`madpy.slack.com` to sign in.

Subscribe to our googlegroups
-----------------------------

Send a blank email to: `madpy+subscribe@googlegroups.com`

Madpy meetings
==============

![Bread.](README_files/figure-markdown_strict/bread-1.png)

Madpy calendar
==============

-   August 8: Python Data Model (Josh Karpel)
-   *September 5:* Numba (James Bourbeau)
-   October 10: Hackathon - Kaggle Competition

Warm up
=======

    def extract_txt(zip_filename, dst_dir):
        """Extract all txt files from a zip."""
        with zipfile.ZipFile(zip_filename) as zip_src:
            names = [
                name for name in zip_src.namelist()
                if pathlib.Path(name).suffix == ".txt"
            ]
            for member in names:
                dst_path = pathlib.Path(dst_dir) / pathlib.Path(member).name
                with zip_src.open(member) as src, open(dst_path, "wb") as dst:
                    shutil.copyfileobj(src, dst)
