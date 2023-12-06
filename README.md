<!-- [[[cog
import cog
from nbconvert.exporters import MarkdownExporter
from nbconvert.preprocessors import RegexRemovePreprocessor

rrp = RegexRemovePreprocessor()
rrp.patterns = (r"<style>",)
e = MarkdownExporter()
e.register_preprocessor(rrp, enabled=True)
(body, resources) = e.from_filename("welcome.ipynb")
cog.out(f"\n{body}\n")
]]] -->

<h1><center>Welcome to MadPy!</center></h1>
<br>
<center><img src="img/madpy-logo.png" alt="The MadPy Magpie" width="35%"/></center>

# Organizers

<table style="border:none; border-collapse:collapse; cellspacing:0; cellpadding:0">
  <tr>
    <td><img src="img/edrogers.jpg" alt="Ed Rogers" style="width: 300px;" /></td>
    <td><img src="img/djhoese.jpg" alt="David Hoese" style="width: 300px;" /></td>
  </tr><tr>
    <td><p class="caption">Ed Rogers</p></td>
    <td><p class="caption">David Hoese</p></td>
  </tr>
</table>

# Code of Conduct

**MadPy is a community group** and open to all experience levels. We are committed to **a safe, professional environment**

If you aren't sure if a behavior is acceptable, ask yourself:

> Does this build up and encourage someone?
> 
> Is this appropriate in a professional setting?
> 

Learn more about the MadPy Code of Conduct:

https://github.com/madison-python/code-of-conduct


# Sponsor

<center><img src="img/apartmentiq_logo.png" alt="Sponsor Logo: ApartmentIQ" height="200px"/></center>

# Want more MadPy?


<table style="border:none; border-collapse:collapse; cellspacing:0; cellpadding:0">
  <tr style="background-color: transparent; border: none;">
    <td style="border: none;"><img src="img/madpy-logo.png" alt="MadPy" style="width: 45px;" /></td><td style="vertical-align: middle; border: none;"><b><a href="https://madpy.com">madpy.com</a></b></td>
  </tr>
  <tr style="background-color: transparent; border: none;">
    <td style="border: none;"><img src="https://www.meetup.com/favicon.ico" alt="Meetup" style="width: 25px;" /></td><td style="vertical-align: middle; border: none;"><a href="https://www.meetup.com/madpython/">meetup.com/madpython</a></td>
  </tr>
  <tr style="background-color: transparent; border: none;">
    <td style="border: none;"><img src="https://www.github.com/favicon.ico" alt="GitHub" style="width: 25px;" /></td><td style="vertical-align: middle; border: none;"><a href="https://github.com/madison-python">github.com/madison-python</a></td>
  </tr>
  <tr style="background-color: transparent; border: none;">
    <td style="border: none;"><img src="https://fosstodon.org/favicon.ico" alt="Mastodon" style="width: 25px;" /></td><td style="vertical-align: middle; border: none;"><a href="https://fosstodon.org/@madpy">fosstodon.org/@madpy</a></td>
  </tr>
  <tr style="background-color: transparent; border: none;">
    <td style="border: none;"><img src="https://www.slack.com/favicon.ico" alt="Slack" style="width: 25px;" /></td><td style="vertical-align: middle; border: none;"><a href="https://slack.madpy.com">slack.madpy.com</a></td>
  </tr>
</table>


## What You're Missing

<center><img src="img/slack_what_youre_missing.png" alt="Screenshot of Slack workspace with multiple ongoing conversations"/></center>

# MadPy Meetings

### If you have an idea for a talk you'd like to give, please reach out to Ed or Dave

# MadPy Calendar

**2nd Thursdays of the Month**
- January 11th: Python at the speed of C: Cython and Static Compilation <br /><img src="https://madpy.com/static/images/2024-01-11-python-at-the-speed-of-c-social-card-crop.png" alt="Python at the Speed of C: Cython and Static Compilation" style="width: 250px;" />
- February 8th: ???
- March 14th: ???

Open to sponsorship

<!-- [[[end]]] -->
