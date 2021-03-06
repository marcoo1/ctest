<div id="help">
	<div class="scroll-body">
		<h1>About DIVE</h1>
		<h2>Project description</h2>
		<ul class="assets clearfix">
			<li><a href="/assets/dive_challenge_2014.pdf" target="_blank"><img
					src="${appBaseUrl}/static/img/paper.jpg" alt="DIVE Paper"></a></li>
			<li><a href="/assets/dive_iswc_poster_2.pdf" target="_blank"><img
					src="${appBaseUrl}/static/img/poster.jpg" alt="DIVE Poster"></a></li>
		</ul>
		<h2>User Experience Design</h2>
		<p>
			The core of digital hermeneutics is formed by two components: <i>object-event
				relationships</i> and <i>event-event relationships</i>. By making
			explicit relationships between the objects and events, and between
			the events themselves we can facilitate users in their access and
			interpretation processes of objects in online cultural heritage
			collections. In DIVE we aim at implementing those relations in an
			intuitive event-centric browsing interface for browsing cultural
			heritage collections by means of underlying linked data graph.
		</p>
		<p>Major effort was put in creating an interface with a clear
			identity and an engaging user experience that invite users to
			continue exploring at different levels of detail. Users become
			explorers diving deeper into the data, as a diver deeper and deeper
			into an ocean trench discovering new species. This metaphor makes the
			interface a "digital submarine", which provides navigation controls
			and supportive and manipulative tools. The design of the interface
			also forms an innovative "inifinite exploration path", which unlocks
			the potential of touchbased explorative user interfaces.</p>
		<p>
			An extensive design phase in which multiple concepts have been tested
			resulted in the DIVE "infinity browsing" interface, a combination of
			two core interaction concepts that involve a <i>horizontal level</i>
			supporting the breadth and a <i>vertical level</i> supporting the
			depth of information exploration and interpretation.
		</p>
		<p>
			The <i>horizontal level</i> displays the result set related to the
			seed keyword search in a dynamic presentation. At this level, user's
			exploration is supported by <i>event-centric filters</i> making
			explicit the relation of each object to either the depicted and
			associate events and their properties, e.g. people, locations and
			times involved in the events. Consistent <i>color coding</i> is used
			for each property type to allow for a quick discovery of desired type
			of objects. Large result sets are represented as a colored barcode to
			give an overview of the amount and composition of event properties in
			the search results. <i>Objects</i> are represented by type-color,
			type-icon, title and an image and associated with a set of <i>buttons</i>
			providing detailed information for each object, e.g. description,
			source and external links. To allow for active user engagement
			through sharing of personal perspectives and interpretations, users
			can add <i>comments</i> to each object and save them in private or
			shared <i>collections</i>. Additionally, we provide a set of related
			objects from the Europeana collections. Typical interactions at this
			level are:
		</p>
		<ul>
			<li>pinch or scroll the elements of the color barcode zooms in
				on the objects to reveal more information, e.g. image, title, icon
				of the event-related property (for example, an icon for location
				indicates that this object depicts a location of the related event).</li>
			<li>drag right or left the row of related objects reveals
				previous or next object on the horizontal level.</li>
			<li>arrows are used for navigating to previous or next objects
				in the row.</li>
			<li>search Option &amp; event filters allow to show sub-sets of
				related objects.</li>
		</ul>
		<p>
			The <i>vertical level</i> is formed by the user exploration history,
			as a path of selections on the horizontal level - leading to the last
			selected object. Each selection of an object results in a new row
			with related entities loaded under the selected object. Users can
			scroll back to a previous step, zoom out, choose another object and
			build a new path from there. This allows for fluid dynamics in
			collection exploration, discovery of alternative paths, and
			ultimately supports deep interpretation of cultural heritage
			collections. Our intention is to allow <i>saving each exploration
				history</i> as a collection so that users can revisit or share their
			browsing experiences.
		</p>
		<h2>Implementation details</h2>
		<p>
			The interface is developed in HTML5, Javascript and CSS3. A number of
			libraries are used to provide specific functionality: <a
				href="http://jquery.com"
				onclick="window.open($(this).attr('href')); return false;">jQuery</a>
			handles the major part of the functionalities like DOM interaction
			and manipulation, event handling and AJAX. <a
				href="http://velocityjs.org"
				onclick="window.open($(this).attr('href')); return false;">Velocity.js</a>
			is used to improve the performance of animations. <a
				href="http://hammerjs.github.io/"
				onclick="window.open($(this).attr('href')); return false;">Hammer.js</a>
			supports the handling of touch events. <a href="http://momentjs.com"
				onclick="window.open($(this).attr('href')); return false;">Moment.js</a>
			makes dates managable. As the amount of entities to display can be
			near the feasible limits of the webbrowsers effort was put in the
			optimization of the javascript code while maintaining readibility of
			the code. Examples of this include the gradual buildup of DOM
			elements, use of Prototypes and limiting features like animation and
			CSS3 filters on large collections.
		</p>
		<p>The interface acquires data from the data layer using the
			triple store's SPARQL API. Several queries are used to search
			entities by keyword, get related entities (events, persons, etc.) and
			get entity details. The returning data is handled by a client-side
			datamapper in Javascript which maps the datafields to an internal
			format which is used to build the interface representations. This
			approach relieves the server of unneccesary data parsing and
			contributes to compatibility with other data sets.</p>
		<p>
			A smart image cache has been implemented to provide a visual
			representation for other entities. Based on keywords from entity
			titles, images are retrieved from the five most relevant Wikipedia
			searches using the <a
				href="http://www.mediawiki.org/wiki/API:Main_page"
				onclick="window.open($(this).attr('href')); return false;">Wikipedia
				API</a>. If no images are found, another query is made to the <a
				href="http://www.opencultuurdata.nl/api/"
				onclick="window.open($(this).attr('href')); return false;">OpenCultuurData
				API</a> which covers an extensive set of Dutch open heritage- and
			cultural data. The quality and availabity of images through this
			system is acceptable and provides a powerful way of filling in the
			(visual) data gaps. These images increase the user experience by
			supporting the visual navigation throught the interface and
			rememberability and recognizability of individual entities.
		</p>
		<p>This version of the interface if optimized for tablets and
			modern web browsers.</p>
	</div>
</div>