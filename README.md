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

### Our Commitment to You

We are enthusiastically focused on improving our event and making it a place that is welcoming to all. All reports will be taken seriously, handled respectfully, and dealt with in a timely manner.

Learn more about the MadPy Code of Conduct:

https://github.com/madison-python/code-of-conduct



```python
def expand(s: str) -> list[int]:
  """
  Turn "1-5,7,9,10-13" into a list of numbers
  """
  return [
    num
    for p in s.split(",")
      for a, _, b in [p.partition("-")]
        for num in range(int(a), int(b or a) + 1)
  ]
```

<img src="img/python-snip-expand-str.png" alt="A screenshot of a snippet of python code"/>


```python
expand("1-5, 7, 9, 10-13")
```




    [1, 2, 3, 4, 5, 7, 9, 10, 11, 12, 13]



# Sponsor

<center><img src="img/verve-logo.png" alt="Sponsor Logo: Verve Industrial" width="500px"/></center>

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
    <td style="border: none;"><img src="img/fosstodon-logo.png" alt="Mastodon" style="width: 25px;" /></td><td style="vertical-align: middle; border: none;"><a href="https://fosstodon.org/@madpy">fosstodon.org/@madpy</a></td>
  </tr>
  <tr style="background-color: transparent; border: none;">
    <td style="border: none;"><img src="https://www.slack.com/favicon.ico" alt="Slack" style="width: 25px;" /></td><td style="vertical-align: middle; border: none;"><a href="https://slack.madpy.com">slack.madpy.com</a></td>
  </tr>
  <tr style="background-color: transparent; border: none;">
    <td style="border: none;"><img src="https://www.linkedin.com/favicon.ico" alt="LinkedIn" style="width: 25px;" /></td><td style="vertical-align: middle; border: none;"><a href="https://linkedin.com/company/madpy">linkedin.com/company/madpy</a></td>
  </tr>
</table>


# The Best Way to Help MadPy

### Talk to your employer about Sponsorship!

# MadPy Quick Survey

## Question 1: Social Media -- Where Should MadPy Be?

<img src="img/qr-code-2024-12-12-MadPy-Social-Media.png" alt="QR Code" width=300px />

https://www.bli.do/2024-12-12-MadPy-Social-Media

# MadPy Quick Survey

## Question 2: Office Hours -- Topics You Could Be A Mentor On

<img src="img/qr-code-2024-12-12-MadPy-Office-Hours.png" alt="QR Code" width=300px />

https://www.bli.do/2024-12-12-MadPy-Office-Hours

# MadPy Quick Survey

## Question 3: Favorite Event Types You Want To See More Of

<img src="img/qr-code-2024-12-12-MadPy-Favorite-Events.png" alt="QR Code" width=300px />

https://www.bli.do/2024-12-12-MadPy-Favorite-Events

<img src="https://madpy.com/static/images/2024-12-12-Tests-in-the-Real-World-Social-Card-1792x1024.png" alt="Logo for the MadPy talk" />

<!-- [[[end]]] -->
