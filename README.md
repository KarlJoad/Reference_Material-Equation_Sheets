# Reference Material **AND** Equation Sheets
This repository holds the LaTeX equation sheets and reference material that Karl Hallsby made for his classes.
These courses are both from IIT and from Lund University's LTH (Lunds Tekniska Högskola).
To use this repository, you must `git clone` this repository to a directory.

-------------------------------------------------------------------------------
Note: You could also download this repository as a `.zip` folder, and unzip it yourself.
However, you will not get the most up-to-date documents all the time.

# PDF Output
All documents are output to [`./TeX_Output/`](https://github.com/KarlJoad/Reference_Material-Equation_Sheets/tree/master/TeX_Output).

The PDFs are named the same as their LaTeX counterparts.
**You can download the PDFs individually!!**

## PDF Hyperlinks
These PDFs will have hyperlinks in them, which will allow you to click through the document to jump somewhere quickly.
*The hyperlinks may show up as colored boxes.*
  * The **red** boxes are hyperlinks to jump through the documents
  * The **blue** boxes are hyperlinks to websites/web locations
  * The **green** boxes are citation hyperlinks to the bibliography (if one is present)

If the PDF does NOT look like it has these boxes, then it is *YOUR* PDF viewer, since I have generated all of the reference guides with the `hyperref` LaTeX package.
You can try using a different viewer, which may display the boxes.
**However, if you cannot see the boxes, it is likely that your PDF viewer will still correctly handle these hyper links. If you hover your mouse over something you think would be a hyperlink, you might see a finger button to "click" on it.**

# Repository Structure
## Reference Material vs. Equation Sheet
This repository holds both types for documents.
However, reference materials are full textbook-like documents that have:
  * Karl's personal notes from the course
  * Content from the textbook
  * Content from the professor's lectures and lecture slides (if provided)
  * Example problems from the textbook, homework, exams, quizzes, etc.
  * Any additional information that *I* find useful to successfully complete the course

Equation sheets are what they sound like.
They are:
  * Small documents, usually just a few pages
  * ***ONLY*** have equations, with no explanation on where they come from
	* There is usually no information on how to use them either.
  * Designed with the course's exams in mind

## Reference Materials
### `TEMPLATE.tex`
This is a template document that all Reference Materials documents will be based off of.
It provides a skeleton framework for each document to be customized with.

### `Reference_Sheet_Preamble.tex`
This is a LaTeX preamble document that is `\input` to every **Reference Sheet**.
  * **Equation Sheets** will get a customized preamble everytime.
  * This ensures that the packages that are in each document are the same, and that they will have a similar formatting to them.

# Separate Sections
For most of these, there will be an extra folder named `./Course_Num-Sections`.
This is where the extra LaTeX files are stored and pulled from.

## New Course Folder Naming Scheme (Fall 2019)
Starting in Fall 2019, I changed the way I named these extra folders.
They are now `./Course_Num-Short_Course_Name-Sections`.

# Drawings
Any images/drawings will be placed in `./Drawings/`.
Each class has its own subdirectory, therefore the same picture might be in several class's `Drawings` directory.
This is intentional.
