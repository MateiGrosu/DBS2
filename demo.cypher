CREATE 
(matei:Person {name:"Matei"})
(alex:Person {name:"Alex"})

(matei) - [:TEAMMATE {lecture:"Advanced database concepts"}] -> (alex)
(alex) - [:TEAMMATE {lecture:"Advanced database concepts"}] -> (matei)

(group:GROUP {number: 17})

(matei) - [:WORKS_IN] -> (group)
(alex) - [:WORKS_IN] -> (group)
