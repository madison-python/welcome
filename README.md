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
    <td><img src="img/joshkarpel.jpg" alt="Josh Karpel" style="width: 300px;" /></td>
  </tr><tr>
    <td><p class="caption">Ed Rogers</p></td>
    <td><p class="caption">David Hoese</p></td>
    <td><p class="caption">Josh Karpel</p></td>
  </tr>
</table>

# Code of Conduct

**MadPy is a community group** and open to all experience levels. We are committed to **a safe, professional environment**

### Ask Yourself

> Does my behavior encourage newcomers to return to future MadPy events?
>
> Would someone who has never given a presentation at MadPy before be more likely to do so in the future?

Learn more about the MadPy Code of Conduct:

https://github.com/madison-python/code-of-conduct


# Sponsor

<center><img src="img/Fetch_Rewards_Logo.jpg" alt="Sponsor Logo: Fetch Rewards" width="500px"/></center>

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


# MadPy Meetings

### If you have an idea for a talk you'd like to give, please reach out to Ed, Dave, or Josh

# MadPy Calendar

**2nd Thursdays of the Month**
<table style="width: 100%; table-layout: fixed; border:none; border-collapse:collapse; cellspacing:0; cellpadding:0">
    <tr>
        <td style="width: 33%; text-align: center;">
            <img src="img/2024-04-11-gpu-programming-in-python-social-card-crop.png" alt="GPU Programming in Python" style="width: 100%; height: auto;">
        </td>
        <td style="width: 33%; text-align: center;">
            <img src="https://madpy.com/static/images/2024-05-09-Mastering-Pythonic-Data-Validation-and-Transformation-with-Pydantic-social-card-2.png" alt="Mastering Data Validation With Pydantic" style="width: 100%; height: auto;">
        </td>
        <td style="width: 33%; text-align: center;">
            <img src="img/2024-06-13-Concurrency-and-Parallelism-social-card-crop.png" alt="Concurrency and Parallelism" style="width: 100%; height: auto;">
        </td>
    </tr>
    <tr>
        <td style="text-align: center;">April 11th</td>
        <td style="text-align: center;">May 9th</td>
        <td style="text-align: center;">June 13th</td>
    </tr>
</table>

Open to sponsorship for future meetings

<!-- [[[end]]] -->
