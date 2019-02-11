docker-openrefine
=================

This is a reworking of https://github.com/SpazioDati/docker-openrefine, 
available on [Docker Hub][1].

The Dockerfile sets up [OpenRefine 3.1][2]. 

There is scaffolding to enable some extensions, including the following, 
but I have not got them to work yet with 3.1 so they are commented out:

- [RDF extension][3] to bring Linked Data capabilities to OpenRefine
- [NER extension][4] to allow Named Entity Recognition on texts
- [Geo extension][5] that adds geo utilities both on conversion and visualization
- [extra ctu extension][6] to extract email addresses, urls and phone numbers from texts


Build the docker image
----------------------

```
git clone https://github.com/pixelandpen/docker-openrefine
cd docker-openrefine
docker build -t pixelandpen/openrefine .
```

Run the docker container
------------------------

Running it is as simple as:

    docker run --name openrefine -p 80:3333 --rm pixelandpen/openrefine

If you want refine projects to be persistent, you must mount `/mnt/refine` as follows:

    docker run --name openrefine -p 80:3333 -v /path-to-host:/mnt/refine pixelandpen/openrefine

You can also increase the max size of the heap, by specifying the REFINE_MEMORY environment variable:

    docker run --name openrefine -p 80:3333 -e REFINE_MEMORY=24G pixelandpen/openrefine

[1]: https://registry.hub.docker.com/u/spaziodati/openrefine/
[2]: https://github.com/OpenRefine/OpenRefine/
[3]: https://github.com/fadmaa/grefine-rdf-extension
[4]: https://github.com/giTorto/Refine-NER-Extension
[5]: https://github.com/giTorto/geoXtension
[6]: https://github.com/giTorto/extraCTU-plugin
