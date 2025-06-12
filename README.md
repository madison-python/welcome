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


```python
name = "Ed Rogers"

message = f"Hi {name}!"
message
```




    'Hi Ed Rogers!'




```python
import sys
!{sys.executable} -V
```

    Python 3.14.0b1


## Introducing `t` Strings

Coming to Python 3.14


```python
name = "Ed Rogers"

message_template = t"Hi {name}!"
message_template
```




    Template(strings=('Hi ', '!'), interpolations=(Interpolation('Ed Rogers', 'name', None, ''),))



### A Use Case

Dave takes names, and makes cool greetings!


```python
from random import choice, seed
seed(7)

def daves_cool_greeting_tool(name):
    return choice([
        f"Howdy {name}!",
        f"Konichiwa {name}!",
        f"Hey {name}, looking good!",
        f"We all <3 you, {name}!",
    ])
```

Ed takes messages, and turns them into HTML...


```python
def eds_cool_html_renderer(message):
    return "<h1>" + message + "</h1>"
```


```python
daves_cool_greeting_tool(name)
```




    'Hey Ed Rogers, looking good!'




```python
eds_cool_html_renderer(daves_cool_greeting_tool(name))
```




    '<h1>Konichiwa Ed Rogers!</h1>'




```python
from IPython.core.display import HTML

HTML(eds_cool_html_renderer(daves_cool_greeting_tool(name)))
```




<h1>We all <3 you, Ed Rogers!</h1>



### A challenger appears


```python
joshs_full_name = """Josh <script>alert("evil")</script> Karpel"""
```


```python
daves_cool_greeting_tool(joshs_full_name)
```




    'Howdy Josh <script>alert("evil")</script> Karpel!'




```python
eds_cool_html_renderer(daves_cool_greeting_tool(joshs_full_name))
```




    '<h1>Howdy Josh <script>alert("evil")</script> Karpel!</h1>'




```python
HTML(eds_cool_html_renderer(daves_cool_greeting_tool(joshs_full_name)))
```




<h1>Howdy Josh <script>alert("evil")</script> Karpel!</h1>




```python
def daves_cool_greeting_tool(name):
    return choice([
        f"Howdy {name}!",
        f"Konichiwa {name}!",
        f"Hey {name}, looking good!",
        f"We all <3 you, {name}!",
    ])
```


```python
def eds_cool_html_renderer(message):
    return "<h1>" + message + "</h1>"
```

### Using a `t` String


```python
greeting_template = t"We all <3 you, {joshs_full_name}!"
greeting_template
```




    Template(strings=('We all <3 you, ', '!'), interpolations=(Interpolation('Josh <script>alert("evil")</script> Karpel', 'joshs_full_name', None, ''),))




```python
from string.templatelib import Template, Interpolation
import html

def safe_f(template: Template) -> str:
    """Implement f-string behavior using the PEP 750 t-string behavior."""
    parts = []
    for item in template:
        match item:
            case str() as s:
                parts.append(s)
            case Interpolation(value, _, conversion, format_spec):
                value = format(html.escape(value), format_spec)
                parts.append(value)
    return "".join(parts)    
```


```python
safe_f(greeting_template)
```




    'We all <3 you, Josh &lt;script&gt;alert(&quot;evil&quot;)&lt;/script&gt; Karpel!'




```python
def daves_cool_greeting_tool(name):
    greeting = choice(
        [
            t"Howdy {name}!",
            t"Konichiwa {name}!",
            t"Hey {name}, looking good!",
            t"We all <3 you, {name}!",
        ]
    )
    return greeting
```


```python
def eds_cool_html_renderer(message_template):
    return "<h1>" + safe_f(message_template) + "</h1>"
```


```python
daves_cool_greeting_tool(joshs_full_name)
```




    Template(strings=('Hey ', ', looking good!'), interpolations=(Interpolation('Josh <script>alert("evil")</script> Karpel', 'name', None, ''),))




```python
eds_cool_html_renderer(daves_cool_greeting_tool(joshs_full_name))
```




    '<h1>Howdy Josh &lt;script&gt;alert(&quot;evil&quot;)&lt;/script&gt; Karpel!</h1>'




```python
HTML(eds_cool_html_renderer(daves_cool_greeting_tool(joshs_full_name)))
```




<h1>Konichiwa Josh &lt;script&gt;alert(&quot;evil&quot;)&lt;/script&gt; Karpel!</h1>



# Sponsor

<center><img src="img/apartmentiq_logo.png" alt="Sponsor Logo: ApartmentIQ" width="500px"/></center>

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

<img src="https://madpy.com/static/images/2025-06-12-Debugging-Open-Source-Social-Card-1413x953.png" alt="Logo for the MadPy talk" />

<!-- [[[end]]] -->
