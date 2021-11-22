CREATE TABLE IF NOT EXISTS data (
    incident_data_set_reference INT NOT NULL,
    incident_name VARCHAR(99) NOT NULL,
    incident_is_final VARCHAR(1) NOT NULL,
    incident_date_last_update VARCHAR(20) NOT NULL,
    incident_date_created VARCHAR(20) NOT NULL,
    incident_administrative_unit VARCHAR(259) NOT NULL,
    incident_administrative_unit_url INT,
    incident_county VARCHAR(59),
    incident_location VARCHAR(145) NOT NULL,
    incident_acres_burned INT,
    incident_containment INT,
    incident_control VARCHAR(451),
    incident_cooperating_agencies VARCHAR(1083),
    incident_longitude NUMERIC(24, 14),
    incident_latitude NUMERIC(19, 15),
    incident_type VARCHAR(8),
    incident_id VARCHAR(36) NOT NULL,
    incident_url VARCHAR(136) NOT NULL,
    incident_date_extinguished VARCHAR(20),
    incident_dateonly_extinguished DATETIME,
    incident_dateonly_created DATETIME,
    is_active VARCHAR(1) NOT NULL,
    calfire_incident VARCHAR(5) NOT NULL,
    notification_desired VARCHAR(5) NOT NULL
);

CREATE TABLE IF NOT EXISTS countyList (
    county_number INT NOT NULL,
    county_name VARCHAR(15) NOT NULL,
    county_population INT NOT NULL
);

CREATE TABLE IF NOT EXISTS user(
    username VARCHAR(25) NOT NULL,
    password VARCHAR(25) NOT NULL,
    role CHAR(5) NOT NULL,
    user_action CHAR(15) NOT NULL,
    data_set_reference INT NOT NULL

);

INSERT INTO data(incident_data_set_reference, incident_name, incident_is_final, incident_date_last_update, incident_date_created, incident_administrative_unit, incident_administrative_unit_url,
incident_county, incident_location, incident_acres_burned, incident_containment, incident_control, incident_cooperating_agencies, incident_longitude, incident_latitude,
incident_type, incident_id, incident_url, incident_date_extinguished, incident_dateonly_extinguished, incident_dateonly_created, is_active, calfire_incident, notification_desired)
    VALUES
    (1,'Bridge Fire','Y','2018-01-09T13:46:00Z','2017-10-31T11:22:00Z',' Shasta-Trinity National Forest ',NULL,'Shasta','I-5 and Turntable Bay, 7 miles NE of Shasta Lake ',37,100,NULL,' Shasta-Trinity National Forest ',-122.309,40.774,NULL,'2ca11d45-8139-4c16-8af0-880d99b21e82','https://osfm.fire.ca.gov/incidents/2017/10/31/bridge-fire/','2018-01-09T13:46:00Z','2018-01-09 00:00:00','2017-10-31 00:00:00','N','False','False'),
    (2,'Pala Fire','Y','2020-09-16T14:07:35Z','2009-05-24T14:56:00Z','CAL FIRE San Diego Unit',NULL,'San Diego','Hwy 76 and Pala Temecula, northwest of Pala',122,100,NULL,'CAL FIRE San Diego Unit',1,1,'Wildfire','8f61f461-552d-4538-b186-35ab030da416','https://osfm.fire.ca.gov/incidents/2009/5/24/pala-fire/','2009-05-25T00:00:00Z','2009-05-25 00:00:00','2009-05-24 00:00:00','N','True','False'),
    (3,'River Fire','Y','2013-02-28T20:00:00Z','2013-02-24T08:16:00Z','CAL FIRE San Bernardino Unit',NULL,'Inyo','south of Narrow Gauge Rd & north of Hwy 136, east of Lone Pine',406,100,NULL,'CAL FIRE San Bernardino Unit, Inyo County Sheriff, US Forest Service, BLM, LADWP, Lone Pine Volunteer Fire Department, Big Pine Volunteer Fire Department, Olancha Volunteer Fire Department, Independence Volunteer Fire Department.',-118.01651,36.602575,NULL,'094719ba-a47b-4abb-9ec5-a506b2b9fd23','https://osfm.fire.ca.gov/incidents/2013/2/24/river-fire/','2013-02-28T20:00:00Z','2013-02-28 00:00:00','2013-02-24 00:00:00','N','True','False'),
    (4,'Fawnskin Fire','Y','2013-04-22T09:00:00Z','2013-04-20T17:30:00Z','San Bernardino National Forest',NULL,'San Bernardino','west of Delamar Mountain, north of the community of Fawnskin, northside of Big Bear Lake',30,100,NULL,'San Bernardino National Forest',-116.941311,34.288877,NULL,'58f89ff8-bd3e-4355-b1c0-8fa05c747d3f','https://osfm.fire.ca.gov/incidents/2013/4/20/fawnskin-fire/','2013-04-22T09:00:00Z','2013-04-22 00:00:00','2013-04-20 00:00:00','N','False','False'),
    (5,'Gold Fire','Y','2013-05-01T07:00:00Z','2013-04-30T12:59:00Z','CAL FIRE Madera-Mariposa-Merced Unit',NULL,'Madera','Between Road 210 and Road 200 near Fine Gold Creek in the community of O',274,100,NULL,'CAL FIRE Madera-Mariposa-Merced Unit',-119.635004,37.116295,NULL,'357ffc13-bef9-48eb-810f-c5de851972eb','https://osfm.fire.ca.gov/incidents/2013/4/30/gold-fire/','2013-05-01T07:00:00Z','2013-05-01 00:00:00','2013-04-30 00:00:00','N','True','False'),
    (6,'Panther Fire','Y','2013-05-09T09:00:00Z','2013-05-01T09:12:00Z','CAL FIRE Butte Unit',NULL,'Tehama','140K3 Line, 8 miles northwest of Butte Meadows',6965,100,NULL,'CAL FIRE Butte Unit, CAL FIRE, USFS (Lassen and Plumas NF), CDCR, SPI, Collins Pine, Chico Fire Department',-121.595555,40.190062,NULL,'53122f0f-fefc-4dbf-b2d8-566b42ced66d','https://osfm.fire.ca.gov/incidents/2013/5/1/panther-fire/','2013-05-09T09:00:00Z','2013-05-09 00:00:00','2013-05-01 00:00:00','N','True','False'),
    (7,'Silverado Fire','Y','2013-05-01T17:15:00Z','2013-04-30T23:44:00Z','CAL FIRE Sonoma-Lake-Napa Unit',NULL,'Napa','7300 block of Silverado Trail, north of Napa',75,100,NULL,'CAL FIRE Sonoma-Lake-Napa Unit',-122.350844,38.441792,NULL,'d8d1c943-7b5d-4885-9043-f41075d6eded','https://osfm.fire.ca.gov/incidents/2013/4/30/silverado-fire/','2013-05-01T17:15:00Z','2013-05-01 00:00:00','2013-04-30 00:00:00','N','True','False'),
    (8,'Yellow Fire','Y','2013-05-03T06:15:00Z','2013-05-01T02:01:00Z','CAL FIRE Sonoma-Lake-Napa Unit',NULL,'Sonoma','Hwy 128 & Yellow Jacket Ranch Rd in Knights Valley, northwest of Calistoga',125,100,NULL,'CAL FIRE Sonoma-Lake-Napa Unit',-122.655616,38.638828,NULL,'64e4f81e-d872-44c4-ba8d-111fa77124ba','https://osfm.fire.ca.gov/incidents/2013/5/1/yellow-fire/','2013-05-03T06:15:00Z','2013-05-03 00:00:00','2013-05-01 00:00:00','N','True','False'),
    (9,'Summit Fire','Y','2013-05-04T18:30:00Z','2013-05-01T12:38:00Z','CAL FIRE/Riverside County Fire ',NULL,'Riverside','Mias Canyon and Bluff Road in Banning',3166,100,NULL,'CAL FIRE/Riverside County Fire ',-116.941311,34.288877,NULL,'a1b14be5-a8cf-4e40-8588-96becf4c5879','https://osfm.fire.ca.gov/incidents/2013/5/1/summit-fire/','2013-05-04T18:30:00Z','2013-05-04 00:00:00','2013-05-01 00:00:00','N','True','False'),
    (10,'Tres Pinos Fire','Y','2013-05-03T18:45:00Z','2013-05-03T11:42:00Z','CAL FIRE San Benito-Monterey ',NULL,'San Benito','Highway 25 and Horizon Rd, Community of Tres ',354,100,NULL,'CAL FIRE San Benito-Monterey ',-120.937494,37.160346,NULL,'ca68f3c4-4906-4952-b794-4531d7da8369','https://osfm.fire.ca.gov/incidents/2013/5/3/tres-pinos-fire/','2013-05-03T18:45:00Z','2013-05-03 00:00:00','2013-05-03 00:00:00','N','True','False'),
    (11,'306 Fire','Y','2013-05-05T18:00:00Z','2013-05-01T19:00:00Z','CAL FIRE Tehama-Glenn Unit',NULL,'Glenn','2 miles south of the community of Elk Creek',217,100,NULL,'CAL FIRE Tehama-Glenn Unit',-122.560862,39.514139,NULL,'5649e78d-7c26-4698-89a0-b0fa9a35cf78','https://osfm.fire.ca.gov/incidents/2013/5/1/306-fire/','2013-05-05T18:00:00Z','2013-05-05 00:00:00','2013-05-01 00:00:00','N','True','False'),
    (12,'Lytle Fire','Y','2013-05-15T08:15:00Z','2013-05-13T13:30:00Z','USFS San Bernardino National Forest, CAL FIRE San Bernardino Unit',NULL,'San Bernardino','I-15 at Sierra Ave, near Lytle Creek',75,100,NULL,'USFS San Bernardino National Forest, CAL FIRE San Bernardino Unit, CAL FIRE, USFS, San Bernardino Co., San Bernardino City, Rialto, Rancho, Ontario, CHP, San Bernardino Sheriff''s Office',-117.4408,34.1834,NULL,'e2c4b308-9a2d-483b-8434-999bef9adc7c','https://osfm.fire.ca.gov/incidents/2013/5/13/lytle-fire/','2013-05-15T08:15:00Z','2013-05-15 00:00:00','2013-05-13 00:00:00','N','True','False'),
    (13,'Gorgonio Fire','Y','2013-05-05T18:45:00Z','2013-05-04T11:43:00Z','CAL FIRE/Riverside County Fire',NULL,'Riverside','Highway 243, south of Banning and north of Pine Cove',510,100,NULL,'CAL FIRE/Riverside County Fire',-116.855019,33.894055,NULL,'958ce6d2-97f9-4848-8620-d14ab87f329d','https://osfm.fire.ca.gov/incidents/2013/5/4/gorgonio-fire/','2013-05-05T18:45:00Z','2013-05-05 00:00:00','2013-05-04 00:00:00','N','True','False'),
    (14,'Grand Fire','Y','2013-05-21T19:45:00Z','2013-05-15T12:50:00Z','CAL FIRE / USFS Los Padres National Forest',NULL,'Kern, Ventura','South of Frazier Mountain Park Rd, South of Frazier Park',4346,100,NULL,'CAL FIRE / USFS Los Padres National Forest, CAL FIRE, USFS, KERN CO FD, VENTURA CO FD, KERN COUNTY SO, VENTURA CO SO, LA CO SO, LAFD, CALEMA, BLM, KERN CO RD DEPT., CHP, CALIFORNIA STATE PARKS',-118.9411,34.7861,NULL,'e0d038e9-0926-4c05-8317-ec7075a04b12','https://osfm.fire.ca.gov/incidents/2013/5/15/grand-fire/','2013-05-21T19:45:00Z','2013-05-21 00:00:00','2013-05-15 00:00:00','N','True','False'),
    (15,'54 Fire','Y','2013-05-17T08:30:00Z','2013-05-16T13:48:00Z','CAL FIRE Riverside Unit',NULL,'Riverside','Avenue 54 and Tyler Street, near the community of Coachella',40,100,NULL,'CAL FIRE Riverside Unit',-116.161201,33.655638,NULL,'e215290f-d0b4-48fd-be32-f599959347b1','https://osfm.fire.ca.gov/incidents/2013/5/16/54-fire/','2013-05-17T08:30:00Z','2013-05-17 00:00:00','2013-05-16 00:00:00','N','True','False'),
    (16,'Lake Fire','Y','2013-05-18T19:00:00Z','2013-05-17T13:23:00Z','CAL FIRE/Los Angeles County ',NULL,'Los Angeles','I-5 Southbound at Lake Hughes Road',712,100,NULL,'CAL FIRE/Los Angeles County ',-118.610044,34.49149,NULL,'39af7eac-c188-411f-8c8a-d165c5fca4a9','https://osfm.fire.ca.gov/incidents/2013/5/17/lake-fire/','2013-05-18T19:00:00Z','2013-05-18 00:00:00','2013-05-17 00:00:00','N','True','False'),
    (17,'Lilly 2 Fire','Y','2013-05-20T19:10:00Z','2013-05-19T15:07:00Z','CAL FIRE Madera-Mariposa-Merced Unit',NULL,'Madera','Off Road 400 & Sandy Beach Dr. in Yosemite Lakes',91,100,NULL,'CAL FIRE Madera-Mariposa-Merced Unit',-119.7917,37.1927,NULL,'2b765a08-c770-4b19-baa8-00dffe3fa838','https://osfm.fire.ca.gov/incidents/2013/5/19/lilly-2-fire/','2013-05-20T19:10:00Z','2013-05-20 00:00:00','2013-05-19 00:00:00','N','True','False'),
    (18,'Cottontail Fire','Y','2013-05-20T19:10:00Z','2013-05-20T15:45:00Z','CAL FIRE San Luis Obispo Unit',NULL,'San Luis Obispo','Cayucos Creek Rd & Thunder Canyon Rd north of Cayucos',35,100,NULL,'CAL FIRE San Luis Obispo Unit',-120.91375,35.49864,NULL,'f17c523c-bf01-4245-899b-7c2331096dae','https://osfm.fire.ca.gov/incidents/2013/5/20/cottontail-fire/','2013-05-20T19:10:00Z','2013-05-20 00:00:00','2013-05-20 00:00:00','N','True','False'),
    (19,'Cherry Fire','Y','2013-05-20T18:50:00Z','2013-05-20T13:47:00Z','CAL FIRE Riverside Unit',NULL,'Riverside','Off Sunset Ave & Mesa St in Banning',25,100,NULL,'CAL FIRE Riverside Unit',-116.907213,33.96201,NULL,'a60e315c-23d5-4ba4-869c-5c1e22a25e7a','https://osfm.fire.ca.gov/incidents/2013/5/20/cherry-fire/','2013-05-20T18:50:00Z','2013-05-20 00:00:00','2013-05-20 00:00:00','N','True','False'),
    (20,'Water Fire','Y','2013-05-21T19:30:00Z','2013-05-21T14:16:00Z','CAL FIRE/Riverside County Fire ',NULL,'Riverside','Off Whitewater Canyon Road in Whitewater',90,100,NULL,'CAL FIRE/Riverside County Fire ',-116.6534,33.9582,NULL,'13850faa-5bab-4fd7-bac3-433ce9250c4d','https://osfm.fire.ca.gov/incidents/2013/5/21/water-fire/','2013-05-21T19:30:00Z','2013-05-21 00:00:00','2013-05-21 00:00:00','N','True','False'),
    (21,'Shelton Fire','Y','2013-05-30T13:25:00Z','2013-05-30T11:20:00Z','CAL FIRE Tuolumne-Calaveras Unit ',NULL,'San Joaquin','off North Shelton Rd in the Linden Peters area',303,100,NULL,'CAL FIRE Tuolumne-Calaveras Unit ',-120.90325,38.04993,NULL,'0b51d59b-457d-4a62-b066-55c2b8d400e2','https://osfm.fire.ca.gov/incidents/2013/5/30/shelton-fire/','2013-05-30T13:25:00Z','2013-05-30 00:00:00','2013-05-30 00:00:00','N','True','False'),
    (22,'Border Fire','Y','2013-05-23T08:30:00Z','2013-05-22T16:14:00Z','CAL FIRE San Diego Unit',NULL,'San Diego','Off Alta Rd in the Otay Mesa area',100,100,NULL,'CAL FIRE San Diego Unit',-116.900368,32.564465,NULL,'e077e091-f890-477c-b948-eb23774b432e','https://osfm.fire.ca.gov/incidents/2013/5/22/border-fire/','2013-05-23T08:30:00Z','2013-05-23 00:00:00','2013-05-22 00:00:00','N','True','False'),
    (23,'San Felipe Fire','Y','2013-05-26T17:45:00Z','2013-05-23T12:20:00Z','CAL FIRE San Diego Unit',NULL,'San Diego','San Felipe Road, north of Highway 78, East of Julian',2781,100,NULL,'CAL FIRE San Diego Unit, CALFIRE, USFS, BLM, SAN DIEGO SHERIFF''S OFFICE, AMR, CAL EMA, SAN DIEGO CITY, LOCAL GOVERNMENT, SAN DIEGO FIRE AUTHORITY, RESERVATION, CCC',-116.52579,33.12111,NULL,'859479e3-918c-42c6-bb74-5fdc17930a16','https://osfm.fire.ca.gov/incidents/2013/5/23/san-felipe-fire/','2013-05-26T17:45:00Z','2013-05-26 00:00:00','2013-05-23 00:00:00','N','True','False'),
    (24,'Homestead Fire','Y','2013-05-25T18:45:00Z','2013-05-25T17:35:00Z','CAL FIRE San Luis Obispo Unit',NULL,'San Luis Obispo','Homestead Rd & Hwy 41, northeast of Atascadero ',50,100,NULL,'CAL FIRE San Luis Obispo Unit',-120.6368,35.5123,NULL,'5b5ce06d-7ea9-4d28-b564-715fd0d04f3f','https://osfm.fire.ca.gov/incidents/2013/5/25/homestead-fire/','2013-05-25T18:45:00Z','2013-05-25 00:00:00','2013-05-25 00:00:00','N','True','False'),
    (25,'Smiley Fire','Y','2013-05-25T23:00:00Z','2013-05-25T14:59:00Z','CAL FIRE/Riverside County Fire',NULL,'Riverside','Off Smiley Blvd & Vista Suelto Rd, north of Moreno Valley',124,100,NULL,'CAL FIRE/Riverside County Fire',-117.187934,33.963591,NULL,'9795afee-7e60-4ab3-b5c3-7df67f91c5f9','https://osfm.fire.ca.gov/incidents/2013/5/25/smiley-fire/','2013-05-25T23:00:00Z','2013-05-25 00:00:00','2013-05-25 00:00:00','N','True','False'),
    (26,'General Fire','Y','2013-05-31T06:15:00Z','2013-05-26T12:04:00Z','CAL FIRE San Diego Unit',NULL,'San Diego','Banner Grade area, south of Hwy 78 & east of Hwy 79, southeast of Julian',1271,100,NULL,'CAL FIRE San Diego Unit',-116.5209,33.04458,NULL,'07a5397c-a665-4f84-9a82-5f689cb2c8f3','https://osfm.fire.ca.gov/incidents/2013/5/26/general-fire/','2013-05-31T06:15:00Z','2013-05-31 00:00:00','2013-05-26 00:00:00','N','True','False'),
    (27,'White Fire','Y','2013-05-30T19:30:00Z','2013-05-27T14:45:00Z','USFS Los Padres National Forest',NULL,'Santa Barbara','Southeast of Lake Cachuma, approx. 12 miles southeast of Santa Ynez',1984,100,NULL,'USFS Los Padres National Forest',-119.82429,34.55048,NULL,'abc61995-8bea-4be1-aa49-ee378ab3baaa','https://osfm.fire.ca.gov/incidents/2013/5/27/white-fire/','2013-05-30T19:30:00Z','2013-05-30 00:00:00','2013-05-27 00:00:00','N','False','False'),
    (28,'Magic Fire','Y','2013-05-29T15:30:00Z','2013-05-28T11:30:00Z','Los Angeles County Fire Department',NULL,'Los Angeles','off Magic Mtn Parkway in Valencia',149,100,NULL,'Los Angeles County Fire Department',-118.58688,34.419284,NULL,'794412f2-1ba2-4217-ac38-49272a96fb6f','https://osfm.fire.ca.gov/incidents/2013/5/28/magic-fire/','2013-05-29T15:30:00Z','2013-05-29 00:00:00','2013-05-28 00:00:00','N','True','False'),
    (29,'Olive Fire','Y','2013-05-29T10:30:00Z','2013-05-28T15:24:00Z','Santa Barbara County Fire',NULL,'Santa Barbara','Hwy 246 and Meadowvale, East of Solvang ',170,100,NULL,'Santa Barbara County Fire',-120.074655,34.611824,NULL,'cb5f34a0-177e-445d-9349-dd94063a01d0','https://osfm.fire.ca.gov/incidents/2013/5/28/olive-fire/','2013-05-29T10:30:00Z','2013-05-29 00:00:00','2013-05-28 00:00:00','N','True','False'),
    (30,'Branch Fire','Y','2013-06-03T18:30:00Z','2013-06-01T17:27:00Z','Los Padres National Forest',NULL,'San Luis Obispo','west of the Carrizo Plain, Los Padres National Forest',500,100,NULL,'Los Padres National Forest',-120.05131,35.15832,NULL,'213dc89e-9f29-4480-91a6-aec5fb694999','https://osfm.fire.ca.gov/incidents/2013/6/1/branch-fire/','2013-06-03T18:30:00Z','2013-06-03 00:00:00','2013-06-01 00:00:00','N','False','False'),
    (31,'Murphy Fire','Y','2013-06-02T16:55:00Z','2013-06-02T13:30:00Z','CAL FIRE Tuolumne-Calaveras Unit',NULL,'Tuolumne','off Lime Kiln Rd',100,100,NULL,'CAL FIRE Tuolumne-Calaveras Unit',-120.33313,37.91529,NULL,'98bfbb7c-8446-4e2e-a268-7e961353723c','https://osfm.fire.ca.gov/incidents/2013/6/2/murphy-fire/','2013-06-02T16:55:00Z','2013-06-02 00:00:00','2013-06-02 00:00:00','N','True','False'),
    (32,'Lone Fire','Y','2013-06-03T20:00:00Z','2013-06-03T13:49:00Z','CAL FIRE Butte Unit',NULL,'Butte','Palermo Road and Lone Tree Road near Palermo',298,100,'All road closures have been lifted.','CAL FIRE Butte Unit, CAL FIRE, El Medio Fire, Chico Fire Dept, Oroville Fire Dept, Butte Co. Sheriff''s Dept, Butte Co. Public Works, PG&E and CHP',-121.576804,39.434183,NULL,'1a5192f1-bc99-4130-8683-381e0534b76a','https://osfm.fire.ca.gov/incidents/2013/6/3/lone-fire/','2013-06-03T20:00:00Z','2013-06-03 00:00:00','2013-06-03 00:00:00','N','True','False'),
    (33,'Hathaway Fire','Y','2013-06-09T16:45:00Z','2013-06-09T12:30:00Z','USFS San Bernardino National Forest',NULL,'Riverside','Hathaway Canyon area, northeast of Banning',0,100,NULL,'USFS San Bernardino National Forest',-116.84137,33.99647,NULL,'befb9d5c-c0ea-48b8-8589-2586be0275af','https://osfm.fire.ca.gov/incidents/2013/6/9/hathaway-fire/','2013-06-09T16:45:00Z','2013-06-09 00:00:00','2013-06-09 00:00:00','N','False','False'),
    (34,'Sonoma-Lake-Napa Unit Lightning Fires','Y','2013-06-14T15:45:00Z','2013-06-10T00:46:00Z','CAL FIRE Sonoma-Lake-Napa Unit',NULL,'Sonoma, Solano, Lake, Colusa','throughout Sonoma, Solano, Lake & Colusa Counties',28,100,NULL,'CAL FIRE Sonoma-Lake-Napa Unit',-122.0437,38.4229,NULL,'5ce45b6c-81b5-422c-9078-8c68dd872c8a','https://osfm.fire.ca.gov/incidents/2013/6/10/sonoma-lake-napa-unit-lightning-fires/','2013-06-14T15:45:00Z','2013-06-14 00:00:00','2013-06-10 00:00:00','N','True','False'),
    (35,'152 Fire','Y','2013-06-05T08:30:00Z','2013-06-04T15:42:00Z','CAL FIRE Madera-Mariposa-Merced Unit',NULL,'Merced','Hwy 152 in San Luis Creek Reservoir',124,100,NULL,'CAL FIRE Madera-Mariposa-Merced Unit',-121.006939,37.03776,NULL,'f9e85371-fc46-4f54-822c-7dcdaadde551','https://osfm.fire.ca.gov/incidents/2013/6/4/152-fire/','2013-06-05T08:30:00Z','2013-06-05 00:00:00','2013-06-04 00:00:00','N','True','False'),
    (36,'Lake Fire','Y','2013-06-06T07:00:00Z','2013-06-05T16:05:00Z','CAL FIRE Sonoma-Lake-Napa Unit',NULL,'Lake','Lakeshore Drive and Patterson Drive in Clearlake Oaks',30,100,NULL,'CAL FIRE Sonoma-Lake-Napa Unit',-122.703193,38.99233,NULL,'dcb21e64-9d38-47c2-848b-e8e0dea5c2de','https://osfm.fire.ca.gov/incidents/2013/6/5/lake-fire/','2013-06-06T07:00:00Z','2013-06-06 00:00:00','2013-06-05 00:00:00','N','True','False'),
    (37,'Powerhouse Fire','Y','2013-06-08T18:30:00Z','2013-05-30T15:28:00Z','USFS Angeles National Forest/Los Angeles County/CAL FIRE',NULL,'Los Angeles','Angeles National Forest',30274,100,NULL,'USFS Angeles National Forest/Los Angeles County/CAL FIRE',-118.423176,34.585595,NULL,'bf37805e-1cc2-4208-9972-753e47874c87','https://osfm.fire.ca.gov/incidents/2013/5/30/powerhouse-fire/','2013-06-08T18:30:00Z','2013-06-08 00:00:00','2013-05-30 00:00:00','N','True','False'),
    (38,'Vasco Fire','Y','2013-06-08T13:25:00Z','2013-06-08T10:16:00Z','CAL FIRE Santa Clara Unit',NULL,'Alameda','off Vasco Road & North Vasco Road, north of Livermore',240,100,NULL,'CAL FIRE Santa Clara Unit',-121.737213,37.775057,NULL,'2ad509e4-99f1-4e1a-81eb-839f772f9c45','https://osfm.fire.ca.gov/incidents/2013/6/8/vasco-fire/','2013-06-08T13:25:00Z','2013-06-08 00:00:00','2013-06-08 00:00:00','N','True','False'),
    (39,'Viper Fire','Y','2013-06-08T19:00:00Z','2013-06-08T15:37:00Z','CAL FIRE/Riverside County Fire',NULL,'Riverside','off San Timoteo Canyon Rd and Viper Rd, north of Moreno Valley',42,100,NULL,'CAL FIRE/Riverside County Fire',-117.1265,33.96936,NULL,'e9505435-e861-4f33-9069-b0040fb2a135','https://osfm.fire.ca.gov/incidents/2013/6/8/viper-fire/','2013-06-08T19:00:00Z','2013-06-08 00:00:00','2013-06-08 00:00:00','N','True','False'),
    (40,'Northern California Lightning Activity','Y','2013-06-14T16:30:00Z','2013-06-10T00:46:00Z','California Northern Region',NULL,NULL,'Across Northern California',60,100,NULL,'California Northern Region',-121.5747,39.9845,NULL,'369e41d4-75a6-4be0-a38a-5f7450553631','https://osfm.fire.ca.gov/incidents/2013/6/10/northern-california-lightning-activity/','2013-06-14T16:30:00Z','2013-06-14 00:00:00','2013-06-10 00:00:00','N','True','False'),
    (41,'Roadrunner Fire','Y','2013-06-13T09:45:00Z','2013-06-12T16:43:00Z','CAL FIRE Amador-El Dorado Unit',NULL,'Amador','Roadrunner Drive, south of Ione',96,100,NULL,'CAL FIRE Amador-El Dorado Unit',-120.966016,38.27783,NULL,'bf59bc5b-1398-4ae5-adef-6f61b9ee1b90','https://osfm.fire.ca.gov/incidents/2013/6/12/roadrunner-fire/','2013-06-13T09:45:00Z','2013-06-13 00:00:00','2013-06-12 00:00:00','N','True','False'),
    (42,'Revis Fire','Y','2013-06-14T16:30:00Z','2013-06-12T16:40:00Z','CAL FIRE Madera-Mariposa-Merced Unit',NULL,'Madera','Off Revis Road & Yosemite Springs Parkway in Yosemite Lake Parks area in Coarsegold',75,100,NULL,'CAL FIRE Madera-Mariposa-Merced Unit',-119.75636,37.169379,NULL,'7055a440-5d4c-4f58-bac9-2954ff6698a5','https://osfm.fire.ca.gov/incidents/2013/6/12/revis-fire/','2013-06-14T16:30:00Z','2013-06-14 00:00:00','2013-06-12 00:00:00','N','True','False'),
    (43,'Clinton Fire','Y','2013-06-13T21:30:00Z','2013-06-13T11:54:00Z','CAL FIRE/Fresno County Fire',NULL,'Fresno','Clinton and Highland, East of Fresno',108,100,NULL,'CAL FIRE/Fresno County Fire',-119.628389,36.772425,NULL,'a2cfda2a-21c1-4e45-90b5-37d931b4a926','https://osfm.fire.ca.gov/incidents/2013/6/13/clinton-fire/','2013-06-13T21:30:00Z','2013-06-13 00:00:00','2013-06-13 00:00:00','N','True','False'),
    (44,'Carstens Fire','Y','2013-06-26T11:15:00Z','2013-06-16T14:12:00Z','CAL FIRE Madera-Mariposa-Merced Unit / Sierra National Forest ',NULL,'Mariposa','Off Carstens Road, east of 140 in the Midpines area.',1708,100,NULL,'CAL FIRE Madera-Mariposa-Merced Unit / Sierra National Forest , CAL FIRE, US Forest Service, California Highway Patrol, National Park Service, Mariposa County, Mariposa County Fire, Mariposa County Sheriff.',-119.91071,37.58202,NULL,'bb2eb175-43a3-4a5c-bff6-e3669e52c1d1','https://osfm.fire.ca.gov/incidents/2013/6/16/carstens-fire/','2013-06-26T11:15:00Z','2013-06-26 00:00:00','2013-06-16 00:00:00','N','True','False'),
    (45,'PFE Fire','Y','2013-06-13T14:15:00Z','2013-06-13T11:28:00Z','CAL FIRE/Placer County Fire',NULL,'Placer','PFE Road and Watt Avenue, West Roseville',237,100,NULL,'CAL FIRE/Placer County Fire',-121.380862,38.729297,NULL,'fe47b1c2-b9c0-44be-8d10-f270056db35c','https://osfm.fire.ca.gov/incidents/2013/6/13/pfe-fire/','2013-06-13T14:15:00Z','2013-06-13 00:00:00','2013-06-13 00:00:00','N','True','False'),
    (46,'Michelle Fire','Y','2013-06-13T21:30:00Z','2013-06-13T15:54:00Z','CAL FIRE/Fresno County Fire',NULL,'Fresno','off McKinley Ave & Academy Ave, north of Sanger ',35,100,NULL,'CAL FIRE/Fresno County Fire',-119.558244,36.763367,NULL,'953f17a1-2034-467b-b48c-28da1a9af60e','https://osfm.fire.ca.gov/incidents/2013/6/13/michelle-fire/','2013-06-13T21:30:00Z','2013-06-13 00:00:00','2013-06-13 00:00:00','N','True','False'),
    (47,'Palmyrita Fire','Y','2013-06-15T08:00:00Z','2013-06-14T13:47:00Z','CAL FIRE/Riverside County Fire',NULL,'Riverside','Highgrove Pass Rd and Pigeon Pass Rd, Community of Highgrove',40,100,NULL,'CAL FIRE/Riverside County Fire',-117.302057,34.001745,NULL,'2d1f0c40-92e7-4540-991b-d353ed68ec6c','https://osfm.fire.ca.gov/incidents/2013/6/14/palmyrita-fire/','2013-06-15T08:00:00Z','2013-06-15 00:00:00','2013-06-14 00:00:00','N','True','False'),
    (48,'Rolling Fire','Y','2013-06-18T19:30:00Z','2013-06-16T18:17:00Z','CAL FIRE Madera-Mariposa-Merced Unit',NULL,'Madera','off Hwy 41 & Road 145, northwest of Friant ',482,100,NULL,'CAL FIRE Madera-Mariposa-Merced Unit',-119.78106,37.015575,NULL,'05d0fed7-8502-4a6f-9c5c-b9cee0e75408','https://osfm.fire.ca.gov/incidents/2013/6/16/rolling-fire/','2013-06-18T19:30:00Z','2013-06-18 00:00:00','2013-06-16 00:00:00','N','True','False'),
    (49,'California Fire','Y','2013-06-18T22:30:00Z','2013-06-18T15:18:00Z','CAL FIRE Sanoma-Lake-Napa Unit',NULL,'Solano','Off Lake Herman Rd, west of Hwy 680 in Benicia',124,100,NULL,'CAL FIRE Sanoma-Lake-Napa Unit',-122.13802,38.08744,NULL,'2b403f03-fe84-450a-90b7-befb8acc7e70','https://osfm.fire.ca.gov/incidents/2013/6/18/california-fire/','2013-06-18T22:30:00Z','2013-06-18 00:00:00','2013-06-18 00:00:00','N','True','False'),
    (50,'Sierra Fire','Y','2013-06-19T08:45:00Z','2013-06-17T14:41:00Z','CAL FIRE/Fresno County Fire',NULL,'Fresno','Black Mountain Road at Lodge Road near Sierra High School, southeast of Auberry',46,100,NULL,'CAL FIRE/Fresno County Fire',-119.463757,37.03087,NULL,'15e7e15d-f707-473e-b0f3-6534cfd845b7','https://osfm.fire.ca.gov/incidents/2013/6/17/sierra-fire/','2013-06-19T08:45:00Z','2013-06-19 00:00:00','2013-06-17 00:00:00','N','True','False'),
    (51,'George Fire','Y','2013-06-25T17:15:00Z','2013-06-25T13:36:00Z','CAL FIRE/Fresno County Fire',NULL,'Fresno','off Bronco Lane in Squaw Valley',150,100,NULL,'CAL FIRE/Fresno County Fire',-119.2248,36.7218,NULL,'23ec2f69-da30-4983-80c2-1f04bfea6f9a','https://osfm.fire.ca.gov/incidents/2013/6/25/george-fire/','2013-06-25T17:15:00Z','2013-06-25 00:00:00','2013-06-25 00:00:00','N','True','False'),
    (52,'Mount Fire','Y','2013-06-20T13:15:00Z','2013-06-20T14:29:00Z','CAL FIRE Sanoma-Lake-Napa Unit',NULL,'Lake','Off Konocti Rd & Oak Hills Ln, east of Kelseyville',25,100,NULL,'CAL FIRE Sanoma-Lake-Napa Unit',-122.81796,38.98058,NULL,'d489b45e-dcba-4eaa-8bb5-6a23255562da','https://osfm.fire.ca.gov/incidents/2013/6/20/mount-fire/','2013-06-20T13:15:00Z','2013-06-20 00:00:00','2013-06-20 00:00:00','N','True','False'),
    (53,'Mills Fire','Y','2013-07-01T06:00:00Z','2013-06-28T14:30:00Z','CAL FIRE San Bernardino Unit/ City of Redlands/San Bernardino Sheriff',NULL,'San Bernardino','south of Highway 38 & Bryant Street, northwest of Yucaipa ',534,100,NULL,'CAL FIRE San Bernardino Unit/ City of Redlands/San Bernardino Sheriff',-117.048397,34.071556,NULL,'6011819c-19ac-46c2-aa48-0ee8be0e48c0','https://osfm.fire.ca.gov/incidents/2013/6/28/mills-fire/','2013-07-01T06:00:00Z','2013-07-01 00:00:00','2013-06-28 00:00:00','N','True','False'),
    (54,'Concord Fire','Y','2013-07-01T18:30:00Z','2013-07-01T15:41:00Z','CAL FIRE Santa Clara Unit',NULL,'Contra Costa','off Concord Ave & Vineyard Parkway in Brentwood',274,100,NULL,'CAL FIRE Santa Clara Unit',-121.74367,39.90465,NULL,'95399a9c-8b3e-4413-9f56-5ed57d3d81b3','https://osfm.fire.ca.gov/incidents/2013/7/1/concord-fire/','2013-07-01T18:30:00Z','2013-07-01 00:00:00','2013-07-01 00:00:00','N','True','False'),
    (55,'Freeman Fire','Y','2013-06-29T18:30:00Z','2013-06-29T14:09:00Z','CAL FIRE San Benito-Monterey Unit ',NULL,'Monterey','off Hwy 198, 10 miles east of King City',105,100,NULL,'CAL FIRE San Benito-Monterey Unit ',-120.8973,36.1531,NULL,'58317b8d-7f4d-466f-b2c7-035c25fb00f0','https://osfm.fire.ca.gov/incidents/2013/6/29/freeman-fire/','2013-06-29T18:30:00Z','2013-06-29 00:00:00','2013-06-29 00:00:00','N','True','False'),
    (56,'Kirker Fire','Y','2013-07-01T18:40:00Z','2013-07-01T13:19:00Z','CAL FIRE Santa Clara Unit',NULL,'Contra Costa','Kirker Pass Road south of Pittsburg',492,100,NULL,'CAL FIRE Santa Clara Unit',-121.91453,37.96866,NULL,'522114fe-ada8-49a9-9bb2-5891103ff0ca','https://osfm.fire.ca.gov/incidents/2013/7/1/kirker-fire/','2013-07-01T18:40:00Z','2013-07-01 00:00:00','2013-07-01 00:00:00','N','True','False'),
    (57,'Northern Region July Lightning','Y','2013-07-04T10:45:00Z','2013-07-02T12:00:00Z','CAL FIRE Northern Region',NULL,NULL,'Throughout northeastern California',754,100,NULL,'CAL FIRE Northern Region',-121.5747,39.9845,NULL,'42690ee2-a5ed-4320-9a55-d5ff3d1a80f5','https://osfm.fire.ca.gov/incidents/2013/7/2/northern-region-july-lightning/','2013-07-04T10:45:00Z','2013-07-04 00:00:00','2013-07-02 00:00:00','N','True','False'),
    (58,'Fox Fire (formally 3-7 Fire)','Y','2013-07-05T18:30:00Z','2013-07-03T22:56:00Z','CAL FIRE Lassen-Modoc Unit',NULL,'Modoc','5 miles northwest of Aiden',502,100,NULL,'CAL FIRE Lassen-Modoc Unit',-121.035,41.2415,NULL,'8b51033d-abc6-4ea4-8983-990ad4e1c45e','https://osfm.fire.ca.gov/incidents/2013/7/3/fox-fire-formally-3-7-fire/','2013-07-05T18:30:00Z','2013-07-05 00:00:00','2013-07-03 00:00:00','N','True','False'),
    (59,'Vina Fire','Y','2013-07-04T10:30:00Z','2013-07-04T07:30:00Z','CAL FIRE Tehama-Glenn Unit',NULL,'Tehama','Tehama-Vina Rd and Sherman Rd, Los Molinos',200,100,NULL,'CAL FIRE Tehama-Glenn Unit',-122.079871,40.012398,NULL,'c94959d7-eb88-4724-8feb-ba0662afca10','https://osfm.fire.ca.gov/incidents/2013/7/4/vina-fire/','2013-07-04T10:30:00Z','2013-07-04 00:00:00','2013-07-04 00:00:00','N','True','False'),
    (60,'Grant Fire','Y','2013-07-04T11:30:00Z','2013-07-04T10:00:00Z','CAL FIRE Santa Clara Unit',NULL,'Alameda','off Grant Ln Rd & I-580 in the Altamont Pass, 5 miles west of Tracy',50,100,NULL,'CAL FIRE Santa Clara Unit',-121.5869,37.7393,NULL,'07fb8b11-f39b-4cd0-8a27-2d4fef7fe680','https://osfm.fire.ca.gov/incidents/2013/7/4/grant-fire/','2013-07-04T11:30:00Z','2013-07-04 00:00:00','2013-07-04 00:00:00','N','True','False'),
    (61,'Fallon Fire','Y','2013-07-06T14:30:00Z','2013-07-06T13:09:00Z','CAL FIRE Santa Clara Unit / Alameda County Fire',NULL,'Alameda','off Fallon Rd & Camino Tassajara near Dublin ',38,100,NULL,'CAL FIRE Santa Clara Unit / Alameda County Fire',-121.86216,37.74241,NULL,'4c04a4e5-f580-4e62-bb53-2575c72d29dc','https://osfm.fire.ca.gov/incidents/2013/7/6/fallon-fire/','2013-07-06T14:30:00Z','2013-07-06 00:00:00','2013-07-06 00:00:00','N','True','False'),
    (62,'Chariot Fire','Y','2013-07-15T06:15:00Z','2013-07-06T12:55:00Z','CAL FIRE San Diego Unit / Cleveland National Forest',NULL,'San Diego','off Sunrise Hwy, 9 miles southeast of Julian',7055,100,NULL,'CAL FIRE San Diego Unit / Cleveland National Forest, CAL FIRE, USFS Cleveland NF, CHP, San Diego County Fire Authority, San Diego County Sheriff, California State Parks',-116.47381,32.95435,NULL,'ee19b2ec-a96a-4738-994e-fb3ea016e053','https://osfm.fire.ca.gov/incidents/2013/7/6/chariot-fire/','2013-07-15T06:15:00Z','2013-07-15 00:00:00','2013-07-06 00:00:00','N','True','False'),
    (63,'Adelaida Fire','Y','2013-07-07T22:00:00Z','2013-07-07T13:16:00Z','CAL FIRE San Luis Obispo',NULL,'San Luis Obispo','off Adelaida Rd & Vineyard Dr, west of Paso Robles',85,100,NULL,'CAL FIRE San Luis Obispo',-120.83417,35.62743,NULL,'a97d2b3a-3a53-424f-852c-5f1b8d199cc3','https://osfm.fire.ca.gov/incidents/2013/7/7/adelaida-fire/','2013-07-07T22:00:00Z','2013-07-07 00:00:00','2013-07-07 00:00:00','N','True','False'),
    (64,'McGanney Fire','Y','2013-07-08T17:30:00Z','2013-07-08T09:59:00Z','CAL FIRE Nevada-Placer-Yuba Unit',NULL,'Yuba','off Highway 20 and McGanney Lane, west of Smartsville',73,100,NULL,'CAL FIRE Nevada-Placer-Yuba Unit',-121.31634,39.206,NULL,'397ed8e6-6088-4e03-9316-8f50c65a83be','https://osfm.fire.ca.gov/incidents/2013/7/8/mcganney-fire/','2013-07-08T17:30:00Z','2013-07-08 00:00:00','2013-07-08 00:00:00','N','True','False'),
    (65,'Fiddler Fire','Y','2013-07-09T15:00:00Z','2013-07-09T11:59:00Z','CAL FIRE Shasta-Trinity Unit',NULL,'Shasta','off Fiddler',43,100,NULL,'CAL FIRE Shasta-Trinity Unit',-122.7338,40.373,NULL,'3f64fc8a-8870-4e64-b60a-3e13c8532acd','https://osfm.fire.ca.gov/incidents/2013/7/9/fiddler-fire/','2013-07-09T15:00:00Z','2013-07-09 00:00:00','2013-07-09 00:00:00','N','True','False'),
    (66,'Kyburz Fire','Y','2013-07-11T18:30:00Z','2013-07-08T12:45:00Z','Eldorado National Forest',NULL,'El Dorado','Off Hwy 50 at 30 Mile Tract, Kyburz',572,100,NULL,'Eldorado National Forest',-120.298,38.774,NULL,'d778a3f0-2d23-43c1-b9bc-1ea33898fab2','https://osfm.fire.ca.gov/incidents/2013/7/8/kyburz-fire/','2013-07-11T18:30:00Z','2013-07-11 00:00:00','2013-07-08 00:00:00','N','False','False'),
    (67,'Uvas Fire','Y','2013-07-12T17:45:00Z','2013-07-12T13:09:00Z','CAL FIRE Santa Clara Unit',NULL,'Santa Clara','Uvas Road and Casa Loma Road, near Calero County Park,  west of Morgan Hill',50,100,NULL,'CAL FIRE Santa Clara Unit',-121.7804,37.1438,NULL,'e779a754-29fd-472f-8d29-46cfee32d3c2','https://osfm.fire.ca.gov/incidents/2013/7/12/uvas-fire/','2013-07-12T17:45:00Z','2013-07-12 00:00:00','2013-07-12 00:00:00','N','True','False'),
    (68,'Diablo Fire','Y','2013-07-13T21:45:00Z','2013-07-12T15:35:00Z','CAL FIRE Santa Clara Unit',NULL,'Stanislaus','off Diablo Grande Parkway, west of I-5, southwest of Patterson',150,100,NULL,'CAL FIRE Santa Clara Unit',-121.1955,37.436,NULL,'873074c8-4b6d-417b-a78c-1d1430027805','https://osfm.fire.ca.gov/incidents/2013/7/12/diablo-fire/','2013-07-13T21:45:00Z','2013-07-13 00:00:00','2013-07-12 00:00:00','N','True','False'),
    (69,'Mountain Fire','Y','2013-07-30T18:00:00Z','2013-07-15T13:43:00Z','CAL FIRE Riverside Unit / San Bernardino National Forest',NULL,'Riverside','Hwy 243 & Hwy 74 near Mountain Center',27531,100,NULL,'CAL FIRE Riverside Unit / San Bernardino National Forest',-116.72885,33.7095,NULL,'a3149fec-4d48-427c-8b2c-59e8b79d59db','https://osfm.fire.ca.gov/incidents/2013/7/15/mountain-fire/','2013-07-30T18:00:00Z','2013-07-30 00:00:00','2013-07-15 00:00:00','N','True','False'),
    (70,'Orleans Complex','Y','2013-08-03T15:00:00Z','2013-08-03T08:00:00Z','Six Rivers National Forest',NULL,'Humboldt','10 miles east of Somes Bar, California',0,100,NULL,'Six Rivers National Forest',-123.376,41.333,NULL,'7d4f107b-66a9-43d2-819d-ec855c2947bf','https://osfm.fire.ca.gov/incidents/2013/8/3/orleans-complex/','2013-08-03T15:00:00Z','2013-08-03 00:00:00','2013-08-03 00:00:00','N','False','False'),
    (71,'Silverwood Fire','Y','2013-07-26T18:15:00Z','2013-07-25T15:09:00Z','San Bernardino County Fire',NULL,'San Bernardino',' Hwy 138 west of Hwy 173',75,100,NULL,'San Bernardino County Fire',-117.352,34.316,NULL,'ed51bbd2-6f8e-4f46-9073-3673a583fada','https://osfm.fire.ca.gov/incidents/2013/7/25/silverwood-fire/','2013-07-26T18:15:00Z','2013-07-26 00:00:00','2013-07-25 00:00:00','N','True','False'),
    (72,'Flume Fire','Y','2013-07-28T17:50:00Z','2013-07-28T09:43:00Z','CAL FIRE San Diego Unit',NULL,'San Diego','Barrett Lake Road and Highway 94',25,100,NULL,'CAL FIRE San Diego Unit',-116.707335,32.612773,NULL,'c6cfeed9-55bb-4fdb-8a52-e4d947dba721','https://osfm.fire.ca.gov/incidents/2013/7/28/flume-fire/','2013-07-28T17:50:00Z','2013-07-28 00:00:00','2013-07-28 00:00:00','N','True','False'),
    (73,'Aspen Fire','Y','2013-09-24T20:15:00Z','2013-07-22T22:15:00Z','Sierra National Forest',NULL,'Fresno','Seven miles north of Big Creek',22992,100,NULL,'Sierra National Forest',-119.318,37.279,NULL,'bee8c339-4f26-4b78-a5b4-a8a0ebdb8786','https://osfm.fire.ca.gov/incidents/2013/7/22/aspen-fire/','2013-09-24T20:15:00Z','2013-09-24 00:00:00','2013-07-22 00:00:00','N','False','False'),
    (74,'Salmon River Complex','Y','2013-08-31T06:45:00Z','2013-07-31T22:00:00Z','Klamath National Forest',NULL,'Siskiyou','North Fork of the Salmon River, West of Sawyers Bar, Klamath National Forest',14754,100,NULL,'Klamath National Forest',-123.176,41.32,NULL,'ba76c009-09c9-497c-b923-1ac8cf05c20d','https://osfm.fire.ca.gov/incidents/2013/7/31/salmon-river-complex/','2013-08-31T06:45:00Z','2013-08-31 00:00:00','2013-07-31 00:00:00','N','False','False'),
    (75,'Branch Fire','Y','2013-08-04T14:45:00Z','2013-08-01T16:01:00Z','CAL FIRE Butte Unit',NULL,'Butte','Near Rocky Peak - North Fork Lake Oroville near Cherokee',92,100,NULL,'CAL FIRE Butte Unit',-121.50354,39.6612,NULL,'0b51d3d5-bb3a-426d-9c12-c1878a01d7cf','https://osfm.fire.ca.gov/incidents/2013/8/1/branch-fire/','2013-08-04T14:45:00Z','2013-08-04 00:00:00','2013-08-01 00:00:00','N','True','False'),
    (76,'Silverado Fire','Y','2014-09-22T15:00:00Z','2014-09-12T10:30:00Z','US Forest Service - Cleveland National Forest',NULL,'Orange','off of Silverado Canyon Road south of Corona',968,100,NULL,'US Forest Service - Cleveland National Forest',-117.601,33.748,NULL,'568ea489-caa1-43c3-928a-9d0b836c0c54','https://osfm.fire.ca.gov/incidents/2014/9/12/silverado-fire/','2014-09-22T15:00:00Z','2014-09-22 00:00:00','2014-09-12 00:00:00','N','False','False'),
    (77,'Dog Bar Fire','Y','2014-09-18T18:45:00Z','2014-09-13T14:07:00Z','CAL FIRE Nevada-Yuba-Placer Unit',NULL,'Nevada','Off Dog Bar Rd & Taylor Crossing Rd near Alta Sierra',247,100,'Traffic on Dog Bar Rd. and associated streets is limited to residents only.','CAL FIRE Nevada-Yuba-Placer Unit',-120.999508,39.113682,NULL,'a794ecf9-2e8d-4721-a272-a3e66d2e7621','https://osfm.fire.ca.gov/incidents/2014/9/13/dog-bar-fire/','2014-09-18T18:45:00Z','2014-09-18 00:00:00','2014-09-13 00:00:00','N','True','False'),
    (78,'Courtney Fire','Y','2014-09-22T07:15:00Z','2014-09-14T13:36:00Z','CAL FIRE Madera-Mariposa-Merced Unit',NULL,'Madera','Courtney Lane and 7 Hills Rd, Oakhurst',320,100,'Soft road closure is in place for residents only on Road 426 between Summit Road and Road 223. ','CAL FIRE Madera-Mariposa-Merced Unit',-119.604124,37.311915,NULL,'614efdbb-937e-47a0-9ffd-919e5e0de436','https://osfm.fire.ca.gov/incidents/2014/9/14/courtney-fire/','2014-09-22T07:15:00Z','2014-09-22 00:00:00','2014-09-14 00:00:00','N','True','False'),
    (79,'Boles Fire','Y','2014-10-11T18:50:00Z','2014-09-15T13:38:00Z','CAL FIRE Siskiyou Unit',NULL,'Siskiyou','City of Weed',516,100,NULL,'CAL FIRE Siskiyou Unit, CHP, CAL TRANS, Pacific Power and Light, Weed City PD, Yreka PD, Mt. Shasta PD, Siskiyou County Sheriff, California Department of Corrections and Rehabilitation, California Conservation Corps, and CAL OES, United Way, and the American Red Cross.',-122.37432,41.42384,NULL,'ad164a35-8b27-4f96-b78e-952b08a333e8','https://osfm.fire.ca.gov/incidents/2014/9/15/boles-fire/','2014-10-11T18:50:00Z','2014-10-11 00:00:00','2014-09-15 00:00:00','N','True','False'),
    (80,'Bane Fire','Y','2014-10-17T18:15:00Z','2014-10-16T14:34:00Z','CAL FIRE San Bernardino Unit / Chino Valley Fire District',NULL,'San Bernardino','in Chino Hills State Park near the Bane Canyon entrance',48,100,NULL,'CAL FIRE San Bernardino Unit / Chino Valley Fire District',-117.70643,33.93869,NULL,'f5552e75-f74c-4bc0-99b8-6c66ee8cde3d','https://osfm.fire.ca.gov/incidents/2014/10/16/bane-fire/','2014-10-17T18:15:00Z','2014-10-17 00:00:00','2014-10-16 00:00:00','N','True','False'),
    (81,'Black Fire','Y','2015-07-04T20:15:00Z','2015-07-04T16:33:00Z','CAL FIRE Tehama-Glenn Unit',NULL,'Tehama','off Black Butte Rd, near Black Butte Lake',170,100,NULL,'CAL FIRE Tehama-Glenn Unit',-122.3638,39.8448,NULL,'8d5b00c1-0ec0-43bb-a03e-822d5fe2af52','https://osfm.fire.ca.gov/incidents/2015/7/4/black-fire/','2015-07-04T20:15:00Z','2015-07-04 00:00:00','2015-07-04 00:00:00','N','True','False'),
    (82,'Soda Fire','Y','2015-07-05T09:00:00Z','2015-07-04T15:30:00Z','CAL FIRE Mendocino Unit',NULL,'Mendocino','off Hwy 253, 4 miles northeast of Boonville (Mendocino County).',23,100,NULL,'CAL FIRE Mendocino Unit',-123.303,39.0263,NULL,'58dda3b8-3643-4f73-bee0-0a4cae0cb079','https://osfm.fire.ca.gov/incidents/2015/7/4/soda-fire/','2015-07-05T09:00:00Z','2015-07-05 00:00:00','2015-07-04 00:00:00','N','True','False'),
    (83,'Sky Fire','Y','2015-07-08T20:45:00Z','2015-07-06T10:47:00Z','CAL FIRE Sonoma-Lake-Napa',NULL,'Solano','Mix Canyon Rd & Sky Ranch Road, northwest of Vacaville',150,100,'Mix Canyon Road','CAL FIRE Sonoma-Lake-Napa, CAL FIRE, Vacaville Fire Protection District, Vacaville City, Dixon FD, Suisun FPD, UC Davis FD, CMF of Vacaville, Solano SO, CHP, Winters FPD, Travis AFB, Cordella FPD, Solano OES, Fairfield FD, Montezuma Fire District, Suisun City FD',-122.0789,38.4113,NULL,'28b81794-bb66-466e-b9dc-337c47be5678','https://osfm.fire.ca.gov/incidents/2015/7/6/sky-fire/','2015-07-08T20:45:00Z','2015-07-08 00:00:00','2015-07-06 00:00:00','N','True','False'),
    (84,'Deer Fire','Y','2015-07-15T07:00:00Z','2015-07-10T12:41:00Z','CAL FIRE San Luis Obispo Unit',NULL,'San Luis Obispo','southwest of Lake Nacimiento ',95,100,NULL,'CAL FIRE San Luis Obispo Unit',-121.0157,35.7183,NULL,'598a3d54-ce60-466e-b44f-0e7c8f9e4ff5','https://osfm.fire.ca.gov/incidents/2015/7/10/deer-fire/','2015-07-15T07:00:00Z','2015-07-15 00:00:00','2015-07-10 00:00:00','N','True','False'),
    (85,'Spider Fire','Y','2015-07-12T19:48:00Z','2015-07-12T13:52:00Z','CAL FIRE Riverside County Fire',NULL,'Riverside','San Timoteo Canyon Rd and Redlands Blvd, northeast of Moreno Valley',21,100,NULL,'CAL FIRE Riverside County Fire, CAL FIRE/Riverside, CAL FIRE/San Bernardino, March ARB, Riverside County Fire Department',-117.43942,33.986204,NULL,'48284911-67cd-4394-8aad-053d3b2cf5db','https://osfm.fire.ca.gov/incidents/2015/7/12/spider-fire/','2015-07-12T19:48:00Z','2015-07-12 00:00:00','2015-07-12 00:00:00','N','True','False'),
    (86,'Avocado Fire','Y','2016-05-17T19:10:00Z','2016-05-15T16:38:00Z','CAL FIRE Fresno-Kings Unit',NULL,'Fresno','Off Piedra Rd near Kings River, 10 miles northeast of Sanger',132,100,NULL,'CAL FIRE Fresno-Kings Unit',-119.38248,36.78769,NULL,'f1769b9d-c522-4a0d-92a7-f9c8321b9f1d','https://osfm.fire.ca.gov/incidents/2016/5/15/avocado-fire/','2016-05-17T19:10:00Z','2016-05-17 00:00:00','2016-05-15 00:00:00','N','True','False'),
    (87,'Athens Fire','Y','2016-05-19T18:00:00Z','2016-05-17T15:06:00Z','CAL FIRE Nevada-Yuba-Placer Unit',NULL,'Placer','Off Athens Ave & Industrial Blvd, south of Lincoln',169,100,NULL,'CAL FIRE Nevada-Yuba-Placer Unit',-121.3090268,38.8390117,NULL,'e0de216a-9544-43ad-9b9f-bc05247f0550','https://osfm.fire.ca.gov/incidents/2016/5/17/athens-fire/','2016-05-19T18:00:00Z','2016-05-19 00:00:00','2016-05-17 00:00:00','N','True','False'),
    (88,'Pala Fire','Y','2016-06-07T06:45:00Z','2016-05-31T13:48:00Z','CAL FIRE San Diego Unit',NULL,'San Diego','in the 38000 block of Pala Temecula Road, Temecula',70,100,NULL,'CAL FIRE San Diego Unit',-117.08829,33.41639,NULL,'c88af25d-aff4-4b20-9c58-0b819c8ae99a','https://osfm.fire.ca.gov/incidents/2016/5/31/pala-fire/','2016-06-07T06:45:00Z','2016-06-07 00:00:00','2016-05-31 00:00:00','N','True','False'),
    (89,'Chimney Fire','Y','2016-06-19T18:00:00Z','2016-06-01T15:35:00Z','Bureau of Land Management',NULL,'Tulare','15 miles northeast of Kernville',0,100,NULL,'Bureau of Land Management',-118.08591,35.84883,NULL,'6afa1ccf-e1b6-492b-bcaa-9189cd3487aa','https://osfm.fire.ca.gov/incidents/2016/6/1/chimney-fire/','2016-06-19T18:00:00Z','2016-06-19 00:00:00','2016-06-01 00:00:00','N','False','False'),
    (90,'Coal Fire','Y','2016-06-20T19:50:00Z','2016-06-20T16:38:00Z','CAL FIRE Butte Unit',NULL,'Butte','Off Coal Canyon Rd & Hwy 70, north of Oroville',112,100,NULL,'CAL FIRE Butte Unit',-121.6008,39.595,NULL,'5f422963-a30c-4cda-9427-7a0e028b6039','https://osfm.fire.ca.gov/incidents/2016/6/20/coal-fire/','2016-06-20T19:50:00Z','2016-06-20 00:00:00','2016-06-20 00:00:00','N','True','False'),
    (91,'Oroville Spillway ','Y','2018-01-09T09:24:00Z','2017-02-07T14:00:00Z','Unified Command',NULL,'Butte','Oroville Dam, Canyon Dr. & Oroville Dam Rd, Oroville, CA 95966',0,100,NULL,'Unified Command, Butte County Sheriff, Butte County CALFIRE, Oroville Police Department, CHP, Butte County OES, California State Parks, Caltrans, Oroville Fire Department, Butte County Public Works, PG&E, CAL FIRE, Army Corps of Engineers, Federal Energy Regulatory Commission, Oroville Hospital, Red Cross, California Conservation Corps, California National Guard, Bureau of Indian Affairs, CAL OES, Gridley-Biggs Police, and California Department of Fish and Wildlife.',-121.55633,39.51158,NULL,'afb8c00c-ef91-4544-90ce-54722be124af','https://osfm.fire.ca.gov/incidents/2017/2/7/oroville-spillway/','2018-01-09T09:24:00Z','2018-01-09 00:00:00','2017-02-07 00:00:00','N','True','False'),
    (92,'Grace Fire','Y','2018-01-09T09:41:00Z','2017-04-03T16:00:00Z','CAL FIRE Shasta-Trintiy Unit',NULL,'Shasta','Grace Resort Rd and Bluebush Way, 2 miles SE of the Community of Shingletown',45,100,NULL,'CAL FIRE Shasta-Trintiy Unit',-121.85645,40.48712,NULL,'95960fa6-58ba-4b4e-aeb2-ada97d699908','https://osfm.fire.ca.gov/incidents/2017/4/3/grace-fire/','2018-01-09T09:41:00Z','2018-01-09 00:00:00','2017-04-03 00:00:00','N','True','False'),
    (93,'West Fire','Y','2018-01-09T09:40:00Z','2017-04-03T16:00:00Z','CAL FIRE Lassen-Modoc Unit',NULL,'Modoc','Likely, 15 Miles south of Alturas',380,100,NULL,'CAL FIRE Lassen-Modoc Unit',-120.58342,41.16716,NULL,'31b0e75c-b0e2-4796-b8a7-efc49e4c59a5','https://osfm.fire.ca.gov/incidents/2017/4/3/west-fire/','2018-01-09T09:40:00Z','2018-01-09 00:00:00','2017-04-03 00:00:00','N','True','False'),
    (94,'66 Fire','Y','2018-01-09T09:50:00Z','2017-04-13T02:30:00Z','CAL FIRE Riverside Unit',NULL,'Riverside','Avenue 66 and Hwy 111 near community of Mecca',15,100,NULL,'CAL FIRE Riverside Unit',-116.08003,33.56777,NULL,'b12ae71e-c6c8-4eab-9aab-d17d1879a639','https://osfm.fire.ca.gov/incidents/2017/4/13/66-fire/','2018-01-09T09:50:00Z','2018-01-09 00:00:00','2017-04-13 00:00:00','N','True','False'),
    (95,'Jayne Fire','Y','2018-01-09T09:51:00Z','2017-04-20T15:40:00Z','CAL FIRE Fresno Kings Unit',NULL,'Fresno','Off of Hwy 33 and Lost Hills south of Coalinga',5738,100,NULL,'CAL FIRE Fresno Kings Unit',-120.26561,36.07228,NULL,'0cacf259-1ba3-4e8c-a938-feaab2655c4b','https://osfm.fire.ca.gov/incidents/2017/4/20/jayne-fire/','2018-01-09T09:51:00Z','2018-01-09 00:00:00','2017-04-20 00:00:00','N','True','False'),
    (96,'Mountain Fire','Y','2019-06-24T11:06:00Z','2019-06-21T14:42:00Z','Alameda County Fire',NULL,'Alameda','off Grant Line Rd and Mountain House Rd',30,100,NULL,'Alameda County Fire',-121.57382,37.75427,NULL,'bc5d73ab-3100-4117-9978-a99b8e3daf5c','https://osfm.fire.ca.gov/incidents/2019/6/21/mountain-fire/','2019-06-24T11:06:00Z','2019-06-24 00:00:00','2019-06-21 00:00:00','N','False','False'),
    (97,'Paskenta Fire','Y','2019-06-24T11:43:00Z','2019-06-22T03:12:00Z','CAL FIRE Tehama - Glenn Unit',NULL,'Tehama','off Corning Road and Paskenta Road, West of Corning',46,100,NULL,'CAL FIRE Tehama - Glenn Unit',-122.48277,39.97083,NULL,'50328016-5e03-4e90-bff0-95d36942728f','https://osfm.fire.ca.gov/incidents/2019/6/22/paskenta-fire/','2019-06-24T11:43:00Z','2019-06-24 00:00:00','2019-06-22 00:00:00','N','True','False'),
    (98,'Scott Fire','Y','2019-06-27T08:24:28Z','2019-06-24T11:57:00Z','CAL FIRE Nevada-Yuba-Placer Unit',NULL,'Yuba','off Scott Forbes Rd, 5 miles east of Browns Valley',80,100,NULL,'CAL FIRE Nevada-Yuba-Placer Unit',-121.32399,39.24678,NULL,'937f9f26-8d23-4ee7-a0f3-61313dcc63f3','https://osfm.fire.ca.gov/incidents/2019/6/24/scott-fire/','2019-06-24T18:30:00Z','2019-06-24 00:00:00','2019-06-24 00:00:00','N','True','False'),
    (99,'Rock Fire','Y','2019-07-01T13:10:54Z','2019-06-26T08:54:24Z','CAL FIRE ',NULL,'Stanislaus','Del Puerto Canyon Rd, east of Patterson  ',2422,100,NULL,NULL,-121.28312,37.46577,NULL,'4edb5c7c-08d6-4ae0-b8b3-7bb471e26d8e','https://osfm.fire.ca.gov/incidents/2019/6/26/rock-fire/','2019-06-27T19:06:00Z','2019-06-27 00:00:00','2019-06-26 00:00:00','N','True','False'),
    (100,'Lonoak Fire','Y','2019-06-27T11:19:06Z','2019-06-26T09:18:22Z','CAL FIRE San Benito-Monterey Unit',NULL,'Monterey','Lonoak Rd & Airline Hwy, East of King City  ',2546,100,NULL,NULL,-120.94771,36.28426,NULL,'35ba5eb8-520f-4660-af60-9e0e00e7b42b','https://osfm.fire.ca.gov/incidents/2019/6/26/lonoak-fire/','2019-06-26T18:02:00Z','2019-06-26 00:00:00','2019-06-26 00:00:00','N','True','False'),
    (101,'Diablo Fire','Y','2020-06-26T18:32:50Z','2020-06-25T06:47:01Z','CAL FIRE Santa Clara Unit',NULL,'Stanislaus','Del Puerto Canyon and Diablo Grande',202,100,NULL,NULL,-121.18355,37.46265,'Wildfire','64b9cf19-314a-4986-ae35-cf89f1f8bc2a','https://osfm.fire.ca.gov/incidents/2020/6/25/diablo-fire/','2020-06-26T18:32:00Z','2020-06-26 00:00:00','2020-06-25 00:00:00','N','True','False'),
    (102,'Bend Fire','Y','2020-06-29T07:06:13Z','2020-06-25T17:28:46Z','BLM California Central District',NULL,'San Luis Obispo','Belmont Trail and Bend Rd, California Valley ',263,100,NULL,'BLM California Central District ',-119.88048,35.30742,'Wildfire','d10cd103-f627-497d-a338-6430438ed7fb','https://osfm.fire.ca.gov/incidents/2020/6/25/bend-fire/','2020-06-28T07:06:00Z','2020-06-28 00:00:00','2020-06-25 00:00:00','N','False','False'),
    (103,'Aurora Fire','Y','2020-07-03T11:08:11Z','2020-06-26T15:13:24Z','BLM Central California District',NULL,'Mono','Bodie Rd, east of Bridgeport',280,100,NULL,'BLM California Central District',-119.00289,38.22554,'Wildfire','5b2b1489-ad5b-4104-b267-fdd61c0c48e9','https://osfm.fire.ca.gov/incidents/2020/6/26/aurora-fire/','2020-07-02T11:07:00Z','2020-07-02 00:00:00','2020-06-26 00:00:00','N','False','False'),
    (104,'Indian Fire','Y','2020-06-28T20:11:23Z','2020-06-26T17:07:51Z','CAL FIRE/Riverside County Fire Department',NULL,'Riverside','Wheeler Rd and Tripp Flats Rd, community of Anza',59,100,NULL,NULL,-116.750925,33.565093,'Wildfire','b13b3fea-fd2f-4c14-925b-63737df97f2e','https://osfm.fire.ca.gov/incidents/2020/6/26/indian-fire/',NULL,NULL,'2020-06-26 00:00:00','N','True','False'),
    (105,'Poeville Fire','Y','2020-07-07T14:37:18Z','2020-06-27T19:08:50Z','Unified Command: USFS and Truckee Meadows Fire Protection District',NULL,'State of Nevada','Highway 395 Truckee Meadows ',2975,100,NULL,'Humboldt-Toiyabe National Forest',-119.81098,39.32596,'Wildfire','4db7101a-8097-4211-ab16-544f136dd35c','https://osfm.fire.ca.gov/incidents/2020/6/27/poeville-fire/','2020-07-06T14:36:00Z','2020-07-06 00:00:00','2020-06-27 00:00:00','N','False','False'),
    (106,'Newell Fire','Y','2021-10-12T18:16:40Z','2021-10-11T20:02:23Z','CAL FIRE Sonoma Lake Napa Unit',NULL,'Napa','Newell Drive and Silver Oak Trail. ',132,100,NULL,NULL,-122.241128,38.170366,'Wildfire','8622a38c-551f-4ef0-9b25-0d0280ace921','https://osfm.fire.ca.gov/incidents/2021/10/11/newell-fire/','2021-10-12T18:16:30Z','2021-10-12 00:00:00','2021-10-11 00:00:00','N','True','False'),
    (107,'Alisal Fire','N','2021-10-12T08:05:39Z','2021-10-11T14:30:12Z','Unified Command Santa Barbara County Fire and Los Padres National Forest',NULL,'Santa Barbara','Northwest of Refugio Canyon near Hwy 101 along the Gaviota Coast',NULL,NULL,NULL,'Santa Barbara County Fire, USFS - Los Padres National Forest',-120.136,34.553,'Wildfire','de52a8d2-2c0e-4481-8d6c-9e4b7c2b9428','https://osfm.fire.ca.gov/incidents/2021/10/11/alisal-fire/',NULL,NULL,'2021-10-11 00:00:00','Y','False','False'),
    (108,'Canal Fire ','N','2021-10-15T08:38:02Z','2021-10-14T16:49:00Z','CAL FIRE - Tehama-Glenn Unit',NULL,'Trinity','Canal View Rd x Paskenta Rd,  northwest of Corning',59,100,NULL,NULL,-122.277441,39.986836,'Wildfire','16f4a871-6b4e-493c-ada9-cff37913e521','https://osfm.fire.ca.gov/incidents/2021/10/14/canal-fire/','2021-10-15T08:37:57Z','2021-10-15 00:00:00','2021-10-14 00:00:00','N','True','False'),
    (109,'Gravel Fire','Y','2021-10-17T08:52:22Z','2021-10-15T15:15:00Z','USFS - Modoc National Forest',NULL,'Modoc','Highway 395 and Goose Lake, 27 Miles north of Alturas',200,100,NULL,'Modoc National Forest',-120.358206,41.862388,'Wildfire','55df2f9c-3232-4643-970b-0286a1039507','https://osfm.fire.ca.gov/incidents/2021/10/15/gravel-fire/','2021-10-16T19:25:23Z','2021-10-16 00:00:00','2021-10-15 00:00:00','N','False','False'),
    (110,'Estrada Fire','N','2021-10-18T18:27:29Z','2021-10-15T14:40:39Z','CZU',NULL,'Santa Cruz','Hazel Dell Road and Hidden Canyon.  Northwest of Watsonville',148,80,NULL,NULL,-121.752106,37.013464,'Wildfire','5f34e7bc-b627-4baf-9e6e-ded2eec3c77a','https://osfm.fire.ca.gov/incidents/2021/10/15/estrada-fire/',NULL,NULL,'2021-10-15 00:00:00','Y','True','False');


INSERT INTO countyList(county_number, county_name, county_population)
VALUES
    (1,'Alameda', 1682353),
    (2,'Alpine', 1204),
    (3,'Amador', 40474),
    (4,'Butte', 211632),
    (5,'Calaveras', 45292),
    (6,'Colusa', 21839),
    (7,'Contra Costa', 1165927),
    (8,'Del Norte', 27743),
    (9,'El Dorado', 191185),
    (10,'Fresno', 1008654),
    (11,'Glenn', 28917),
    (12,'Humboldt', 136463),
    (13,'Imperial', 179702),
    (14,'Inyo', 19016),
    (15,'Kern', 909235),
    (16,'Kings', 152486),
    (17,'Lake', 68163),
    (18,'Lassen', 32730),
    (19,'Los Angeles', 10014009),
    (20,'Madera', 156255),
    (21,'Marin', 262321),
    (22,'Mariposa', 17131),
    (23,'Mendocino', 91601),
    (24,'Merced', 281202),
    (25,'Modoc', 8700),
    (26,'Mono', 13195),
    (27,'Monterey', 439035),
    (28,'Napa', 138019),
    (29,'Nevada', 102241),
    (30,'Orange', 3186989),
    (31,'Placer', 404739),
    (32,'Plumas', 19790),
    (33,'Riverside', 2418185),
    (34,'Sacramento', 1585055),
    (35,'San Benito', 64209),
    (36,'San Bernardino', 2181654),
    (37,'San Diego', 3298634),
    (38,'San Francisco', 873965),
    (39,'San Joaquin', 779233),
    (40,'San Luis Obispo', 282424),
    (41,'San Mateo', 764442),
    (42,'Santa Barbara', 448229),
    (43,'Santa Clara', 1936259),
    (44,'Santa Cruz', 270861),
    (45,'Shasta', 182155),
    (46,'Sierra', 3236),
    (47,'Siskiyou', 44076),
    (48,'Solano', 453491),
    (49,'Sonoma', 488863),
    (50,'Stanislaus', 552878),
    (51,'Sutter', 99633),
    (52,'Tehama', 65829),
    (53,'Trinity', 16112),
    (54,'Tulare', 473117),
    (55,'Tuolumne', 55620),
    (56,'Ventura', 843843),
    (57,'Yolo', 216403),
    (58,'Yuba', 81575);

INSERT INTO user(username, password, role, user_action, data_set_reference) 
VALUES
('shsjsi121', '12345678', 'Admin', 'Create', 112),
('mherab', 'thisismypassword', 'Admin', 'Delete', 109),
('sindh112', 'West_Youth_35_Dream_Line', 'User', 'View', 50),
('dan0422', 'password', 'User', 'View', 100),
('prahavzz', '68.Emotion.Personal', 'User', 'View', 69),
('mare237r', '15_Aside_Hurry_Regular', 'Admin', 'Update', 107),
('iheaist3', 'Check_93_Drag_Debate', 'User', 'View', 43),
('spidebest', 'Duty.Student.61.Habit', 'User', 'View', 75),
('bruceAlmighty', 'Kiss_44_Lawyer_Internal', 'User', 'View', 22),
('scikebross', '81_Gather_Transition', 'User', 'View', 38);


SELECT "1----------";
.headers on

SELECT incident_name
FROM data
WHERE incident_date_created LIKE '%2017%'

;
.headers off

SELECT "2----------";
.headers on

SELECT countyList.county_number, countyList.county_name, SUM(data.incident_acres_burned)
FROM countyList, data
WHERE data.incident_acres_burned > 1000
AND countyList.county_name = data.incident_county
GROUP BY countyList.county_number

;
.headers off

SELECT "3----------";
.headers on

DELETE FROM data
WHERE data.incident_data_set_reference IN(
    SELECT data.incident_data_set_reference
    FROM data, user
    WHERE data.incident_data_set_reference = user.data_set_reference
    AND user.role = 'Admin'
    AND user.user_action = 'Delete'
);

SELECT COUNT(*)
FROM data

;
.headers off

SELECT "4----------";
.headers on

SELECT incident_name, incident_administrative_unit, incident_acres_burned
FROM data, countyList
WHERE data.incident_county = countyList.county_name
AND data.calfire_incident = 'True'
AND county_population > 50000
AND incident_acres_burned > 10000

;
.headers off

SELECT "5----------";
.headers on

UPDATE data
SET is_active = 'N'
WHERE data.incident_data_set_reference IN(
    SELECT user.data_set_reference
    FROM user
    WHERE user.role = 'Admin'
    AND user.user_action = 'Update'
);

SELECT incident_name
FROM data
WHERE is_active = 'Y'
;
.headers off

SELECT "6----------";
.headers on

SELECT username, role
FROM user
GROUP BY username
ORDER BY role

;
.headers off

SELECT "7----------";
.headers on

SELECT username, user_action, incident_name
FROM user, data
WHERE user.data_set_reference = data.incident_data_set_reference
AND user.role = 'User'
AND user.user_action = 'View'
GROUP BY user.username

;
.headers off

SELECT "8----------";
.headers on

SELECT incident_county, county_population, incident_acres_burned
FROM data, countyList
WHERE countyList.county_name = data.incident_county
AND data.incident_data_set_reference IN(
    SELECT user.data_set_reference
    FROM user
    WHERE user.role = 'User'
    AND user.user_action = 'View')
GROUP BY incident_acres_burned

;
.headers off

SELECT "9----------";
.headers on

SELECT DISTINCT county_name, county_population, SUM(incident_acres_burned) as total
FROM countyList, data
WHERE countyList.county_name = data.incident_county
GROUP BY county_name
HAVING county_population/3 < MAX(incident_acres_burned)

;
.headers off

SELECT "10----------";
.headers on

SELECT incident_name
FROM data 
WHERE incident_county LIKE '%Merced%'
OR incident_administrative_unit LIKE '%Merced%'
OR incident_cooperating_agencies LIKE '%Merced%'

;
.headers off

SELECT "11----------";
.headers on

select  countyList.county_number, countyList.county_name, SUM(data.incident_acres_burned) as AcresBurned from countyList, data
where data.incident_acres_burned > 100 and  data.incident_acres_burned < 500
and countyList.county_name = data.incident_county
group by data.incident_acres_burned

;
.headers off

SELECT "12----------";
.headers on

select  incident_longitude, incident_latitude, county_population as Population from  data, countyList
where data.incident_county = countyList.county_name
and county_population > 10000 and county_population < 20000

;
.headers off

SELECT "13----------";
.headers on

select  incident_county as County, incident_administrative_unit as FireFighters from data, countyList
where data.incident_county = countyList.county_name
and data.incident_acres_burned  < 2000 

;
.headers off

SELECT "14----------";
.headers on

update data set is_active = 'Y'
where data.incident_data_set_reference IN(
    select user.data_set_reference from user
    where user.role = 'Admin' and user.user_action = 'Update'
);

select incident_name from data
where  is_active = 'N'
group by data.incident_data_set_reference

;
.headers off

SELECT "15----------";
.headers on

select username, user_action, incident_name from user, data
where user.data_set_reference = data.incident_data_set_reference
and user.role = 'User' OR user.role = 'Admin' and user_action = 'View' and  data.incident_acres_burned  > 1000
group by user.username

;
.headers off

SELECT "16----------";
.headers on

select  incident_longitude, incident_latitude, county_population  from  data, countyList
where data.incident_county = countyList.county_name
and county_population > 10000 and county_population < 20000

;
.headers off

SELECT "17----------";
.headers on

select username, role, incident_longitude, incident_latitude, county_population  
from  data, countyList, user
where data.incident_county = countyList.county_name
AND data.incident_data_set_reference = user.data_set_reference
and  county_population > 60000
group by username order by role

;
.headers off

SELECT "18----------";
.headers on

select countyList.county_name, incident_dateonly_created,incident_dateonly_extinguished, is_active from data, countyList
where data.incident_acres_burned < 3500
and countyList.county_name = data.incident_county
group by  countyList.county_number

;
.headers off

SELECT "19----------";
.headers on

select username, role, incident_administrative_unit_url from  data, user
where user.data_set_reference = data.incident_data_set_reference
and user.role  = 'Admin'
GROUP BY user.username

;
.headers off

SELECT "20----------";
.headers on

select incident_longitude, incident_latitude from  countyList, data
where incident_date_created like '%2015%' and county_population > 15000

;
.headers off