#!/bin/sh
/Users/sven/bin/arctee '/Users/sven//Library/CloudStorage/GoogleDrive-pr.giersig@gmail.com/Meine Ablage/data/hypothesis/{utcnow}.json' --retries 3 -- "/Users/sven/Library/CloudStorage/GoogleDrive-pr.giersig@gmail.com/Meine Ablage/PARA/2. Areas/Technik & Programmierung/hpi/bin/ex_hypothesis.sh"

/Users/sven/bin/arctee '/Users/sven//Library/CloudStorage/GoogleDrive-pr.giersig@gmail.com/Meine Ablage/data/pocket/{utcnow}.json' --retries 3 -- "/Users/sven/Library/CloudStorage/GoogleDrive-pr.giersig@gmail.com/Meine Ablage/PARA/2. Areas/Technik & Programmierung/hpi/bin/ex_pocket.sh"

/Users/sven/bin/arctee '/Users/sven//Library/CloudStorage/GoogleDrive-pr.giersig@gmail.com/Meine Ablage/data/github/{utcnow}.json' --retries 3 -- "/Users/sven/Library/CloudStorage/GoogleDrive-pr.giersig@gmail.com/Meine Ablage/PARA/2. Areas/Technik & Programmierung/hpi/bin/ex_github.sh"

/Users/sven/bin/arctee '/Users/sven//Library/CloudStorage/GoogleDrive-pr.giersig@gmail.com/Meine Ablage/data/instapaper/{utcnow}.json' --retries 3 -- "/Users/sven/Library/CloudStorage/GoogleDrive-pr.giersig@gmail.com/Meine Ablage/PARA/2. Areas/Technik & Programmierung/hpi/bin/ex_instapaper.sh"

/Users/sven/bin/arctee '/Users/sven//Library/CloudStorage/GoogleDrive-pr.giersig@gmail.com/Meine Ablage/data/rescuetime/{utcnow}.json' --retries 3 -- "/Users/sven/Library/CloudStorage/GoogleDrive-pr.giersig@gmail.com/Meine Ablage/PARA/2. Areas/Technik & Programmierung/hpi/bin/ex_rescuetime.sh"

/Users/sven/bin/arctee '/Users/sven//Library/CloudStorage/GoogleDrive-pr.giersig@gmail.com/Meine Ablage/data/goodreads/{utcnow}.json' --retries 3 -- "/Users/sven/Library/CloudStorage/GoogleDrive-pr.giersig@gmail.com/Meine Ablage/PARA/2. Areas/Technik & Programmierung/hpi/bin/ex_goodreads.sh"

#/Users/sven/bin/arctee '/Users/sven//Library/CloudStorage/GoogleDrive-pr.giersig@gmail.com/Meine Ablage/data/firefox/{utcnow}.json' --retries 3 -- "/Users/sven/Library/CloudStorage/GoogleDrive-pr.giersig@gmail.com/Meine Ablage/PARA/2. Areas/Technik & Programmierung/hpi/bin/ex_firefox.sh"

#/Users/sven/bin/arctee '/Users/sven//Library/CloudStorage/GoogleDrive-pr.giersig@gmail.com/Meine Ablage/data/reddit/{utcnow}.json' --retries 3 -- "/Users/sven/Library/CloudStorage/GoogleDrive-pr.giersig@gmail.com/Meine Ablage/PARA/2. Areas/Technik & Programmierung/hpi/bin/ex_reddit.sh"

osascript -e 'display notification "Successfully fetched HPI data" with title "HPI data"'
