FROM python:3.13-slim
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
RUN mkdir /webapp
WORKDIR /webapp
COPY requirements.txt /webapp/
RUN pip install -r requirements.txt
COPY . /webapp/

# Create a non-root user and group
# `groupadd webuser` creates a new group named 'webuser'.
# `useradd -m -g webuser webuser` creates a new user named 'webuser', assigns it to the 'webuser' group (-g), 
# and creates a home directory for the user (-m).
RUN groupadd webuser && useradd -m -g webuser webuser

# Set ownership of the directory
# `mkdir -p /webapp/staticfiles` creates the directory '/webapp/staticfiles' if it doesn't already exist (-p ensures no error if the directory exists).
# `chown -R webuser:webuser /webapp/staticfiles` changes the ownership of the directory '/webapp/staticfiles' 
# and all its contents recursively (-R) to the 'webuser' user and group.
RUN mkdir -p /webapp/staticfiles && chown -R webuser:webuser /webapp/staticfiles

# Set permissions for the directory
# `chmod -R 755 /webapp/staticfiles` sets the permissions of the directory '/webapp/staticfiles' 
# and all its contents recursively (-R) to allow the owner to read, write, and execute (7), 
# and others to read and execute (5).
RUN chmod -R 755 /webapp/staticfiles

# # Switch to the non-root user
USER webuser