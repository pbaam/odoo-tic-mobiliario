from odoo import models, fields

class SchoolLocation(models.Model):
    _name = 'school.location'
    _description = 'Localización de inventario'

    name = fields.Char(required = True, string = 'Nombre')
