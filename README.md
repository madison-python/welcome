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


# Python Warm-Up

#### A `get` function with a default:


```python
madpy_menu = {
    "pizza": "Ian's",
    "beverage": "Sprite",
}
```


```python
def get_menu_item(key, default=None):
    value = madpy_menu.get(key)
    if value is None:
        return default
    return value
```


```python
get_menu_item("pizza")
```




    "Ian's"




```python
get_menu_item("salad", default="Sorry, not tonight!")
```




    'Sorry, not tonight!'



#### Trouble with the `get` function:


```python
madpy_menu = {
    "pizza": "Ian's",
    "beverage": "Sprite",
    "dessert": None,
}
```


```python
def get_menu_item(key, default=None):
    value = madpy_menu.get(key)
    if value is None:
        return default
    return value
```


```python
get_menu_item("salad", default="Sorry, not tonight!")
```




    'Sorry, not tonight!'




```python
get_menu_item("dessert", default="Sorry, not tonight!")
```




    'Sorry, not tonight!'



Can't distinguish between **not** being on the menu, and being on the menu and `None`-valued!

#### Using a "sentinel" value


```python
madpy_menu = {
    "pizza": "Ian's",
    "beverage": "Sprite",
    "dessert": None,
}
```


```python
MISSING = object()

def get_menu_item(key, default=None):
    value = madpy_menu.get(key, MISSING)
    if value is MISSING:
        return default
    return value
```


```python
get_menu_item("salad", default="Sorry, not tonight!")
```




    'Sorry, not tonight!'




```python
get_menu_item("dessert", default="Sorry, not tonight!") is None
```




    True




```python
print(MISSING)
```

    <object object at 0x7bf5c437d710>


#### Can we make it prettier?


```python
madpy_menu = {
    "pizza": "Ian's",
    "beverage": "Sprite",
    "dessert": None,
}
```


```python
from enum import StrEnum

class Missing(StrEnum):
    MISSING = "MISSING"

def get_menu_item(key, default=None):
    value = madpy_menu.get(key, Missing.MISSING)
    if value is Missing.MISSING:
        return default
    return value
```


```python
get_menu_item("salad", default="Sorry, not tonight!")
```




    'Sorry, not tonight!'




```python
get_menu_item("dessert", default="Sorry, not tonight!") is None
```




    True




```python
print(Missing.MISSING)
```

    MISSING


#### New in Python 3.15 (to be released in October 2026)


```python
from sys import version

print(version)
```

    3.15.0b2 (main, Jun  2 2026, 22:26:04) [Clang 22.1.3 ]



```python
from builtins import sentinel

MISSING = sentinel("MISSING")
```


```python
madpy_menu = {
    "pizza": "Ian's",
    "beverage": "Sprite",
    "dessert": None,
}
```


```python
MISSING = sentinel("MISSING")

def get_menu_item(key, default=None):
    value = madpy_menu.get(key, MISSING)
    if value is MISSING:
        return default
    return value
```


```python
get_menu_item("salad", default="Sorry, not tonight!")
```




    'Sorry, not tonight!'




```python
get_menu_item("dessert", default="Sorry, not tonight!") is None
```




    True




```python
print(MISSING)
```

    MISSING


# Want more MadPy?


<table style="border:none; border-collapse:collapse; cellspacing:0; cellpadding:0">
  <tr style="background-color: transparent; border: none;">
    <td style="border: none;"><img src="img/madpy-logo.png" alt="MadPy" style="width: 45px;" /></td><td style="vertical-align: middle; border: none;"><b><a href="https://madpy.com">madpy.com</a></b></td>
  </tr>
  <tr style="background-color: transparent; border: none;">
    <td style="border: none;"><img src="img/meetup-logo.png" alt="Meetup" style="width: 25px;" /></td><td style="vertical-align: middle; border: none;"><a href="https://www.meetup.com/madpython/">meetup.com/madpython</a></td>
  </tr>
  <tr style="background-color: transparent; border: none;">
    <td style="border: none;"><img src="img/github-logo.png" alt="GitHub" style="width: 25px;" /></td><td style="vertical-align: middle; border: none;"><a href="https://github.com/madison-python">github.com/madison-python</a></td>
  </tr>
  <tr style="background-color: transparent; border: none;">
    <td style="border: none;"><img src="img/fosstodon-logo.png" alt="Mastodon" style="width: 25px;" /></td><td style="vertical-align: middle; border: none;"><a href="https://fosstodon.org/@madpy">fosstodon.org/@madpy</a></td>
  </tr>
  <tr style="background-color: transparent; border: none;">
    <td style="border: none;"><img src="img/slack-logo.png" alt="Slack" style="width: 25px;" /></td><td style="vertical-align: middle; border: none;"><a href="https://slack.madpy.com">slack.madpy.com</a></td>
  </tr>
  <tr style="background-color: transparent; border: none;">
    <td style="border: none;"><img src="img/linkedin-logo.png" alt="LinkedIn" style="width: 25px;" /></td><td style="vertical-align: middle; border: none;"><a href="https://linkedin.com/company/madpy">linkedin.com/company/madpy</a></td>
  </tr>
</table>


# The Best Way to Help MadPy

### Talk to your employer about Sponsorship!

<img src="https://madpy.com/static/images/2026-06-04-Agentic-Coding-1550x1100.png" alt="Logo for the MadPy talk" />

<!-- [[[end]]] -->
