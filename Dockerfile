# اختر إصدار أودو المطابق للموديول الخاص بك (مثلاً 16.0 أو 17.0)
FROM odoo:15.0

USER root

# نسخ ملف الإعدادات إلى الحاوية
COPY ./config/odoo.conf /etc/odoo/

# نسخ الموديول الخاص بك إلى مسار الإضافات داخل الحاوية
COPY ./custom_addons /mnt/extra-addons

# إذا كان الموديول يحتاج مكتبات Python خارجية، قم بإلغاء التعليق عن السطرين التاليين:
# COPY requirements.txt /
# RUN pip install -r /requirements.txt

USER odoo