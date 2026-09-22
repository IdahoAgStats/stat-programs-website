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
subtitle: "How to be the 'human in the loop' with large language model output"
summary: []
---

Learning and using statistics is hard, requiring years of training and many hours of coursework and private study to master. Additionally, by the time a researcher finally gets to perform statistical analysis after the long process of experimental set-up and data collection, there is often an expectation that the work is more-or-less "done", and this final step of data analysis should be finished quickly. At this stage, any and all shortcuts to a finished product may be sought out, as we have limited hours in the day and many demands on our time. 

Chatbots derived from large language models, a subset of generative AI tools, is one such shortcut. These chatbots can be incredibly useful solving issues rapidly, and they can be incredibly unreliable, serving us out-of-date, imagined, and/or flat-out incorrect information. I have seen generative AI chatbots recommend statistical models while making incorrect assumptions about the model itself, misunderstand the nature of the input data, or fail to properly check that the data conform to model expectations. I’ve seen chatbots run unsuitable models on data sets whose outputs don’t match what the user requested, or change model default arguments unwisely and without justification, use the wrong diagnostic checks, or more often, skip diagnostic checks altogether. And of course, I’ve seen many hallucinations: functions that don’t exist, arguments not available within a function, and non-existent programming libraries. I have also used chatbots to resolve many coding issues: LaTeX symbols I cannot recall, manipulating text with regular expressions (this seems to be special skill of chatbots), and coding in html, css, javascript, languages I barely know. I've seen it accurately pull weather data from an online source and produce a custom plot using python's 'matplotlib'. Chatbots have helped me track down references to arcane topics and have summarized long videos I do have time or interest to watch in full.  

This dichotomy between useful and erroneous makes chatbots challenging tools to use properly. How do we know when we can trust them? As scientists, how do we use them responsibly in our work? Below are some tips I find helpful when using generative AI for data preparation, exploration, and analysis. 

### How to use AI for statistical analysis:

*This guide is aimed towards researchers in higher education, where we are expected to provide highly accurate information.*


##### 1. Decouple model selection from coding

You have to start by understanding the statistical model you want to run before generating any code for analysis. How do you find out the most suitable statistical approach? The usual processes: take a class, read books, read journal articles. Use blog posts, Wikipedia articles to help introduce a topic that is new to you. AI chatbots can help you find methodologies you were otherwise unaware of - it’s quite good at that! However, AI is error prone, lacking in nuance and we are never quite sure what information it is using. It is a starting point, but you should never rely solely on AI for your understanding of a statistical process or model. Learn the basic of how a method works: what it is intended to do, the circumstances it is best suited for, the input data is expects, and how to evaluate model quality. 

When you do not know the statistical model appropriate for your data, spend time investigating that before jumping into the implementation of a model. Chatbots can be a useful entry point for that. They can suggest options that you can learn more about with books, Wikipedia (amazingly accurate for stats!) or other reliable sources. Before using a statistical model, you should understand the basics of what a model does, what circumstances it is best suited for, what sort of data it expects, what assumptions accompany the model, what output it provides. You do not meed to understand the math or be able to calculate it by hand, but you have to defend its usage in your research. This is the minimum expectation of scientists for statistical model we use in our work. 

##### 2. Get specific with your coding prompts

Be specific in prompts. The more specific your prompts, the better fitting results you get. Much has been written on this topic already ([example 1](https://claude.com/blog/best-practices-for-prompt-engineering)), but the vaguer the prompt, the less relevant the output. "Analyze these data" may be among the most useless prompts, while "give me a generalized linear mixed model for count data with possible zero inflation" is much more likely to provide useful information. Of course, the trick is knowing what to ask, and hence why it is important to understand the process and statistical model you want to run. 

**Some examples of specific prompts:**

- “provide R code to run an ordinal mixed model where the proportional odds assumption is met”    
- “what is python code to run a generalized linear mixed model with repeated measures?”     
- “What are good packages for survey analysis in R?”      

**Vague prompts:**

- [upload data] “please analyze this”       
- “I need R code to analyse y as a function of x and z”.

##### 3. Know what you want

That is, if you ask for something, do not leave ambiguity in your prompt for the chatbot to interpret. For example, the prompt "are there any outliers in my data set?" implies a known definition of an outlier. If you did not define what is meant by "outlier", the chatbot may pick one type of outlier or it may try multiple options. These choices may or may not be aligned with your study goals. It is better when you the researcher makes analytical choices rather than a chatbot. 

##### 4. Verify what the generative AI tools suggest with reliable outside sources

This looks different for every circumstance. Some examples:

- If a generative tool suggests a particular statistical approach, learn more about that approach. Is that approach the correct one for your scenario? Do you understand model expectations and assumptions and how to evaluate them in a modelling context? 

 - If a generative tool suggests a particular coding solution for a statistical analysis, make sure that solution is actually doing what you want it to do. If a chatbot says “use this {R library/function} for a mixed model”, make sure the function or package is doing that; reading the package documentation (e.g. the help files) is usually sufficient for evaluating this. 

- For any coding exercise where accuracy matters, request the code from the AI chatbot and manually check it yourself. That is, if you receive python code, run that code in a python session and verify the output. While this takes time, it takes considerably less time than writing the code manually and may prevent future embarrassment. By "where accuracy matters", I mean, when there is a cost of being wrong. This cost is very high for a peer-reviewed publication, where the consequences of incorrect (and uncorrected) answers can be quite serious and detrimental. However, there are also many low-stakes scenarios where the cost of incorrect advice is low, and it is easy to ascertain output quality:

- Historic weather data for a location. Chatbots are remarkably good at this.   
- Plotting functions. Even when chatbots get this wrong, you will know immediately and can ask for improved code.     

This is a context-dependent value judgement a user must make.

##### 5. Take the time to understand your code.

AI chatbots have enabled us to blindly run code without understanding it. It has long been an unwise choice to use a statistical model you do not understand; generative AI has not changed this essential truth.

Read the code and make sure you understand what each line of code is doing. You don’t have to be able to explain it deeply, but a general understanding helps so you can adjust the code to fit your circumstances. Chatbots are also great at explaining code! Ask your LLM to explain what is going on if any particular line of code, any command, or any function argument is unclear to you. 

Unfortunately, generate AI does produce statistical coding slop, that is, excessively long and over-complicated code created with minimal human oversight. This may be hundreds of lines of code, much of it implementing inefficient solutions (hello, regex!) or setting arcane little-used options (e.g. setting the font family for a plot). While some of this is the direct response to a prompt, some of it is extra "help" added unprompted and unnoticed by the user. For example, a chatbot may add some extra code to “fix” other micro-issues, such as missing data. This may not always be beneficial, as it may mask other issues with your data that should not be ignored. 

This can be difficult and time consuming to review, so most folks do not do this and hence do understand their code well. As result, the code is challenging if not impossible to troubleshoot, quite brittle and sensitive to any changes in the data and hence not reusable, and sometimes implementing unwise choices such as dropping observations with missing data. This is why it is important to read your code before plowing ahead. You can also ask a generative AI chatbot to explain code, as they are quite good at this. 

##### 6. Do not use a chatbot for statistical analysis itself

Generative AI can provide decent solutions for analytical choices and code, but their ability to run the code itself is less proven. Some chatbots can run python code (since python is part of the modern web), but the python ecosystem for statistical inference and mixed models in particular are limited. Additionally, it can be very easy to fall for confirmation bias when a chatbot gives us an answer generally aligned with our goals or wishes. Good analysis means understanding the analytical approach, ensuring it aligns with study goals, correct implementation and checking that model assumptions are met. Its quite tempting to bypass these processes when asking a chatbot to conduct an end-to-end analysis
 
Overall, be cautious asking AI for things a calculator can do. Some chatbots are now directly linked to a calculator, but not always. That can be difficult to check and potentially time wasting. Calculators are very good at the narrow set of tasks they were built for, so take advantage of that. 

###  Final thoughts: be vigilant

These steps probably all sound very time consuming! they can be; this is the cost of using stochastic tools like large language models. As stochastic tools, their answers are drawn from a probability distribution, for better or for worse. They may give us reliable results, but they give us unreliable results randomly as part of their core process (these are text prediction engines, after all). Chatbots can lull us into a false [sense of trust](https://pmc.ncbi.nlm.nih.gov/articles/PMC12838375/) by communicating with us as if they are another human trying to connect with us. And even as we try to check their work, it is easy to fall into [confirmation fatigue](https://changkun.de/blog/ideas/human-in-the-loop-agents/), much like how we fail to read pop-up boxes and click “accept” to simply make them go away. After seeing dozens of these per day, who isn’t tired of dealing with these repetitive nuisances? Using generative AI tools as scientists requires a rigorous level of caution and vigilance that should not be ignored or underestimated. Nevertheless, given its demonstrated advantages for some tasks, I do think we can learn to use chatbots without compromising our research integrity. 

