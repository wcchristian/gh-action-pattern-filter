
FROM python:3.7-slim

LABEL "com.github.actions.name"="Github Pattern Filter"
LABEL "com.github.actions.description"="Checks added, modified, and removed files on the github push event for a specific regex, if found, this action exits normally and workflow continues. If not found, this action exits Neutral and rest of workflow is skipped."
LABEL "com.github.actions.icon"="filter"
LABEL "com.github.actions.color"="black"

LABEL "repository"="https://github.com/wcchristian/gh-pattern-filter-action"
LABEL "homepage"="https://anderc.com"
LABEL "maintainer"="Christian Andersen <c.andersen2012@gmail.com>"

WORKDIR /usr/src/app
COPY main.py ./
RUN ls

ENTRYPOINT ["python", "/usr/src/app/main.py"]