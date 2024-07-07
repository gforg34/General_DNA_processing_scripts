#!/bin/python 

import gfapy
import networkx as nx
import matplotlib.pyplot as plt

# Load the GFA file
#gfa = gfapy.Gfa.from_file('/projects/125-emmer/kostas/outputs_from_scripts/pggb_output/inversion_only_ref_wew/merged.renan.wew.south.north.inversion.pggb.fasta.5ec6fdc.417fcdf.11fe66b.smooth.final.gfa')
gfa = gfapy.Gfa.from_file('/projects/125-emmer/kostas/outputs_from_scripts/pggb_output/region_42400_42700/merged_small_wew_renan_south_north.fa.5ec6fdc.417fcdf.11fe66b.smooth.final.gfa')

# Create a NetworkX graph
G = nx.Graph()

# Add nodes and edges from the GFA file
for segment in gfa.segments:
    G.add_node(segment.name)
for link in gfa.edges:
    G.add_edge(link.from_segment, link.to_segment)

# Draw the graph in a circular layout
pos = nx.circular_layout(G)
plt.figure(figsize=(12, 12))
nx.draw(G, pos, with_labels=True, node_size=50, font_size=8)
#plt.show()

# Save the graph as an image
plt.savefig('/projects/125-emmer/kostas/outputs_from_scripts/pggb_output/region_42400_42700/pangenome_graph.png')

