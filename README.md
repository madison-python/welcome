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

<center>
<img src="img/verve-logo.png" alt="Sponsor Logo: Verve Industrial" width="500px"/>
</center>

# Want more MadPy?

[**madpy.com**](https://madpy.com)  
[meetup.com/madpython](https://www.meetup.com/madpython/)  
[github.com/madison-python](https://github.com/madison-python)  
[github.com/madison-python/welcome](https://github.com/madison-python/welcome)  
[twitter.com/madisonpython](https://twitter.com/madisonpython)  
[fosstodon.org/@madpy](https://fosstodon.org/@madpy)  

### Join us on Slack

[slack.madpy.com](https://slack.madpy.com) to sign up.  
[madpy.slack.com](https://madpy.slack.com) to sign in.



# MadPy Meetings

### If you have you have an idea for a talk you'd like to give, please reach out to Ed or Dave

# MadPy Calendar

**2nd Thursdays of the Month**
- May 11th: For Your Eyes Only: An Introduction to Cryptography with Python
- June 8th: Intermediate Research Software Development in Python
- July 13th: ???

Open to sponsorship

<!-- [[[end]]] -->
