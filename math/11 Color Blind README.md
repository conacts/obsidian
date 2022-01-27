# Color blind test
### Test:
#### Two options:
1. Machine Learning
2. Hard-coded analysis

### Machine Learning
The idea behind implementing machine learning would be for more integration of up to date technology. To actually implement we would need…
Large amounts of data (10,000 colorblind test takers)
A decent server to run the website

#### Benefits:
1. Could be more effective (most likely not though without lots of effort)
2. Way more fun than the “hard-coded” way

#### Drawbacks:
1. Very time intensive
2. Would most likely perform worse than hard coded way
3. Requires unreal amounts of test data (unless we can find a dataset to use)
4. We must finish the test soon

#### Problems and solutions:
1. Diagnosing color blindness and to what degree
	1. Supervised learning approach:
		1. This could be a supervised learning approach as you could make it a classification problem to put each person into a category based on how off their answer was in said test.
		2. You could make this a regression problem as you could attempt to guess to what degree the person’s color blindness is. 
2. Estimating the color blindness and providing the proper filter
	1. With the machine learning algorithm above, we may be able to estimate their color blindness to attempt to correct it. In effect, if one is using their computer screen it would make sense to make the colors on the screen appear as they do in the real world regardless of their color blindness or not which is where the chrome extension could help. 

### Hard Coded
The hard coded solution would be much simpler and faster to implement. With the proper function we could take in the user’s inputs and diagnose them properly. This shouldn’t be too hard and would provide us much more time to dive into other avenues like a nice website.

#### Benefits:
1. Means we don’t need a working prototype of our test to collect data so soon

#### Drawbacks:
1. Much less impressive project as it neglects something that could take this project to the next level
2. Much less robust function

#### Problems and solutions:
1. Diagnosing color blindness and to what degree
	1. We would utilize the RGB values and how far the guessed values are from the actual values. These would give us key insights into what colors our test taker is deficient in. 
	2. To diagnose to what degree, we would once again strictly rely on the RGB values and how far they stray from the actual answer
2. Estimating the color blindness and providing the proper filter
	1. Would most likely require someone to take a second test where they answer which color looks the most “correct” to them. This would enable us to get insights on a set number of filters applied to the images that they chose from and claimed looked “the most natural”. 
	2. We could also ask which one looks the most red/yellow/blue for which color blindness we guessed they are


## Website:
Currently I am really invested in a flashy website. I don’t know how necessary it is to win, but I think it is entertaining which is why I put so much time into it. I do feel that a nice interface would give us a huge leg up, but the product is probably most important.

### Website Ideas:
The idea is to have two pages, the results page and the test page. We could add a 3rd page for facts / introduction to the team but that isn’t really needed (could merge “facts” and “about the team” with results page)
1. Test page:
	1. Currently the plan is to have a single scroll page that prevents a user from scrolling up to change a previous answer. It will auto scroll with little effort to take them to the next phase of the test so the user doesn’t have to reload any pages while taking the test.
2. Results page:
	1. The results page is also planned to be a one stop shop. We want the users' results to be presented in a fun way that provides a great, shareable experience. If we can diagnose people as color blind and they never knew this would be game changing. 
	2. We could append the facts page to this. It would include items like “1 in every 12 men are color blind” and “red-green color blindness is the most common”

## Chrome Extension:
Building a chrome extension wouldn’t be that much harder to add onto the project, but it would be one more thing. In my mind, this is the last thing that needs to be added to our project but would be the icing on the cake if successful. My idea is that it would just implement the designed filter from the test as a product. Without the chrome extension there is no need to fix the color blindness / diagnose it to what degree.
