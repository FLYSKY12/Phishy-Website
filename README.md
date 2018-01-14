Machine Learning Problem:-
In todays world where almost all user data is online, phishing has become a major menace. We
want to classify websites as phishing websites based on some attributes.
Numbers against the attributes show the possible categories for that attribute. The descriptions
for the features have been given only to fulfill your curiosity.
< F eatureN ame − Setof P ossibleV alues > −[Description(if N ecessary)]
• Has an IP Address in URL {−1, 1}
• URL length {1, 0, −1}
1 - Short length URL (len < 54); 0 - Medium length URL (54 < len < 75); -1 - Long length
URL (len > 74).
• URL Shortening Service Used {1, −1}
URL Shortening services (like TinyURL) are used sometimes to redirect to phishing websites.
• Having @ Symbol {1, −1}
Using ’@’ symbol in the URL leads the browser to ignore everything preceding it, and thus
can be used for phishing.
• Uses Redirection {−1, 1}
The ’//’ symbol can be used in a URL path to redirected to another website, and thus can
be used for phishing.
• Has Prefix/Suffix {−1, 1}
Phishers tend to add prefixes or suffixes using the dash(−) symbol, which is rarely used in
legitimate URLs.
• Having Sub-Domain {−1, 0, 1}
1 - Having no sub domain; 0 - Having one sub domain; -1 - Having multiple sub domian.
• Uses HTTPS {−1, 1, 0}
1 - uses https with trusted certificate; 0 - uses https with untrusted certificate; -1 - Otherwise.
• Domain Registration Length {−1, 1}
-1 - Domain expires in one year; 1 - Otherwise.
• Has Favicon {1, −1}
-1 - Favicon Loaded From External Domain; 1 - Otherwise.
• Uses other Ports {1, −1}
• Uses HTTPS Token {−1, 1}
The phishers may add the ”HTTPS” token to the domain part of a URL in order to trick
users.
• Requests other URL {1, −1}
1 - % of external requests < 22%; 0 - 22% < % of external requests < 61%); -1 - Otherwise.
4• URL of Anchor {−1, 0, 1}
1 - % of URL Of Anchor < 31%; 0 - 31% < % of URL Of Anchor < 67%); -1 - Otherwise.
• Links used in tags {1, −1, 0}
1 - % of Links in meta, script and link tags < 17%; 0 - 17% < % of Links in meta, script
and link tags < 84%); -1 - Otherwise.
• SFH {−1, 1, 0}
-1 - SFH is ”about: blank” ; 0 - SFH ”refers to” A Different Domain;1 - Otherwise .
• Submitting something to Email {−1, 1}
• Abnormality in URL {−1, 1}
• Website Forwarding {0, 1}
1 - Redirected pages < 1; 0 - 2 < Redirected pages < 4%); -1 - Otherwise.
• Performs actions on Mouseover event {1, −1}
• Tampers with context menu {1, −1}
• Has popup window {1, −1}
Legitimate websites hardly have pop-ups in them.
• Uses Iframe {1, −1}
Phishers can make use of the ”iframe” tag to display an additional webpage into one that is
currently shown.
• Age of Domain {−1, 1}
-1 - website life < 6months; 1 - Otherwise
• DNS Record Present {−1, 1} Most Phishing websites do not have a DNS record.
• Amount of Web Traffic {−1, 0, 1}
-1 - If domain has no traffic and no record in Alexa Database; 1 - Ranked among the top
100,000 websites; 0 - Otherwise.
• Page Rank {−1, 1}
PageRank is a value ranging from ”0” to ”1”, which aims to measure how important a
webpage is on the Internet. The greater the PageRank value the more important the webpage.
In our datasets, most phishing webpages have no PageRank.
• Google Index found {1, −1}
This feature examines whether a website is in Googles index or not.
• Pages linked to this page {1, 0, −1}
1 - More than 2 external links pointing to the webpage ; -1 - No external links pointing to
webpage ; 0 - Otherwise.
• Statistical Report Present {−1, 1}
• Whether this is a phishing site or not {−1, 1} (Expected as Output )


Based on this information, train a classifier to judge whether a given site is a phishing website
or not.