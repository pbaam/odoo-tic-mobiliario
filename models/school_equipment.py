from odoo import models, fields

class SchoolEquipment(models.Model):
    _name = 'school.equipment'
    _description = 'Inventario del instituto'

    name = fields.Char(required = True, string = 'Nombre')
    serial_number = fields.Char(required = True, string = 'Número de serie')
    cost = fields.Float(string = 'Coste')
    state = fields.Selection([
        ('in_use', 'En Uso'),
        ('maintenance', 'En Mantenimiento'),
        ('broken', 'Roto/Baja'),
    ], string = 'Estado')
    active = fields.Boolean(string = 'Activo')

    location = fields.Many2one('school.location', string = 'Localización')
    tags = fields.Many2many('school.equipment.tag', string = 'Etiquetas')
