//create nodes and relationships
CREATE (matei:Person {name:"Matei"})
CREATE (alex:Person {name:"Alex"})

CREATE (matei) - [:TEAMMATE {lecture:"Advanced database concepts"}] -> (alex)
CREATE (alex) - [:TEAMMATE {lecture:"Advanced database concepts"}] -> (matei)

CREATE (project:GROUP {number: 17})

CREATE (matei) - [:WORKS_ON] -> (project)
CREATE (alex) - [:WORKS_ON] -> (project)

//Updating

MATCH (alex {name: "Alex"}) - [paper:WORKS_ON] -> (:GROUP)
SET paper.work_hours = 100

MATCH (matei {name: "Matei"}) - [paper:WORKS_ON] -> (:GROUP)
SET paper.work_hours = 100

MATCH (alex)
SET alex.name = "Alex Constantinescu"
RETURN alex

MATCH (matei)
SET matei.name = "Matei Grosu"
RETURN matei

MATCH (alex)
SET alex.age = 21, alex.height = 180
RETURN alex

MATCH (matei)
SET matei.age = 20, matei.height = 180
RETURN matei

//Querying for nodes

MATCH (n) RETURN n

//All nodes with specific label 
MATCH (person:PERSON) RETURN person

//Properies
MATCH (person:PERSON) RETURN person.name, player.height
