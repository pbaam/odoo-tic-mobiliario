from odoo import models, fields

class SchoolEquipmentTag(models.Model):
    _name = 'school.equipment.tag'
    _description = 'Etiqueta de inventario'

    name = fields.Char(required = True, string = 'Nombre')
    color = fields.Integer(required = True, string = 'Color')
