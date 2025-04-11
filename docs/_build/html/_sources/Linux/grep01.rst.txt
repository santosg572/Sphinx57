How to use the grep command in Linux + examples 
===============================================

The Global Regular Expression Print or grep command searches specific lines containing a particular pattern in a file. It is useful for quickly checking if 
an entry exists, especially for large items like log files.

You can add various options to modify the command behavior for specific tasks, like inverse search and multi-keyword lookup. Due to its flexibility, grep is 
an essential tool for managing your Linux virtual private server (VPS).

This article will explain how to use the grep command in Linux, including its syntax and options. You will also learn some of its real-world applications for 
managing files in your system. 

.. toctree::

   Grep command syntax :ref:`my-reference-label`

Using the Linux grep command
Basic search
Recursive search

Print entries around the matching line
Case-insensitive search
Inverted search
Display line numbers
Using grep with regular expressions
Search multiple patterns
Count matches
Combine grep with other commands
Redirect output
How to use the grep command FAQ
What is the grep command used for?
What are the most common options used with grep?
Can I search for a pattern in multiple files or directories using grep?
How do I search for lines that do not match a pattern?

.. my-reference-label:

Grep command syntax
-------------------

The basic grep syntax looks as follows:

grep [options] pattern [FILE] 
Here is the explanation of what each element means:

grep – the utility name.
options – arguments that modify the grep command’s behavior.
pattern – the keyword you want to look up.
file – the item whose content you want to search. 
In the later section, we will explain the most commonly used options and their real-world usage examples.

Read the grep manual to learn more about all the options. Alternatively, check this utility guide in your command-line interface by entering:

grep --help
grep command guide in Terminal
Remember that you must have the “read” privilege of the file you want to check with grep. Read our tutorial on how to change permissions in Linux.

Using the Linux grep command
In this section, we will discuss common usage of the grep utility. If you are using a VPS, run the command via an SSH client like PuTTY. For desktops, open 
the Linux Terminal by pressing Ctrl + Alt + T.

Basic search
The most basic usage of grep is to filter text files, outputting lines that contain a particular word. To do so, run this command without an option like this 
syntax:

grep keyword file
You can also list multiple file names like so:

grep pattern file1 file2 file3
If you want to use a phrase as the search string, enclose the pattern using a quotation mark. For example, this command will find lines containing Linux 
distro in the hostinger.txt sample file:

grep "Linux distro" hostinger.txt 
grep outputs matching lines from a file
Note that the syntax only works if the input file is within your current directory. If it is in another location, specify the full path like so:

grep pattern /path/to/the/file.txt
Important! Since Linux commands like grep are case-sensitive, pay attention to capitalization in your search pattern and file name.

Recursive search
You can recursively search all the files and subdirectories within a folder using the -r option. Here is the syntax:

grep -r keyword path/to/a/folder
For example, we have a tutorial/content/linux directory containing two folders called commands and utilities. To search the word VPS in all files within 
these folders, simply run grep on the parent path:

grep -r VPS tutorial/content/linux
The grep command will list matched lines from any file and folder within the tutorial/content/linux directory.

grep recursively searches files within different subfolders
Print entries around the matching line
Grep lets you output lines after and before the matching entry to provide you with more context. To do so, add these options followed by the number of 
neighboring lines you want to print:

A – prints the line after the matching entry.
B – outputs the line before the matching entry.
C – displays lines both after and before the entry.
For example, run the following grep syntax to print an entry after the matching lines:

grep -A1 pattern file
grep prints a line after the matching entry
Case-insensitive search
By default, grep will treat patterns with different letter cases as a different string. For example, you can’t search Grep and GREP using the keyword grep. 
You can disable this behavior by adding the -i option:

grep -i keyword file
If we want to search for the word vps and ignore case distinctions, run the following command:

grep -i vps hostinger.txt
Grep finds the pattern VPS ignoring case distinctions
Inverted search
Add the -v option to your grep command like this syntax to enable the reverse lookup, printing non-matching lines:

grep -v keyword file
For example, this command displays only those lines without the word VPS from the hostinger.txt file:

grep -v VPS hostinger.txt
Grep prints lines that don't match the searched pattern
Display line numbers
If you are working with large files like a log, the output data can be very long. It makes checking the location of the pattern difficult. To simplify the 
task, you can display the line numbers with the -n option like so:

grep -n keyword file
For example, this command will print the lines from auth.log containing the word unknown user and their numbers:

grep -n "unknown user" auth.log
The line that begins with the number one means it is the first entry from the auth.log file, and so on.

Grep command shows the line numbers
Pro Tip
You can combine grep options to refine the search. For example, run grep -nv pattern file to display the line number of entries that dont contain the 
specified pattern.

Using grep with regular expressions
Regular expressions, or regex, are strings of characters that define a search pattern. It is useful for finding a very specific query without having to list 
the keywords individually. Here are several regex symbols and their signifiers:

. – matches any single character.
* – represents zero or more of the preceding character.
+ – signifies one or more of the preceding characters.
? – indicates zero or one of the preceding characters.
^ – indicates the start of a regex pattern.
$ – represents the end of a regex pattern.
() – groups patterns.
These regular expressions behave differently whether you use the extended regular expression (ERE) with the -E option or the default basic regular expression 
(BRE). For more information, read about the differences between BRE and ERE.

For example, if you want to search patterns like abc and acc, run the following command. The dot (.) symbol will match any character:

grep -E 'a.c' file
The ^ and $ symbols let you search for lines that begin or end with a specific pattern. Consider this grep command example:

grep -E '^pattern' file
The above command will match lines that begin with pattern, like pattern is a string of text. Meanwhile, the following will search for entries that end with 
pattern:

grep -E 'pattern$' file
You can also combine multiple regex symbols to refine your search for a more specific result. For example, this command will look for lines containing any 
word that begins with an H and ends with R:

grep '^H.*R$' 1.txt
Grep searches patterns using regex
Search multiple patterns
You can search multiple keywords using a single grep command. The simplest way to do so is by listing the keywords within quotation marks (‘) separated by 
backslashes (\) and pipes (|). Here is how the syntax looks:

grep 'pattern1\|pattern2\|pattern3' file
In this command, grep uses BRE since we are not adding any options. To prevent it from interpreting the pipe as the queried pattern, we escape it using the 
backslash.

Grep searches two patterns from a file
You can also search multiple patterns without a backslash by adding the -E option to enable the pipe’s special function like so:

grep -E 'pattern1|pattern2|pattern3' file
Instead of the -E option, you can do so using the egrep command:

egrep 'pattern1|pattern2|pattern3' file
If you want to specify the patterns separately, use the -e option for each search query. Here is the command syntax:

grep -e pattern1 -e pattern2 -e pattern3 file
All these grep command variations output the same result. So, choose one based on your preferences.

Count matches
Several system administration tasks might require you to check how many lines in a file have a matching pattern. For example, this is useful for counting 
login attempts from a specific IP address in a log file.

To check how many lines contain a pattern, use the -c or –count option like so:

grep -c pattern file
However, the -c option counts the matching lines, not the pattern occurrence. If you want to check it, use the -o option and pass it to the wc command like 
so:

grep -o pattern file | wc -l
Instead of displaying the entire line, the -o option prints only the pattern occurrences, which the wc command count. We will discuss using a pipe (|) in the 
later section.

grep counts the number of pattern occurrences
Note that this command also counts other variants of the keyword. For example, if you use the pattern connect, grep will check for the likes of reconnect, 
connected, connecting, and disconnected.

If you want to count the exact matching word, add the word boundaries at the beginning and the end of your keyword. Here’s an example:

grep -o '\bpattern\b' file 
Combine grep with other commands
In addition to files and directories, you can filter input data from another command using grep. To do so, combine them using a pipe (|) like so:

command | grep pattern
In the snippet, the pipe redirects the output from the first command to grep, filtering the result based on the keyword. Here is a real-world usage example:

ls | grep '\.txt$'
The ls command lists the content of your current directory. Then, the grep command filters the output, printing TXT files within the folder. Here is another 
example:

ps aux | grep "process_name" 
The ps aux command lists all running processes in your system. Then, the grep utility searches for a particular one from the list based on its name.

Depending on your task, you can combine grep with other tools. Hostinger VPS hosting users who are unsure which utilities to use can use our AI assistant, 
Kodee, to help explain and generate the complete command.

For example, ask Kodee, “I want to list all services in my Ubuntu VPS and use the grep utility to filter the output, printing only ones related to NGINX. 
Generate the full command.”

grep command generated by Kodee AI assistant
It will then write the appropriate command for your system and needs.


Redirect output
System administrators might need to save the grep command results for further processing or an archive. An easy way to do so is by redirecting the output to 
a text file using the greater than (>) symbol. Here is the syntax:

grep pattern file > target_file.txt
If the target file doesn’t exist, the grep command will automatically create it in your current working directory.

To check if grep saves the output correctly, print the content of the target file using the cat command like so:

cat target_file.txt
Want to learn more about Linux Commands?
Check out our Linux commands tutorial to learn more about other commonly used server management utilities.

Conclusion
The grep command lets you use a pattern to find lines from a file. Its basic syntax is grep pattern file, but you can add various options to modify the 
search based on your needs.

For example, add the -r option to recursively search patterns from files and subdirectories within a folder. While grep is case-sensitive by default, you can 
disable this setting using the -i flag to find a matched pattern regardless of its capitalization.

You can also print non-matching lines using the -v option and add the -n option to show their sequence number. For more complex search patterns, you can use 
regular expression symbols.

In real world usage, you might need to combine grep with other commands and redirect the search results to a file for backup. Since this utility is very 
versatile, use Kodee to write the full command.

How to use the grep command FAQ
What is the grep command used for?
The grep command is commonly used to search lines containing a specific keyword in a file. It is also useful for filtering another utility’s output, printing 
only ones with a particular pattern. You can do so by piping the command to grep.

What are the most common options used with grep?
One of the most common options in grep includes -i, which ignores the case sensitivity in your search query. Another popular option is -r, enabling you to 
search all files and folders within a directory. 

Can I search for a pattern in multiple files or directories using grep?
Yes, you can search a keyword in multiple files or directories by listing them. Enter grep pattern file1.txt file2.txt to find a pattern in files. To check 
keywords from multiple directories, use the -r option followed by their parent’s path. 

How do I search for lines that do not match a pattern?
To print lines that don’t match a pattern, add the -v option to your grep command. It will enable the reverse search functionality, outputting all entries 
from a file that doesn’t contain the keyword.

https://www.hostinger.com/tutorials/grep-command-in-linux?utm_campaign=Generic-Tutorials-DSA|NT:Se|LO:MX-EN&utm_medium=ppc&gad_source=1&gclid=CjwKCAjw--K_BhB5EiwAuwYoyvF06cyEJoV0cwR87nqhjjKMliEt0HtK8anvzAa3rtRiiNRYN0Qe4hoCfOMQAvD_BwE


