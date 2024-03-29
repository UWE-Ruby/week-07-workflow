# Week 7 Workflow Example

## Outline

* Exercise
  * Complete the tests of the Technology Workflow (make it up)
  * Or create your own Object and Workflow
  
* Advanced Exploration
 

## Developing and Testing Workflows 

What is workflow?
-----------------

Workflow is a finite-state-machine-inspired API for modeling and
interacting with what we tend to refer to as 'workflow'.

A lot of business modeling tends to involve workflow-like concepts, and
the aim of this library is to make the expression of these concepts as
clear as possible, using similar terminology as found in state machine
theory.

So, a workflow has a state. It can only be in one state at a time. When
a workflow changes state, we call that a transition. Transitions occur
on an event, so events cause transitions to occur. Additionally, when an
event fires, other arbitrary code can be executed, we call those actions.
So any given state has a bunch of events, any event in a state causes a
transition to another state and potentially causes code to be executed
(an action). We can hook into states when they are entered, and exited
from, and we can cause transitions to fail (guards), and we can hook in
to every transition that occurs ever for whatever reason we can come up
with.

<img src="http://github.com/UWE-Ruby/week-07-workflow/raw/master/technology-activity.png" />


## Exercise

Review the [Workflow Gem](https://github.com/geekq/workflow) documentation.

1. Fork and clone this repository to make your own, called **yourname**-week-07-workflow.
1. Add yet another workflow state and a spec for it. Or create your own workflow.
1. Is it a one way workflow, or can it be rolled back? You decide.
1. Make sure you have an acceptible level of [test coverage](https://github.com/colszowka/simplecov). Your test coverage percentage is your grade. Just kidding.
  
1. Tag it complete and push it back to github

## Advanced Exploration

1. Make some methods that do other things besides puts to standard out.
1. For example, send an email https://github.com/mikel/mail
1. or Wrap a sinatra web service around your Class. Test the web service (of course!)
1. re-implement using [AASM](https://www.ruby-toolbox.com/projects/aasm) instead of Workflow gem


