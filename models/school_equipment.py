from odoo import models, fields, api #para importar la api
from odoo.exceptions import ValidationError
class SchoolEquipment(models.Model):
    _name = 'school.equipment'
    _description = 'Inventario del instituto'

    name = fields.Char(required = True, string = 'Nombre')
    serial_number = fields.Char(required = True, string = 'Número de serie')
    purchase_date = fields.Date(string = 'Fecha de compra')
    cost = fields.Float(string = 'Coste')
    state = fields.Selection([
        ('en_uso', 'En Uso'),
        ('en_mantenimiento', 'En Mantenimiento'),
        ('roto', 'Roto/Baja'),
    ], default = 'en_uso', string = 'Estado')
    active = fields.Boolean(string = 'Activo')

    location_id = fields.Many2one('school.location', string = 'Localización')
    tags_ids = fields.Many2many('school.equipment.tag', string = 'Etiquetas')


    # Restricción SQL (_sql_constraints):
    _sql_constraints = [
        ('serial_unique',
         'UNIQUE(serial_number)',
         'El número de serie debe ser único.')
    ]

    # Restricción Python (@api.constrains):
    @api.constrains('cost')
    def _check_cost_positive(self):
        for record in self:
            if record.cost < 0:
                raise ValidationError("El coste no puede ser negativo.")