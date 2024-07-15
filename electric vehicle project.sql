create database electric_vehicle_project;
select* from electric_vehicle_populationdata;
select ModelYear,count("DOL Vehicle ID") from electric_vehicle_populationdata
where ModelYear>=2010
group by ModelYear 
order by ModelYear;

##state wise num of vehicles
select state,count("DOL Vehicle ID") as num_of_vehicles from electric_vehicle_populationdata
group by state;

##total num of vehicles by make
select Make,count("DOL Vehicle ID") as num_of_vehicles  from electric_vehicle_populationdata
group by  make
order by num_of_vehicles desc
limit 10;

##total vehicles by clean alternative fuel vehicle eligibility
select Clean_Alternative_Fuel_Vehicle_CAFV_Eligibility,count("DOL Vehicle ID") as num_of_vehicles from electric_vehicle_populationdata
group by Clean_Alternative_Fuel_Vehicle_CAFV_Eligibility
order by  num_of_vehicles;

##total num of vehicles by model
select model,count("DOL Vehicle ID") as num_of_vehicles  from electric_vehicle_populationdata
group by model
order by num_of_vehicles desc
limit 10;


