FROM frappe/erpnext:version-15

USER frappe
WORKDIR /home/frappe/frappe-bench

RUN source env/bin/activate && \
    git clone --depth 1 --branch main https://github.com/frappe/crm apps/crm && \
    pip install -e apps/crm && \
    git clone --depth 1 --branch main https://github.com/frappe/builder apps/builder && \
    pip install -e apps/builder
