-- fsfwvreverververvrevrv
SELECT
    cast(externalId as STRING) as externalId,
    '{{ isc_OrganizationalFoundationSchemaSpace }}' as space,
    cast(name as STRING) as name,
    cast(description as STRING) as description,
    cast(used_by_container as STRING) as used_by_container
FROM VALUES
    ('GeoRegion', 'GeoRegion', 'Top-level geographic region grouping countries.', 'GeoLocations'),
    ('Country', 'Country', 'Country-level geographic node.', 'GeoLocations'),
    ('City', 'City', 'City or locality; anchor for functional assets and warehouses.', 'GeoLocations'),
    ('Company', 'Company', 'Legal entity at the top of the organisational hierarchy.', 'BusinessUnits'),
    ('BusinessUnit', 'BusinessUnit', 'Business unit within a company.', 'BusinessUnits'),
    ('CostCenter', 'CostCenter', 'Cost center accountable for assets and spend.', 'BusinessUnits'),
    ('Warehouse', 'Warehouse', 'Warehouse or storage site.', 'StorageLocations'),
    ('Zone', 'Zone', 'Zone within a warehouse.', 'StorageLocations'),
    ('StorageBin', 'StorageBin', 'Storage bin within a zone.', 'StorageLocations'),
    ('ProductSector', 'ProductSector', 'Top-level sector in the product classification hierarchy.', 'ProductHierarchy'),
    ('ProductFamily', 'ProductFamily', 'Product family within a product sector.', 'ProductHierarchy'),
    ('ProductGroup', 'ProductGroup', 'Product group within a product family.', 'ProductHierarchy'),
    ('ProductSubgroup', 'ProductSubgroup', 'Product subgroup within a product group.', 'ProductHierarchy')
    AS t(externalId, name, description, used_by_container)
