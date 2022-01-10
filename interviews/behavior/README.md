# Behavior

**Resume**

Current work

digital currency settlement project:&#x20;

tech used: java spring boot aop, state machine, tls, internal cron job tool, jenkins

Three types of payment files in csv format

credit: check visa main vault bal then send from visa main vault to acquirer vault&#x20;

debit: send money from issuer vault to visa main vault

fundwire: move money from visa trading vault to/from visa main vault for minting/burning

FT-API flow:

&#x20;   control file arrive -> kick off job stream -> FT-API parse files -> filter pattern check for dup data file, sett amount and record ct match in data/control file -> job retry -> get api signing key and transfer key from visa vault -> process payment one by one via state machine -> if succeed record actual transaction else 400 record failed 500 generate new data/control file for retry

Cron job:

Every day should recevie 3 types per file from upper stream -> db -> cr -> fw

Retry exponential backoff, client side rate limit, TLS certificate connecting to proxy and vault, setup non prod/prod api keys via ecdsa key gen algo



**4 Areas of CORE VALUES evaluation:**

Each interviewer will ask a situational question and will be assessing you on one specific competency (**Adaptability, Collaboration, Drive for Results, or Customer Focus**). Try to determine which competency the interviewer may be looking for as you listen to their question carefully before you respond. Try to respond highlighting that competency. These competencies are listed below with sample interview questions

1\.      Adaptability

·         Tell me about a time when you were asked to do something you had never done before. How did you react? What did you learn?

&#x20;       Fidelity desktop app

&#x20;       Situation:

&#x20;           At fidelity, qa engineer faces heavy workload to manually convert test db queries from oracle to h2 dialect as testcases volumne grow. I was assigned a task to create a new tool to automatically convert given oracle dml queries to h2 dml queries. I was given less than a week, i sit with qa engineer to clarify requirements, built the design myself and implemented it. i also went beyond requirement to quickly learn and built a wizard ui with java swing lib. As result, qa workload reduces by 40%

&#x20;       Task:

&#x20;       Action:

&#x20;       Result:

·         Describe a situation in which you embraced a new system, process, technology, or idea at work that was a major departure from the old way of doing things.

&#x20;        Janitor&#x20;

&#x20;         At Aws, 2 weeks before a release, i was assigned to develop a janitor batch app to clean up orphaned dns records in route53. It was my first time working on new batch app in cloud environment.&#x20;

&#x20;        Situation:

&#x20;       Task:

&#x20;       Action:

&#x20;       Result:

·         Recall a time when you were assigned a task outside of your job description. How did you handle the situation? What was the outcome?

&#x20;      n/a

&#x20;      Situation:

&#x20;       Task:

&#x20;       Action:

&#x20;       Result:

·         Tell me about the biggest change that you have had to deal with. How did you adapt to that change?

&#x20;       People left team, workload increase, talk to manager and team to understand the priorities and see which stories can be backlog.&#x20;

&#x20;        Situation:

&#x20;       Task:

&#x20;       Action:

&#x20;       Result:

·         Tell me about a time when you had to adjust to a colleague’s working style in order to complete a project or achieve your objectives.

&#x20;         Worked with QA on testing file upload, i prefer he understands the story context first and discuss with me quickly before opening bug report but he prefers opening bug directly and discuss later. I listened to his opinion and&#x20;

1\.      Collaboration

·         Give an example of when you had to work with someone who was difficult to get along with. How did you handle interactions with that person?

&#x20;         DBA. DBA guy often delay delivering&#x20;

·         Tell me about a time when you were communicating with someone and they did not understand you. What did you do? What was the outcome?

&#x20;           Concurrency

·         Tell me about one of your favorite experiences working with a team and your contribution.

&#x20;          digital currency settlement project

·         Describe the best partner or supervisor with whom you’ve worked. What part of their managing style appealed to you?

&#x20;         Visa manager.

·         Can you share an experience where a project dramatically shifted directions at the last minute? What did you do?

&#x20;         N/A

1\.      Drive for Results

·         Tell me about a time you went above and beyond in your role to complete a project or a task.

·        Digital currency settlement design.&#x20;

&#x20;        Tell me about a specific project where you felt you made the most impact, and why?

&#x20;         Digital currency settlement.

·         What single project or task would you consider your most significant career accomplishment to date? Walk me through the plan, how you managed it, how you measured its success, and what the biggest mistakes you made were.

1\.      Customer Focus

·         Tell me about a time you had to deal with a specific customer issue. How did you (not your team) help to fix the problem for the customer?

&#x20;        AWS bug

·         Please provide me with an example of how you solved a customer inquiry at your previous job. What were the exact steps you used.

&#x20;        File upload

·         Describe a situation where you made changes to standard procedures in order to increase customer satisfaction metrics. How did you get support for this? What constraints did you face? How did you measure the outcome?



**Tell me about yourself**

&#x20;     I have been in the industry for over 3 years, primarily working in web backend and full stack development. I am currently a software engineer at Visa for over a year. I enjoy my job because team are collaborative and work towards same goal. In my recent assignment I was on a project that lasted nine months. I made a significant contribution because of my expertise in java and software development. One of my strengths is my attention to detail. I am known for being very thorough and meeting or exceeding deadlines and goals. My boss knows that I work well under minimal supervision, that I am very conscientious and that the job will be done right the first time. Now I am looking to expand my experience across different industries, particularly in XXX, which is why i am so interested in joining XXX.&#x20;



**Receive critical feedback**

&#x20;_In the past, I’ve been told to aws batch job_

#### Tell me about a time you overcame an obstacle

In the recent work I did at Visa, I was assigned to design/develop file upload, parsing, and management of new user transaction report. The requirements was ambiguous under constrained deadline. I actively researched, set up meetings to ask questions and go over design. At end, I completed a mvp within given time and received recognitions from all team members involved.

**Why leave?**

For Amazon: I'm looking for an opportunity where I can fully leverage my skills and experience, while also balancing time with family and friends. I believe we perform our best when we have a healthy balance between work and life."

For Visa: I am seeking out opportunities that will allow me to make full use of my newly acquired backend and cloud skills.

&#x20;

**Why do you want to work here?**

Do research and say company culture, products, accomplishment or any blogs

Study job description and say what attracts you and match you

List a few things about the job aligning with your career goals
