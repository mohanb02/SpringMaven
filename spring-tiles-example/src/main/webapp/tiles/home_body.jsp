<div>
	<h2 class="blog-post-title">How the pattern works</h2>
	<p class="blog-post-meta">
		To understand this pattern, let's take an example. 
		In the following picture you can see a typical structure of a web page.
	</p>
	<img src="/resources/images/tiled_page.png" >
	<p>
		This structure is called "Classic Layout". 
		The template organizes the page according to this layout, putting each "piece" in the needed place, so that the header goes up, the footer down, etc.
		It can happen that, for example clicking on a link, it is needed to change only a part of the page, typically the body.	
	</p>
	<hr/>
	<h2 class="blog-post-title">The role of the View Helper</h2>
	<p>
		Each piece of the composed page can have a "view helper". 
		This pattern allows the preparation of the data to be displayed in a consistent way for the page piece itself, for example to create a menu.
	</p>
	<blockquote>
		<p>
			Tiles is a composite view framework: it allows to reuse page pieces across the application. 
			But another approach to achieve the same result is using the Decorator pattern. 
			For example, Sitemesh is based on the Decorator pattern. 
		</p>
	</blockquote>
	<p>
		Instead of creating a template and organizing the pieces together, 
		the Decorator pattern (in this case) takes a simple HTML page, transforms it adding the missing pieces 
		(in our example, adding header, footer and menu) and finally renders it.
	</p>
	<h2>Required libraries</h2>
	<p>
		The first thing is to install the required libraries. 
		For the purpose of this tutorial, we will install everything: 
		the more we can do, the better. Just know that a more "lightweight" but limited configuration is available.
		If you're using maven, just include this dependency, it will include the rest:
	</p>
	<blockquote>
		<p>
		 	<groupId>org.apache.tiles</groupId>
			<artifactId>tiles-extras</artifactId>
		</p>
	</blockquote>	

	<h2>Tiles concepts</h2>
	<p>
		Tiles is an implementation of the Composite View pattern. 
		Tiles adds to this pattern its own concepts to make the pattern concrete. 
		The implementation of Tiles around the Composite View pattern consists of the Template, Attribute and Definition construct. 
		The View Helper pattern is implemented by the View Preparer construct.	
	</p>
	<h3>Template</h3>
	<p>
		In Tiles, a template is the layout part of a page. 
		We can see it as a page structure with some gaps, called attributes, to be filled.
	</p>
	<h3>Attribute</h3>
	<p>
		An attribute is a gap in a template that needs to be filled in your application. 
		An attribute can be of three types:
		<ul>
			<li>string: it is a string to be directly rendered as it is.</li>
			<li>template: it is a template, with or without attributes. If it has attributes, you have to fill them too to render a page.</li>
			<li>definition: it is a reusable composed page, with all (or some) attributes filled (see below).</li>
		</ul>
	</p>
	<h3>Definition</h3>
	<p>
		A definition is a composition to be rendered to the end user; 
		essentially a definition is composed of a template and completely or partially filled attributes.
		<ul>
			<li>If all of its attributes are filled, it can be rendered to the end user.</li>
			<li>If not all of its attributes are filled, it is called an abstract definition, and it can be used as a base definition for extended definitions, or their missing attributes can be filled at runtime.</li>
		</ul>
	</p>
</div>
