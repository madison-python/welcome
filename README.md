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


# Madison Voter Life Hack

<center>
    Request your absentee ballot<br /><br />
    <img src="img/myvote-qr-code.png" alt="QR Code version of MyVote WI link" style="width: auto; height: 200px;"/><img src="https://myvote.wi.gov/Portals/0/Images/MyVote.png" alt="MyVote WI Logo" style="width: auto; height: 200px;"/><br />
    <br />
    <a href="https://myvote.wi.gov/en-us/Vote-Absentee-By-Mail">https://myvote.wi.gov/en-us/Vote-Absentee-By-Mail</a>
</center>

# Python Warm-up

What will this print?


```python
def add_x(items, x):
    items += range(x)

items = [1]
add_x(items, 3)
print(items)
```

```
[1, 0, 1, 2]
```

# Python Warm-up

How about this?


```python
def add_y(items, y):
    items = items + range(y)

items = [1]
add_y(items, 3)
print(items)
```

```
---------------------------------------------------------------------------
TypeError                                 Traceback (most recent call last)
Cell In[8], line 5
      2     items = items + range(y)
      4 items = [1]
----> 5 add_y(items, 3)
      6 print(items)

Cell In[8], line 2, in add_y(items, y)
      1 def add_y(items, y):
----> 2     items = items + range(y)

TypeError: can only concatenate list (not "range") to list
```

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
    <td style="border: none;"><img src="https://fosstodon.org/favicon.ico" alt="Mastodon" style="width: 25px;" /></td><td style="vertical-align: middle; border: none;"><a href="https://fosstodon.org/@madpy">fosstodon.org/@madpy</a></td>
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

# MadPy Calendar

**2nd Thursdays of the Month**
<table style="width: 100%; table-layout: fixed; border:none; border-collapse:collapse; cellspacing:0; cellpadding:0">
    <tr>
        <td style="width: 33%; text-align: center;">
            <img src="img/Unknown-Social-Card.png" alt="TBD" style="width: 100%; height: auto;">
        </td>
        <td style="width: 33%; text-align: center;">
            <img src="img/Unknown-Social-Card.png" alt="TBD" style="width: 100%; height: auto;">
        </td>
        <td style="width: 33%; text-align: center;">
            <img src="img/Unknown-Social-Card.png" alt="TBD" style="width: 100%; height: auto;">
        </td>
    </tr>
    <tr>
        <td style="text-align: center;">October 10th</td>
        <td style="text-align: center;">November 14th</td>
        <td style="text-align: center;">December 12th</td>
    </tr>
</table>

<!-- [[[end]]] -->
