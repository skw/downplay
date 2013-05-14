# \/ downplay (1) language reference

Downplay borrows aspects from both Markdown, Textile, and Jade to derive a functional, but strict and clearly defined specification.

## headers

	h level one header
	hh level two header
	hhh level two header
	
or
	
	h1 level one header
	h2 level two header
	h3 level three header
	
transpiles to:
	
	<h1>level one header</h1>
	<h2>level two header</h2>
	<h3>level three header</h3>

## paragraphs

	Lorem ipsum.
	
or
	
	p Lorem ipsun.
		
transpiles to:

	<p>Lorem ipsum.</p>
	
## anchors

### definition

	[$link_description]($url)($target)

### example

	[link](//google.com)
	[link](//google.com)(new)
	
transpiles to:

	<a href="//google.com">link</a>
	<a href="//google.com" target="_blank">link</a>

## unordered lists

	- One
	- Two
	- Three

transpiles to:

	<ul>
		<li>One</li>
		<li>Two</li>
		<li>Three</li>
	</ul>

## ordered lists

	# One
	# Two
	# Three

or

	1 One
	3 Three
	2 Two

transpiles to:

	<ol>
		<li>One</li>
		<li>Two</li>
		<li>Three</li>
	</ol>

If numbers are used, order is dictated by numeral, such that:

	2 Two
	3 Three
	1 One
	
still transpiles to:

	<ol>
		<li>One</li>
		<li>Two</li>
		<li>Three</li>
	</ol>

## definition lists

definition lists in downplay are 

	> Damon Albarn
		: Vocals and rhythm guiter
	> Graham Coxon
		: lead guitar
	
	<dl>
		<dt>Damon Albarn</dt>
		<dd>Vocals and rhythm guitar</dd>
		<dt>Graham Coxon</dt>
		<dd>lead guitar</dd>
	</dl>

## images

### definition

	<$image_description>($url)($dimensions)

### examples

	<cheese>(//cheese_pic.png)
	
transpiles to:

	<img src="//cheese_pic.png" alt="cheese">

## tables

Tables in downplay are not visual representations of table structures. Text-based visual representations of tables are painful to maintain and structure, so this table syntax is an attempt at a more human readable and maintainable structure. Drawing inspiration from Jade, hashes, and coffeescript, this is a 

	{
	name
	role
	}
		(
			damon albarn
			vocalist
		)
		(
			graham coxon
			guitarist
		)

or

	{name, role}(damon albarn, vocalist)(graham coxon, guitarist)
	
transpiles to:

	<table>
		<thead>
			<th>
				<td> name
				<td> role
			</th>
		</thead>
		<tbody>
			<tr>
				<td> damon albarn
				<td> vocalist
			</tr>
			<tr>
				<td> graham coxon
				<td> guitarist
			</tr>
		</tbody>
	</table>

## emphasis

strong emphasis

	*very important*

transpiles to:

	<strong>very important</strong>

emphasis

	_somewhat important_
	
transpiles to:

	<em>somewhat important</em>

Note: There is no represenation of `<i>` and `<b>` as these are stylistic tags and these properties should be represented in style sheets.

## comments

	// this is a comment
	\\
	This is a comment block.
	\\


## variables and mustache template support

downplay can easily be extended with mustache template support.