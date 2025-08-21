---
title: Using Large Langugae Models in R Programming
authors:
  - hkaur
categories:
  - AI
  - programming
  - large language models
draft: false
date: "2025-08-21T00:00:00Z"
image:
  caption: "Image: Karsten Wuerth"
  focal_point: ""
lastMod: "2025-08-21T00:00:00Z"
subtitle: ""
summary: ""
tags: []
---

## Overview

Generative AI tools specifically **Large Language Models (LLMs)** (e.g., ChatGPT, Claude, or GitHub Copilot) have become increasingly popular in the R programming world. However, the effectiveness of these tools is often questioned and can vary widely among users.

Everyone has their own opinion on how effective these tools are for R programming, based on their experiences. Some people find them incredibly helpful, while others think they are a waste of time. One’s experience with R programming, familiarity with AI tools, and the specific tasks they are trying to accomplish can greatly influence their perception of AI’s effectiveness.

**Note:**  *Please note that the knowledge base of these AI tools is unclear, and the underlying information lacks transparency. This could raise concerns about the quality of AI-generated responses, e.g., it might still generate answers using deprecated packages and functions.*

In this blog post, I will share my insights on using AI tools for R programming, including how to effectively write prompts, troubleshoot code, and best practices for leveraging AI assistance. The goal of this blog post is to help you with:

-   AI tools for R programming
-   Using AI for R programming
    -   Generate R code
    -   R code explanation
    -   Troubleshooting R code
    -   R code optimization
-   Best practices

## AI tools for R programming

Common AI tools available for R programming include GitHub Copilot, Claude, OpenAI’s ChatGPT, or LLM add-in packages for RStudio (such as gander, ellmer). The ChatGPT or Claude are LLM-based chatbots and can be used as a standalone tool and GitHub Copilot is an add-in for RStudio IDE.

Here are the links of the sources on how to install these tools:

-   GitHub Copilot: [Installation
    guide](https://docs.posit.co/ide/user/ide/guide/tools/copilot.html)

    -   This is a great add-in AI tool for: live code suggestion, code
        completion, or generating an entire function based on the
        context of analysis.

-   R packages for using LLM: These packages allows you to directly
    interact with LLMs from within RStudio, which can assist in
    programming questions.
    
    -   [ellmer](https://ellmer.tidyverse.org/)
    -   [Gander](https://posit.co/blog/introducing-gander/)


## Programming tasks that we can accomplish with AI tools

### Generate R code

We can use these tools for generating code to perform specific tasks in R, including: data wrangling, statistical analysis, data visualization, and more. We can also look for help in generating specific functions, or entire scripts based on the our requirements. However, the clarity in writing prompts can significantly affect the response of AI tools.

For example, using prompts like “create a plot in R” vs. “create a boxplot using ggplot2” can yield quite different results. Therefore, it’s crucial to utilize these tools for R programming with a clear action plan. In addition to that your choice of AI tool can also affect the output. Here, I have obtained quite different outputs from [ChatGPT](https://chatgpt.com/share/689bb1ab-78c4-8008-b07d-444c938a9368) and [Claude](https://claude.ai/public/artifacts/bb1c6a07-8bf2-42ed-b1c4-84aa829a2d5d) for the same prompt (‘create a plot in R’). We have obtained a detailed response from Claude with specific examples for different kinds of plots, while ChatGPT provided a more generic response with base R functions.

### R code explanation AI tools

AI tools can be helpful in understanding R code syntax as we can obtain faster explanations for specific functions, packages, or their parameters. This can be particularly useful for new R users or when working with unfamiliar packages.

Example:

> I am following an online [guide](https://bookdown.org/jgscott/DSGI/data-wrangling.html) for data wrangling (using the tidyverse package), and I’m confused about what the author is trying to achieve with a long loop of code. I pasted the code in ChatGPT and asked for an explanation of the code. Here’s a detailed answer for the code explanation line-by-line from [ChatGPT](https://chatgpt.com/share/689108db-7128-8008-b73a-812816507194).

### Troubleshoot R code with AI assistance

Often, we spent hours debugging R code by searching through package documentation or Stack Overflow. While these sources remain reliable, AI assistance can provide a faster explanation and solution of the error. The errors in R programming could be a simple error as a typo in a function name, or it could be a mispecification of the function arguments. The quickest way to figure out that error is: we can paste the error from R output and ask AI for the error explanation and solution to fix it or a suggestion for an alternative approach. AI tool can help you in troubleshooting R code by analyzing error messages, suggesting potential fixes, and providing explanations for common issues. But, remember that these tools cannot debug all kinds of errors,
some errors require expert’s advice.

### R code explanation

If you are new to R programming and not very familiar with R packages documentation, AI tools can be an excellent resource for understanding how to use specific functions and packages.

Here’s an example prompt for using ChatGPT for R package and code explanation:

> explanation of functions in dplyr package for data wrangling

[This](https://chatgpt.com/share/688a660b-ac24-8008-ad8b-9c6f3c33b8fd) was the first response from ChatGPT.

In addition to that, AI tools can also be used to understand how to use functions/packages in R, what parameters they take, and how to interpret the results. This can be especially useful when learning new packages.

> **Prompt**: Can you explain how to use the `ggplot()` function in R to create a boxplot for different treatments? Please provide an example code and explain the parameters used in the function.

Here’s an explanation of `ggplot()` function from [ChatGPT](https://chatgpt.com/share/6890e809-f000-8008-8822-02e47bf8f4dc).

Or, you can also take the output of the analysis and ask for the explanation of output and interpretation.

### For advanced R programming

If you’re a seasoned R programmer and want to improve your coding efficiency, you can benefit from AI assistance in several ways, such as, reproducible workflow, automate repetitive coding tasks, or code
optimization.

## Best practices for AI assisted R programming

While these tools can be helpful for R programming tasks, the suggested code/packages should be reviewed carefully, especially for accuracy and appropriateness for contexts. The tool you are using may not always understand the context of your task and can provide inefficient or incorrect solutions.

To ensure that you get the most out of AI tools for R programming, it’s important to follow some best practices:

### Know your AI tool

As mentioned before, we are not very familiar with algorithms and the knowledge base of these tools. They vary widely based on the specific AI model, its training data, and how it interprets your prompts.

Thus, it’s important to understand whether the response given by one tool is effective or not.

Here’s an example of the output from same prompt with ChatGPT and GitHub
Copilot:

> **Prompt**: Create summary statistics for iris data

Response in
[ChatGPT](https://chatgpt.com/share/68912382-8068-8008-83e4-0edf51b811a0)

Output from GitHub Copilot:

```{r, eval=FALSE, echo=TRUE}
    # create summary statistics for iris data
    # using the iris data set 
    # # load the iris data set
    data(iris)
    # create a summary statistics function
    summary_stats <- function(data) {
      summary_data <- data.frame(
        Mean = sapply(data[, -5], mean),
        Median = sapply(data[, -5], median),
        SD = sapply(data[, -5], sd),
        Min = sapply(data[, -5], min),
        Max = sapply(data[, -5], max)
      )
      return(summary_data)
    }
    # apply the summary statistics function to the iris data set
    summary_iris <- summary_stats(iris)
    # print the summary statistics
    print(summary_iris)

                Mean Median        SD Min Max
Sepal.Length 5.843333   5.80 0.8280661 4.3 7.9
Sepal.Width  3.057333   3.00 0.4358663 2.0 4.4
Petal.Length 3.758000   4.35 1.7652982 1.0 6.9
Petal.Width  1.199333   1.30 0.7622377 0.1 2.5
```

Here, we can see that both tools provided a solution for the task we requested, but the output from GitHub Copilot is more structured and includes a step-wise approach.

Before using AI tools for R programming, familiarize yourself with the specific tool you are using. Therefore, it’s important to understand the capabilities and limitations of these tools.

## AI trends

`print()` in R code is often suggested by AI tools. I don’t think we need it as many times AI suggests it.

### Optimize prompts for R programming tasks

When using AI tools for R programming, write clear and specific prompts to get the best results. Here are some tips for writing effective prompts:

-   Be clear and concise: se simple language to describe your programming task.

-   Providing context, even as simple as "use the dplyr package to filter data", can help in getting more successful suggestions.

-   If you are aware of the desired outcome, include it in your prompt. But it’s not easy for new learners and it’s hard to articulate in prompts. Alternatively, if you’re unsure of the correct answer, continue refining the prompt until you achieve the desired results.

-   Another potential trick is to start over a new chat. Every new prompt in the thread is analyzed in the context of previous prompts. If you’re struggling to get a desired response, try starting a new chat.

Here’s an example of bad, good, & excellent prompts along with a response from ChatGPT:

> **Bad prompt**: “Filter data in R”
> [Response](https://chatgpt.com/share/689cd9ba-1cd0-8008-b537-a38ba07824ef)

> **Good prompt**: “How to filter rows in a data frame where a column is greater than 10 in R?.”
> [Response](https://chatgpt.com/share/689cd92b-47c4-8008-af0a-a9a4d4abc380)

> **Excellent prompt**: “I have a data frame with columns ‘Name’, ‘Age’, > and ‘Score’. How can I filter for rows where Age is over 30 and Score > is less than 5 using dplyr package? Please provide a code example in R.”
> [Response](https://chatgpt.com/share/689cd96d-1440-8008-9cb5-f9e714833046)

### Validate your output

It’s possible that AI tools can generate outdated R syntax or provide wrong package/function names. Constantly review and verify the generated codes and packages with R documentation. Here are the few common issues
that can occur:

-   Simple errors: typos in the function names or incorrectly formatted ode (e.g., missing parentheses, commas, etc.

-   Recommending deprecated packages/functions or using functions that are not available in the specified package.

-   Issues with incorrect data types or structures: I have faced this multiple times. The AI tool you are using can not know about your data structure (unless you upload/explain it) and it can provide code that might not work. This can happen while working with a numeric data class when it should be factor/character class.

## Use AI tools as an assistant, not a replacement

Remember that these tools are supposed to assist in R programming tasks but not a replacement for one’s understanding of R. These tools can help in enhancing your skills and productivity, but don’t rely entirely on
these for all your programming needs.

Here are a few ways to verify the packages/functions:

-   Load the suggested package and run the function[1] and compare your output to the examples provided in the R documentation or textbook examples. This will help you in confirming the expected package functions and results.

-   Run the output code line-by-line; by executing the generated response line-by-line, you will be able to inspect the functionality of each function and its arguments. In addition to that, you will also be able to identify errors as sometimes R silently ignores errors by providing a `warning` only. In that scenario, your code will still execute, but the outcome might not be valid. This typically happens while working on a statistical analysis.

## Final thoughts

AI tools can be handy for R programming tasks, from generating code to explaining functions and troubleshooting issues. However, it’s important to use these tools effectively by writing clear prompts, validating the generated code, and understanding the limitations of the AI tools.

Please note that this is not a definite guide for using AI tools for R programming, but rather a starting point for beginners who want to explore AI tools for R programming. Also, the landscape of AI tools
continue to evolve, tips or practices working today might not be effective in future.

> Here are the best sources to check the R functions/packages: [R documentation](https://www.rdocumentation.org/), [CRAN](https://cran.r-project.org/), or [Stack
Overflow](https://stackoverflow.com/questions).


**Important:** *Please make sure to follow the [UI guidelines](https://support.uidaho.edu/TDClient/40/Portal/KB/ArticleDet?ID=3464) for using AI.*


