docker-openrefine
=================

A Dockerfile setting up OpenRefine 2.6 with some useful extensions, among which:

- [RDF extension][1] to bring Linked Data capabilities to OpenRefine
- [NER extension][2] to allow Named Entity Recognition on texts
- [Geo extension][3] that adds geo utilities both on conversion and visualization
- [extra ctu extension][4] to extract email addresses, urls and phone numbers from texts

Run the docker
--------------

This docker is hosted on the [official docker.io hub][5]. Running it is as simple as:

    docker run -p 80:3333 spaziodati/openrefine

If you want refine projects to be persistent, you must mount `/mnt/refine` as follows:

    docker run -p 80:3333 -v /path-to-host:/mnt/refine spaziodati/openrefine

You can also increase the max size of the heap, by specifying the REFINE_MEMORY environment variable:

    docker run -p 80:3333 -e REFINE_MEMORY=24G spaziodati/openrefine

[1]: https://github.com/fadmaa/grefine-rdf-extension
[2]: https://github.com/giTorto/Refine-NER-Extension
[3]: https://github.com/giTorto/geoXtension
[4]: https://github.com/giTorto/extraCTU-plugin
[5]: https://registry.hub.docker.com/u/spaziodati/openrefine/
