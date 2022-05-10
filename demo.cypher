CREATE (matei:Person {name:"Matei"})
CREATE (alex:Person {name:"Alex"})

CREATE (matei) - [:TEAMMATE {lecture:"Advanced database concepts"}] -> (alex)
CREATE (alex) - [:TEAMMATE {lecture:"Advanced database concepts"}] -> (matei)

CREATE (group:GROUP {number: 17})

CREATE (matei) - [:WORKS_IN] -> (group)
CREATE (alex) - [:WORKS_IN] -> (group)
