CREATE EXTENSION IF NOT EXISTS age;
LOAD 'age';
SET search_path = ag_catalog, "$user", public;

SELECT create_graph('domain_graph');

SELECT create_vlabel('domain_graph','form');
SELECT load_labels_from_file('domain_graph', 'form', '/graph-files/form.csv');

SELECT create_vlabel('domain_graph','function');
SELECT load_labels_from_file('domain_graph', 'function', '/graph-files/function.csv');

SELECT create_elabel('domain_graph','realizes');
SELECT load_edges_from_file('domain_graph', 'realizes', '/graph-files/realizes.csv');

SELECT create_elabel('domain_graph','requires');
SELECT load_edges_from_file('domain_graph', 'requires', '/graph-files/requires.csv');

SELECT create_elabel('domain_graph','has_variant');
SELECT load_edges_from_file('domain_graph', 'has_variant', '/graph-files/has_variant.csv');

SELECT create_elabel('domain_graph','precedes');
SELECT load_edges_from_file('domain_graph', 'precedes', '/graph-files/precedes.csv');
