---
title: "Using Generative AI for Statistical Analysis"
authors:
- jpiaskowski
categories:
- large language models
- statistical analysis
- generative AI
date: "2026-09-21T00:00:00Z"
draft: true
image:
  focal_point: ""
  placement: 2
  preview_only: false
subtitle: 
summary: "How to be the 'human in the loop' with large language model output"
---

Learning and using statistics is hard, requiring years of training and many hours of coursework and private study to master. Additionally, by the time a researcher finally gets to perform statistical analysis after the long process of experimental set-up and data collection, there is often an expectation that the work is more-or-less "done" and this final step of data analysis should be finished quickly. At this stage, any and all shortcuts to a finished product may be sought out, as we have limited hours in the day and many demands on our time. 

Chatbots derived from large language models, a subset of generative AI tools, is one such shortcut. These chatbots can be incredibly useful solving issues rapidly, and they can be incredibly unreliable, serving us out-of-date, imagined, and/or flat-out incorrect information. I have seen generative AI chatbots recommend statistical models while making incorrect assumptions about the model itself, misunderstand the nature of the input data, or fail to properly check that the data conforms to model expectations. I’ve seen chatbots run unsuitable models on data sets whose outputs don’t match what the user requested, or change model default arguments unwisely and without justification, use the wrong diagnostic checks, or more often, skip diagnostic checks altogether. And of course, I’ve seen many hallucinations: functions that don’t exist, arguments not available within a function, and non-existent programming libraries. I have also used chatbots to resolve many coding issues: LaTeX symbols I cannot recall, manipulating text with regular expressions (this seems to be special skill of chatbots), and coding in html, css, javascript, languages I barely know. Chatbots have helped me track down references to arcane topics and have summarized long videos I do have time to watch in full.  

This dichotomy makes them challenging tools. How do we know when we can trust them? As scientists, how do we use them responsibly in our work? Below are some tips I find helpful when using generative AI for data preparation, exploration, and analysis. 

### How to use AI for statistical analysis:

*This guide is aimed towards researchers in higher education, where we are expected to provide highly accurate information. *

##### 1. Decouple model selection from coding

You have to start by understanding the model you want to run before generating any code for analysis. How do you find out the most suitable statistical approach? The usual processes: take a class, read books, read journal articles. Use blog posts, Wikipedia articles to help introduce a topic that is new to you. AI chatbots can help you find methodologies you were otherwise unaware of - it’s quite good at that! However, AI is error prone, lacking in nuance and we are never quite sure what information it is using. It is a starting point, but you should never rely solely on AI for your understanding of a statistical process or model. Learn the basic of how a method works: what it is intended to do, the input data is expects, the circumstances it is 

Be careful, as AI chatbots have enabled us to blindly run code without understanding it, an unwise choice. using generative AI, specifically chatbots that are implementing large language models, to conduct a statistical analysis that you do not understand is a poor choice. By “you do not understand”, I mean, you do not understand the basics of what the analysis does, the circumstances it is best suited for, inputs it takes, and how you evaluate its quality. It has long been an unwise choice to use a statistical model you do not understand and generative AI has not changed this essential truth.

When you do not know the statistical model appropriate for your data, spend time investigating that before jumping into the implementation of a model. Chatbots can be a useful entry point for that. They can suggest options that you can learn more about with books, Wikipedia (amazingly accurate for stats!) or other reliable sources. Before using a statistical model, you should understand the basics of what a model does, what circumstances it is best suited for, what sort of data it expects, what assumptions accompany the model, what output it provides. You do not meed to understand the math or be able to calculate it by hand, but you have to defend its usage in your research. This is the minimium expectation of scientists for statistical modelwe use in our work. 

##### 1. Get specific with your coding prompts

Be specific in prompts. The more specific your prompts, the better fitting results you get. Much has been written on this topic already, but the vaguer the prompt, the worse the advice. "Analyze these data" may be among the most useless prompts, while "give me a generalized linear mixed model for count data with possible zero inflation" is much more likely to provide useful information. Of course, the trick is knowing what to ask, and many people do not know what to ask. Which leads to the next item.
This is why it’s important to understand the model you want to run. Some examples of specific prompts:

“provide R code to run an ordinal mixed model where the proportional odds assumption is met” 
“what is python code to run a generalized linear mixed model with repeated measures?”
“What are good packages for survey analysis in R?”

Vague prompts:

[upload data and tell an AI chatbot to “analyze this”]
“I need R code to analyse y as a function of x and z”.

##### 1. Verify what the generative AI tools suggest with verified sources. 

This looks different for every circumstance. Some examples:

- If a generative tool suggests a particular statistical approach, learn more about that approach. Is that approach the correct one for your scenario? Do you understand model expectations and assumptions and how to evaluate them in a modelling context? 

 - If a generative tool suggests a particular coding solution for a statistical analysis, make sure that solution is actually doing what you want it to do. If a chatbot says “use this {R library/function} for a mixed model”, make sure the function or package is doing that; reading the package documentation (e.g. the help files) is usually sufficient for evaluating this. 

- For any coding exercise where accuracy matters, request the code from the AI chatbot and manually check it yourself. That is, if you receive python code, run that code in a python session and verify the output. While this takes time, it takes considerably less time than writing the code manually. By "accuracy matters", I mean, the cost of being wrong. This cost is very high for a peer-reviewed publication. As scientists, we are expected to provide accurate information. Sometimes, the stakes are lower and only a general approximation is needed. This is a context-dependent value judgement a user must make.

The previous advice is specifically for conducting statistical analysis, where it is difficult to ascertain the quality of chatbot answers, and the consequences of incorrect answers is quite serious and detrimental. However, there are also many low-stakes scenarios where the cost of incorrect advice is low, and it is easy to ascertain output quality:
Historic weather data for a location. Chatbots are remarkably good at this.
Plotting functions. Even when chatbots get this wrong, you will know immediately and can ask for improved code.

##### 1. Take the time to understand your code.

Read the code and make sure you understand what each line of code is doing. You don’t have to be able to explain it deeply, but a general understanding helps so you can adjust the code to fit your circumstances. Chatbots are also great at explaining code! Ask your LLM to explain what is going on if any particular line of code, any command, or any function argument is unclear to you. 

Unfortunately, generate AI does produce statistical coding slope, that is, excessively long and over-complicated code created with minimal human oversight. This may be hundreds of lines of code, much of it implementing inefficient solutions (hello, regex!) or setting arcane little-used options (e.g. setting the font family for a plot). While some of this is the direct response to a prompt, some of it is extra "help" added unprompted and unnoticed by the user. For example, a chatbot may add some extra code to “fix” other micro-issues, such as missing data. This may not always be beneficial, as it may mask other issues with your data that should not be ignored. 

This can be difficult and time consuming to review and hence most folks do not understand their code. As result, the code is difficult if not impossible to adjust, quite sensitive to any changes in the data and hence not reusable, and sometimes implementing unwise choices such as dropping observations with missing data. This is why it is important to read your code before plowing ahead. You can also ask a generative AI chatbot to explain code, as they are quite good at this. 

##### 1. Do not use a chatbot for statistical analysis itself

Generative AI can provide decent solutions for analytical choices and code, but their ability to run the code itself is less proven. Some chatbots can run python code (since python is part of the modern web), but the python ecosystem for statistical inference and mixed models in particular are limited. Additionally, it can be very easy to fall for confirmation bias when a chatbot gives us an answer generally aligned with our goals or wishes. Good analysis means understanding the analytical approach, ensuring it aligns with study goals, correct implementation and checking that model assumptions are met. Its quite tempting to bypass these processes when asking a chatbot to conduct an end-to-end analysis
 
Overall, be cautious asking AI for things a calculator can do. Some chatbots are now directly linked to a calculator, but not always. That can be difficult to check and potentially time wasting. Calculators are very good at the narrow set of tasks they were built for, so take advantage of that. 

###  Chatbots are not trusted colleagues

This probably all sounds very time consuming! It can be; this is the cost of using stochastic tools like GenAI. As stochastic tools, their answers are drawn from a probability distribution, for better or for worse. They may give us reliable results, but they give us unreliable results randomly as part of their core process (these are text prediction engines, after all). 

Chatbots lull us into a false sense of trust by communicating with us as if they are another human trying to build trust with us. Even though we know better, comments like “Let me look that up for you” and “I am sorry” from a chatbot can trick even the most skeptical user into mistaking a chatbot for a trustworthy person providing information. And even as we try to check their work, it is easy to fall into confirmation fatigue, much like how we fail to read pop-up boxes and click “accept” to simply make them go away. After seeing dozens of these per day, who isn’t tired of dealing with these repetitive nuisances? Using GenAI tools as scientists requires a rigorous level of vigilance that should not be dismissed, ignored or underestimated. 

