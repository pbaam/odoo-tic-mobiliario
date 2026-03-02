{
    'name': 'Inventario TIC y Mobiliario',
    'depends': ['base'],
    'application': True,
    'installable': True,
    'license': 'LGPL-3',
    'author': 'Pablo Álvarez, Miguel Arnauda, Dilan Solarte',
    'data': [
        'security/ir.model.access.csv',
        'security/school_security.xml',
        'views/school_equipment_views.xml',
        'views/school_menus.xml',
    ],
}
