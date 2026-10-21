---
title: "Using Generative AI Chatbots for Statistical Analysis"
authors: 
- jpiaskowski
date: "2026-10-20T00:00:00Z"
categories:
- large language models
- statistical analysis
- generative AI
draft: false
image:
  focal_point: ''
  caption: "Image from Stanford [XCS221 Course](https://online.stanford.edu/courses/xcs221-artificial-intelligence-principles-and-techniques)"
  placement: 1
subtitle: "How to be the 'human in the loop' with large language model output"
summary: "Usage of generative AI is becoming more common in statistical analysis, so
  let’s make sure it helps us and doesn’t lead us to incorrect methodologies or solutions."
---

*This guide is aimed towards researchers in higher education, where we are expected to provide highly accurate information. It is also focused on Chatbots derived from large language models (e.g., Claude, Gemini, ChatGPT), and not other generative AI tools such as agents.*

There is an incredible number of chatbots available for use, and different versions of them. These differ in capabilities and reliability and they tend to (largely) improve with updated versions (this may be a hotly debated topic when favored features end up [nerfed](https://gotnerfed.com/) in subsequent LLM release). This article makes no attempt to parse out the differences and advantages between them, but it is helpful to keep in mind that this is a continuously shifting landscape. 

This dichotomy between useful and erroneous outputs makes chatbots challenging tools to use properly. How do we know when we can trust them? As scientists, how do we use them responsibly in our work? Below are some tips I find helpful when using generative AI for data preparation, exploration, and analysis. 

### 1. Decouple model selection from coding

You have to start by understanding the statistical model you want to run prior to generating any code for analysis. How do you find out the most suitable statistical approach? The usual processes: take a class, read books, read journal articles. Use blog posts, Wikipedia articles to help introduce a topic that is new to you. AI chatbots can help you find methodologies you were otherwise unaware of. However, AI is error-prone and lacks nuance, and we are never quite sure what information it is using. It is a starting point, but you should never rely solely on AI for your understanding of a statistical process or model. Learn the basics of how a method works: what it is intended to do, the circumstances it is best suited for, the input data it expects, and how to evaluate model quality. 

When you do not know the statistical model appropriate for your data, spend time investigating that before jumping into the implementation of a model. Chatbots can be a useful entry point for that. They can suggest options that you can learn more about with books, Wikipedia (often quite accurate for stats), or other reliable sources. Prior to using a statistical model, you should understand the basics of what the model does, what circumstances it is best suited for, what sort of data it expects, what assumptions accompany the model, and how to interpret the output it provides. You do not need to understand the math behind it or be able to calculate it by hand, but you have to defend its usage in your research. This is the minimum expectation of scientists for statistical models we use in our work. 

The development of generative AI tools to help you explore a topic may be rather helpful for this step. Both Google Gemini and OpenAI's ChatGPT offer a "deep research" option for comprehensively exploring a new topic. University of Idaho's Mindrouter has an [excellent guide](https://mindrouter.uidaho.edu/blog/introducing-vandalchat-deep-research) on how to use these tools; while it focuses on a specific service available only to University of Idaho affiliates, it also includes details on how to responsibly navigate information from this type of generative AI resource.  

### 2. Know what you want and ask for it.
*Get specific with your coding prompts*

Be specific in prompts. The more specific your prompts, the better fitting results you get. Much has been written on this topic already ([example 1](https://claude.com/blog/best-practices-for-prompt-engineering)), but the vaguer the prompt, the less relevant the output. "Analyze this data set" may be among the least useful prompts, while "give me a generalized linear mixed model for count data with possible zero inflation" is much more likely to provide helpful information. Of course, the trick is knowing what to ask, and hence why it is important to understand the statistical model you want to run. 

**Some examples of specific prompts:**

- “Provide R code to run an ordinal mixed model where the proportional odds assumption is met”  
- “What is Python code to run a generalized linear mixed model with repeated measures?”  
- “What are recommended packages for survey analysis in R?”  

**Some examples of vague prompts:**

- [Upload data] “Please analyze this”  
- “I need R code to analyze y as a function of x and z”.

Do not leave ambiguity in your prompt for the chatbot to interpret. For example, the prompt "Are there any outliers in my data set?" implies a known definition of an outlier. If you did not define what is meant by "outlier," the chatbot may pick one [type of outlier](https://en.wikipedia.org/wiki/Outlier) or it may try multiple options. These choices may or may not be aligned with your study goals. It is better when you, the researcher, make analytical choices rather than a chatbot. Using a set of pre-loaded instructions may help alleviate these issues (discussed in item #4).  

At the bottom of this article are tips on prompting. 

Note that there are some task-specific tools of great utility out there. One generating some interest among the statistical community is [Rtutor.ai](https://rtutor.ai/) for its utility matched with its alignment with teaching and learning goals. 

### 3. Take the time to understand your code.

Read the code and make sure you understand what each line of code is doing. You don’t have to be able to explain it deeply, but a general understanding helps so you can adjust the code to fit your circumstances. Chatbots are also great at explaining code! Ask your LLM to explain what is going on if any particular line of code, any command, or any function argument is unclear to you. Often, they do this already, perhaps even excessively. (I have definitely thought "just give me the answer and not all this mumbo jumbo" after receiving a huge cascade of output in response to what feels like a narrow query.) We can always ask the chatbot to be more succinct. This is also a moment to weigh the importance of understanding your LLM-generated code. Is it for a plot that can be quickly verified or is it for underlying analysis that we have to intellectually defend. 

Unfortunately, generative AI does produce statistical coding slop, that is, excessively long and over-complicated code created with minimal human oversight. This may be hundreds of lines of code, much of it implementing inefficient solutions (hello, regex!) or setting arcane little-used options (e.g., setting the font family for a plot). While some of this is the direct response to a prompt, some of it is extra "help" added unprompted and unnoticed by the user. For example, a chatbot may add some extra code to “fix” a micro-issues, such as missing data. This may not always be beneficial, as it may mask other issues with your data that should be investigated or addressed.

This can be difficult and time-consuming to review, so most users do not do this and hence do not understand their code well. As a result, the code is challenging if not impossible to troubleshoot, quite brittle and sensitive to any changes in the data and hence not reusable, and sometimes implementing unwise choices such as dropping observations with missing data. This is why it is important to read your code before plowing ahead. Generative AI chatbots have enabled us to run code blindly without understanding it. It has long been an unwise choice to use a statistical model or any code you do not understand; generative AI has not changed this essential truth. You can also ask a generative AI chatbot to explain code, as I have observed they can can often provide correct and helpful explanations of code. 

### 4. Verify what the generative AI tools suggest with reliable outside sources

This looks different for every circumstance. Some examples:

- If a generative tool suggests a particular statistical approach, learn more about that approach. Is that approach the correct one for your scenario? Do you understand model expectations and assumptions and how to evaluate them in a modeling context? 

- If a generative tool suggests a particular coding solution for a statistical analysis, make sure that solution is actually doing what you want it to do. If a chatbot says “use this {R library/function} for a mixed model,” make sure the function or package is doing that; reading the package documentation (e.g., the help files) is usually sufficient for evaluating this. 

- For any coding exercise where accuracy matters, request the code from the chatbot and manually check it yourself. That is, if you receive Python code, run that code in a Python session and verify the output. While this takes time, it takes considerably less time than writing the code manually and may prevent future embarrassment if it turns out the chatbot got something wrong. By "accuracy matters," I mean when there is a substantial cost to being wrong. This cost is very high for a peer-reviewed publication, where the consequences of incorrect (and uncorrected) answers can be quite serious and detrimental. However, there are also many low-stakes scenarios where the cost of incorrect advice is low, and it is easy to ascertain output quality:

- Historic weather data for a specific location.    
- Plotting functions. Even when chatbots get this wrong, you will know immediately and can ask for improved code.     

Identifying when accuracy matters is a context-dependent value judgment a user must make. 

### 5. Start small and gradually add complexity

When doing something that is complex, break the task down into simpler tasks and tackle them one at a time. There is a tendency for the chatbots themselves to add complexity under the intent of helping; they may add some error catching to your code, or code that filters out missing data. This is not bad per se, but it may result in unintended consequences, perhaps even errors in analysis. Asking the chatbot to simplify the code to only what you are asking for will avoid these issues. 

### 6. Use instructions to train a chatbot.  

Providing instructions to a chatbot can greatly improve the quality of results. These instructions can be loaded from a file or written on the fly. They provide guidelines to a chatbot in an attempt to elicit specific answers or behavior. "[Caveman](https://github.com/JuliusBrussee/caveman)" is one such example; it is a set of instructions intended for a broad set of circumstances to reduce token usage (important if you are operating under a token cap). Jarad Neimi of Iowa State University has written some [excellent instructions](https://github.com/jarad/DS3030/blob/main/tutor/DS3030-tutor.md) to feed into a chatbot prior to asking for statistical assistance help. These instruct a chatbot on how to serve as a statistical tutor. 

#### 7. Do not use a chatbot for statistical analysis itself

Generative AI can provide decent solutions for analytical choices and code, but their ability to run the code itself is less proven. Some chatbots can run Python code (since Python is part of the modern web), but the Python ecosystem for statistical inference and mixed models in particular are limited. Additionally, it can be very easy to fall for confirmation bias when a chatbot gives us an answer generally aligned with our goals or wishes. Scientifically defensible analysis means understanding the analytical approach, ensuring it aligns with study goals, correctly implementing a statistical model (including assumption checking), and correctly interpreting model outputs. It is quite tempting to bypass these procedures when asking a chatbot to conduct an end-to-end analysis. 

Overall, be cautious about asking AI for things a calculator can do. Some chatbots are now directly linked to a calculator, but not always. That can be difficult to check and potentially time-wasting. Calculators are very good at the narrow set of tasks they were built for, so it makes sense to take advantage of that. 

### Final thoughts: be vigilant

These steps probably all sound very time-consuming! They can be; this is the cost of using stochastic tools like large language models. As stochastic tools, their answers are drawn from a probability distribution, for better or for worse. They may give us reliable results, but they give us unreliable results randomly as part of their core process (these are text prediction engines, after all). 

Chatbots can lull us into a false [sense of trust](https://pmc.ncbi.nlm.nih.gov/articles/PMC12838375/) by communicating with us as if they are another human trying to connect with us. And even as we try to check their work, it is easy to fall into [confirmation fatigue](https://changkun.de/blog/ideas/human-in-the-loop-agents/), much like how we fail to read pop-up boxes and click “accept” to simply make them go away. After seeing dozens of these per day, who isn’t tired of dealing with these repetitive nuisances? Using generative AI tools as scientists requires a rigorous level of caution and vigilance that should not be ignored or underestimated. Nevertheless, given its demonstrated advantages for some tasks, I do think we can learn to use chatbots without compromising our research integrity. 

### Extra: Prompt Writing Best Practices 
*([source](https://jtvanleuven.github.io/Git-R-and-Unix-for-Reproducible-Scientific-Analysis/))*

1. Give context.  

Tell the chatbot what language or tool you're using and what your goal is. "I'm using bash on macOS and I want to…" is much better than just "write me a script." If relevant, indicate the packages or software libraries you are using or willing to use. 

2. Be specific  

Vague questions get vague answers. Describe exactly what you have and what you want the output to look like. Name your files, variables, and expected results. 

3. Ask the Chatbot what it needs.  

Chatbots at this point in their development do not frequently make requests or ask us questions. It will answer whatever query is presented by the user. However, you are likely to get a better answer if you ask the chatbot what information it needs from you to optimally address your query. 

4. Paste error messages verbatim  

When something breaks, copy the exact error message — don’t paraphrase it. The specific wording is often the key to diagnosing the problem.

5. Ask for explanations, not just code  

Follow up with "Explain what this script does line by line" or "Why does this step need to happen before the next one?" Understanding is the goal, not just having code that runs.

6. Iterate in the same conversation  

Keep the conversation going rather than starting over. "That worked — now modify it to also save a log file" builds on context the chatbot already has.
