select 
case when A + B <= C or B+C <=A or A+C<=B then "Not A Triangle"
     when A = B and B = C then "Equilateral"
     when A = B or B = C or A=C then "Isosceles"
     else "Scalene"
     end as traingles_slides
     from TRIANGLES;