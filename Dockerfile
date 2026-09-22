# The public website: static pages served by nginx on Cloud Run's port.
FROM nginx:1.27-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html about.html login.html pricing.html case-study.html /usr/share/nginx/html/
COPY assets /usr/share/nginx/html/assets
EXPOSE 8080
