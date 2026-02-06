Prefacio
========

The field of machine learning is concerned with the question of how to construct computer programs that automatically improve 
with experience. In recent years many successful machine learning applications have been developed, ranging from data-mining 
programs that learn to detect fraudulent credit card transactions, to information-filtering systems that learn users' reading 
preferences, to autonomous vehicles that learn to drive on public highways. At the same time, there have been important 
advances in the theory and algorithms that form the foundations of this field.

The goal of this textbook is to present the key algorithms and theory that form the core of machine learning. Machine learning 
draws on concepts and results from many fields, including statistics, artificial intelligence, philosophy, information theory, 
biology, cognitive science, computational complexity, and control theory. My belief is that the best way to learn about machine 
learning is to view it from all of these perspectives and to understand the problem settings, algorithms, and assumptions that 
underlie each. In the past, this has been difficult due to the absence of a broad-based single source introduction to the 
field. The primary goal of this book is to provide such an introduction.

Because of the interdisciplinary nature of the material, this book makes few assumptions about the background of the reader. 
Instead, it introduces basic concepts from statistics, artificial intelligence, information theory, and other disciplines as 
the need arises, focusing on just those concepts most relevant to machine learning. The book is intended for both undergraduate 
and graduate students in fields such as computer science, engineering, statistics, and the social sciences, and as a reference 
for software professionals and practitioners. Two principles that guided the writing of the book were that it should be 
accessible to undergraduate students and that it should contain the material I would want my own Ph.D. students to learn before 
beginning their doctoral research in machine learning.

A third principle that guided the writing of this book was that it should present a balance of theory and practice. Machine 
learning theory attempts to answer questions such as "How does learning performance vary with the number of training examples 
presented?" and "Which learning algorithms are most appropriate for various types of learning tasks?" This book includes 
discussions of these and other theoretical issues, drawing on theoretical constructs from statistics, computational complexity, 
and Bayesian analysis. The practice of machine learning is covered by presenting the major algorithms in the field, along with 
illustrative traces of their operation. Online data sets and implementations of several algorithms are available via the World 
Wide Web at http://www.cs.cmu.edu/-tom1 mlbook.html. These include neural network code and data for face recognition, decision 
tree learning,code and data for financial loan analysis, and Bayes classifier code and data for analyzing text documents. I am 
grateful to a number of colleagues who have helped to create these online resources, including Jason Rennie, Paul Hsiung, Jeff 
Shufelt, Matt Glickman, Scott Davies, Joseph O'Sullivan, Ken Lang, Andrew McCallum, and Thorsten Joachims.

ACKNOWLEDGMENTS

In writing this book, I have been fortunate to be assisted by technical experts in many of the subdisciplines that make up the 
field of machine learning. This book could not have been written without their help. I am deeply indebted to the following 
scientists who took the time to review chapter drafts and, in many cases, to tutor me and help organize chapters in their 
individual areas of expertise.

Avrim Blum, Jaime Carbonell, William Cohen, Greg Cooper, Mark Craven, Ken DeJong, Jerry DeJong, Tom Dietterich, Susan Epstein, 
Oren Etzioni, Scott Fahlman, Stephanie Forrest, David Haussler, Haym Hirsh, Rob Holte, Leslie Pack Kaelbling, Dennis Kibler, 
Moshe Koppel, John Koza, Miroslav Kubat, John Lafferty, Ramon Lopez de Mantaras, Sridhar Mahadevan, Stan Matwin, Andrew 
McCallum, Raymond Mooney, Andrew Moore, Katharina Morik, Steve Muggleton, Michael Pazzani, David Poole, Armand Prieditis, Jim 
Reggia, Stuart Russell, Lorenza Saitta, Claude Sammut, Jeff Schneider, Jude Shavlik, Devika Subramanian, Michael Swain, Gheorgh 
Tecuci, Sebastian Thrun, Peter Turney, Paul Utgoff, Manuela Veloso, Alex Waibel, Stefan Wrobel, and Yiming Yang.

I am also grateful to the many instructors and students at various universities who have field tested various drafts of this 
book and who have contributed their suggestions. Although there is no space to thank the hundreds of students, instructors, and 
others who tested earlier drafts of this book, I would like to thank the following for particularly helpful comments and 
discussions:

Shumeet Baluja, Andrew Banas, Andy Barto, Jim Blackson, Justin Boyan, Rich Caruana, Philip Chan, Jonathan Cheyer, Lonnie 
Chrisman, Dayne Freitag, Geoff Gordon, Warren Greiff, Alexander Harm, Tom Ioerger, Thorsten

Joachim, Atsushi Kawamura, Martina Klose, Sven Koenig, Jay Modi, Andrew Ng, Joseph O'Sullivan, Patrawadee Prasangsit, Doina 
Precup, Bob Price, Choon Quek, Sean Slattery, Belinda Thom, Astro Teller, Will Tracz

PREFACE

I would like to thank Joan Mitchell for creating the index for the book. I also would like to thank Jean Harpley for help in 
editing many of the figures. Jane Loftus from ETP Harrison improved the presentation significantly through her copyediting of 
the manuscript and generally helped usher the manuscript through the intricacies of final production. Eric Munson, my editor at 
McGraw Hill, provided encouragement and expertise in all phases of this project.

As always, the greatest debt one owes is to one's colleagues, friends, and family. In my case, this debt is especially large. I 
can hardly imagine a more intellectually stimulating environment and supportive set of friends than those I have at Carnegie 
Mellon. Among the many here who helped, I would especially like to thank Sebastian Thrun, who throughout this project was a 
constant source of encouragement, technical expertise, and support of all kinds. My parents, as always, encouraged and asked 
"Is it done yet?" at just the right times. Finally, I must thank my family: Meghan, Shannon, and Joan. They are responsible for 
this book in more ways than even they know. This book is dedicated to them.


