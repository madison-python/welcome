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

# Sponsor

<img src="img/problem_solvers_guild.png" alt="Sponsor Logo: Problem Solvers Guild" height="200px"/>

# Want more MadPy?

[**madpy.com**](https://madpy.com)  
<img src="https://www.meetup.com/favicon.ico" alt="Meetup" style="width: 15px;" /> [meetup.com/madpython](https://www.meetup.com/madpython/)  
<img src="https://www.github.com/favicon.ico" alt="GitHub" style="width: 15px;" /> [github.com/madison-python](https://github.com/madison-python)  
<img src="https://fosstodon.org/favicon.ico" alt="Mastodon" style="width: 15px;" /> [fosstodon.org/@madpy](https://fosstodon.org/@madpy)  
<img src="https://www.slack.com/favicon.ico" alt="Slack" style="width: 15px;" /> [slack.madpy.com](https://slack.madpy.com)

# MadPy Meetings

### If you have an idea for a talk you'd like to give, please reach out to Ed or Dave

# MadPy Calendar

**2nd Thursdays of the Month**
- December 14th: Can Python Help with Calculating Invariants of Elliptic Curves? <br /><img src="https://madpy.com/static/images/2023-12-14-calculating-invariants-of-elliptic-curves-social-card.png" alt="Can Python Help with Calculating Invariants of Elliptic Curves?" style="width: 250px;" />
- January 11th: Python at the speed of C: Cython and Static Compilation
- February 8th: ???

Open to sponsorship

<!-- [[[end]]] -->
