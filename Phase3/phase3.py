import sqlite3
from sqlite3 import Error


def openConnection(_dbFile):
    print("++++++++++++++++++++++++++++++++++")
    print("Open database: ", _dbFile)

    conn = None
    try:
        conn = sqlite3.connect(_dbFile)
        print("success")
    except Error as e:
        print(e)

    print("++++++++++++++++++++++++++++++++++")

    return conn


def closeConnection(_conn, _dbFile):
    print("++++++++++++++++++++++++++++++++++")
    print("Close database: ", _dbFile)

    try:
        _conn.close()
        print("success")
    except Error as e:
        print(e)

    print("++++++++++++++++++++++++++++++++++")


def start(_conn):
    print("Enter 1 for Admin or 2 for User")
    user_type = int(input())
    
    if user_type == 1:
        admin(_conn)
    elif user_type == 2:
        user(_conn)
    else:
        print("Please enter valid number")
        start(_conn)


def admin(_conn):
    print("What operation would you like to perform?")
    print("1. Insert")
    print("2. Update")
    print("3. Delete")
    print("4. View")
    print("5. Login Test")
    decision = int(input())

    if decision == 1:
        insert(_conn)

    elif decision == 2:
        update(_conn)

    elif decision == 3:
        delete(_conn)

    elif decision == 4:
        user(_conn)
    
    elif decision == 5:
        login_test(_conn)

    elif decision == 99:
        secret_function(_conn)

    else:
        print("Please enter valid decision")
        admin(_conn)

def login_test(_conn):
    _username = input("Enter username: ")
    _password = input("Enter password: ")

    try:
        sql = """SELECT username, role
                FROM user
                WHERE username = ? 
                AND password = ?
            """

        args = [_username, _password]
        # _conn.execute(sql, args)

        cur = _conn.cursor()
        cur.execute(sql, args)
        rows = cur.fetchall()

        count = 0

        for row in rows:
            count = 1
            l = '{:<1}|{:<1}'.format(row[0], row[1])
            print(l)

        if count == 0:
            print("Incorrect username or password. Would you like to")
            print("1. Try again")
            print("2. Register")

            decision = int(input())

            if decision == 1:
                login_test(_conn)

            if decision == 2:
                register(_conn)

    except Error as e:
        print(e)

def register(_conn):
    _username = input("Enter username: ")
    _password = input("Enter password: ")

    try:
        sql = """INSERT INTO user
                VALUES
                (?, ?, 'User', NULL, NULL)
            """
        args = [_username, _password]
        cur = _conn.cursor()
        cur.execute(sql, args)

    except Error as e:
        print(e)
        print("Username taken. Please choose a different one")
        register(_conn)




def user(_conn):
    print("What data would you like to see?")
    print("1. Show recent incident logs that were created in 2021")
    print("2. Show fires that burned over 1000 acres")
    print("3. Show incident coordinates of fires in 2015 occuring in populations of 15000")
    print("4. Show CalFire incidents where county population is greater than 50000")
    print("5. Show active wildfires")
    print("6. Show users and roles")
    print("7. Show popular incidents that users have viewed")
    print("8. Show county information that users have viewed")
    print("9. Show counties where 1/3 of the population is less than the sum of acres burned in that county")
    print("10. Show incidents that occur in or involve Merced")
    decision = int(input())

    if decision == 1:
        try:
            sql = """SELECT incident_name
                    FROM data
                    WHERE incident_dateonly_created LIKE '%2021%'
                """

            args = []

            cur = _conn.cursor()
            cur.execute(sql)
            rows = cur.fetchall()

            for row in rows:
                l = '{:<1}'.format(row[0])
                print(l)

        except Error as e:
            print(e)


    if decision == 2:
        try:
            sql = """SELECT countyList.county_number, countyList.county_name, SUM(data.incident_acres_burned)
                    FROM countyList, data
                    WHERE data.incident_acres_burned > 1000
                    AND countyList.county_name = data.incident_county
                    GROUP BY countyList.county_number
                """
            args = []

            cur = _conn.cursor()
            cur.execute(sql)
            rows = cur.fetchall()

            for row in rows:
                l = '{:<1}|{:<1}|{:<1}'.format(row[0], row[1], row[2])
                print(l)

        except Error as e:
            print(e)

    if decision == 3:
        try:
            sql = """select incident_name, incident_longitude, incident_latitude 
                    from  countyList, data
                    where incident_dateonly_created like '%2015%' 
                    and county_population > 15000
                """
            args = []

            cur = _conn.cursor()
            cur.execute(sql)
            rows = cur.fetchall()

            for row in rows:
                l = '{:<1}|{:<1}|{:<1}'.format(row[0], row[1], row[2])
                print(l)

        except Error as e:
            print(e)

    if decision == 4:
        try:
            sql = """SELECT incident_name, incident_administrative_unit, incident_acres_burned
                    FROM data, countyList
                    WHERE data.incident_county = countyList.county_name
                    AND data.calfire_incident = 'True'
                    AND county_population > 50000
                    AND incident_acres_burned > 10000
                """
            args = []

            cur = _conn.cursor()
            cur.execute(sql)
            rows = cur.fetchall()

            for row in rows:
                l = '{:<1}|{:<1}|{:<1}'.format(row[0], row[1], row[2])
                print(l)

        except Error as e:
            print(e)

    if decision == 5:
        try:
            sql = """select incident_name 
                    from data
                    where  is_active = 'Y'
                    group by data.incident_data_set_reference
                """
            args = []

            cur = _conn.cursor()
            cur.execute(sql)
            rows = cur.fetchall()

            for row in rows:
                l = '{:<1}'.format(row[0])
                print(l)

        except Error as e:
            print(e)

    if decision == 6:
        try:
            sql = """SELECT username, role
                    FROM user
                    GROUP BY username
                    ORDER BY role
                """
            args = []

            cur = _conn.cursor()
            cur.execute(sql)
            rows = cur.fetchall()

            for row in rows:
                l = '{:<1}|{:<1}'.format(row[0], row[1])
                print(l)

        except Error as e:
            print(e)

    if decision == 7:
        try:
            sql = """SELECT username, user_action, incident_name
                    FROM user, data
                    WHERE user.data_set_reference = data.incident_data_set_reference
                    AND user.role = 'User'
                    AND user.user_action = 'View'
                    GROUP BY user.username
                """
            args = []

            cur = _conn.cursor()
            cur.execute(sql)
            rows = cur.fetchall()

            for row in rows:
                l = '{:<1}|{:<1}|{:<1}'.format(row[0], row[1], row[2])
                print(l)

        except Error as e:
            print(e)

    if decision == 8:
        try:
            sql = """SELECT incident_county, county_population, incident_acres_burned
                    FROM data, countyList
                    WHERE countyList.county_name = data.incident_county
                    AND data.incident_data_set_reference IN(
                        SELECT user.data_set_reference
                        FROM user
                        WHERE user.role = 'User'
                        AND user.user_action = 'View')
                    GROUP BY incident_acres_burned
                """
            args = []

            cur = _conn.cursor()
            cur.execute(sql)
            rows = cur.fetchall()

            for row in rows:
                l = '{:<1}|{:<1}|{:<1}'.format(row[0], row[1], row[2])
                print(l)

        except Error as e:
            print(e)

    if decision == 9:
        try:
            sql = """SELECT DISTINCT county_name, county_population, SUM(incident_acres_burned) as total
                    FROM countyList, data
                    WHERE countyList.county_name = data.incident_county
                    GROUP BY county_name
                    HAVING county_population/3 < SUM(incident_acres_burned)
                """
            args = []

            cur = _conn.cursor()
            cur.execute(sql)
            rows = cur.fetchall()

            for row in rows:
                l = '{:<1}|{:<1}|{:<1}'.format(row[0], row[1], row[2])
                print(l)

        except Error as e:
            print(e)

    if decision == 10:
        try:
            sql = """SELECT incident_name
                    FROM data 
                    WHERE incident_county LIKE '%Merced%'
                    OR incident_administrative_unit LIKE '%Merced%'
                    OR incident_cooperating_agencies LIKE '%Merced%'
                """
            args = []

            cur = _conn.cursor()
            cur.execute(sql)
            rows = cur.fetchall()

            for row in rows:
                l = '{:<1}'.format(row[0])
                print(l)

        except Error as e:
            print(e)




def insert(_conn):
    print("What table would you like to insert into?")
    print("1. Wildfire data")
    print("2. California counties")

    decision = int(input())

    if decision == 1:
        print("Inserting into Wildfire data")
        # _incident_data_set_reference = input("Enter data set reference number")
        _incident_name = input("Enter incident name ")
        _incident_is_final = input("Is the incident final Y/N? ")
        _incident_administrative_unit = input("List administrative units ")
        _incident_administrative_unit_url = input("Enter url of administrative unit ")
        _incident_county = input("Enter incident county ")
        _incident_location = input("Enter extra location information ")
        _incident_acres_burned = input("How many acres were burned? ")
        _incident_containment = input("Fire containment percentage")
        _incident_control = input("Enter control information if applicable ")
        _incident_cooperating_agencies = input("Enter cooperating agencies ")
        _incident_longitude = input("Enter incident longitude ")
        _incident_latitude = input("Enter incident latitude ")
        _incident_type = input("Enter incident type ")
        _incident_id = input("Enter incident id ")
        _incident_url = input("Incident url if applicable ")
        _incident_dateonly_extinguished = input("Date extinguished YYYY-mm-dd ")
        _incident_dateonly_created = input("Date created YYYY-mm-d d")
        _is_active = input("Is the fire active Y/N? ")
        _calfire_incident = input("Is it a CalFire incident True/False? ")
        

        try:
            sql = """INSERT INTO data
                    VALUES
                    (NULL, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
                """
            args = [_incident_name, _incident_is_final, _incident_administrative_unit, _incident_administrative_unit_url,
_incident_county, _incident_location, _incident_acres_burned, _incident_containment, _incident_control, _incident_cooperating_agencies, _incident_longitude, _incident_latitude,
_incident_type, _incident_id, _incident_url, _incident_dateonly_extinguished, _incident_dateonly_created, _is_active, _calfire_incident]

            _conn.execute(sql, args)

        except Error as e:
            print(e)

    elif decision == 2:
        print("Insert into Counties")
        _county_name = input("Enter county name ")
        _county_population = input("Enter county population ")

        try:
            sql = """INSERT INTO countyList
                    VALUES
                    (NULL, ?, ?)
                """
            args = [_county_name, _county_population]
            _conn.execute(sql, args)

        except Error as e:
            print(e)


def update(_conn):
    print("What table would you like to update?")
    print("1. Wildfire data")
    print("2. California counties")

    decision = int(input())

    if decision == 1:
        print("What do you want to update?")
        print("1: Incident Name:")
        print("2: Incident Final:")
        print("3: Incident Administrative Unit:")
        print("4: Incident Administrative Unit URL:")
        print("5: Counties Affected by the Incident:")
        print("6: Location within Counties affected by the Incident:")
        print("7: Land (in acres) burned")
        print("8: Has the Incident being contained?: ")
        print("9: Incident Control: ")
        print("10: Agencies cooperating for Incident:")
        print("11: Lattidue of Intial Start of Incident")
        print("12: Longitude of Inital Start of Incident")
        print("13: Incident Type: ")
        print("14: Incident ID: ")
        print("15: Offical California ARCGIS Map of Incident URL:")
        print("16: Date of Incident Termination:")
        print("17: Inident Date First Reported:")
        print("18: Is Incident Active: ")
        print("19: Is the Incident a CalFire? ")

        decision = int(input())

        if decision == 1:
            _incident_data_set_reference = int(input("Enter the Incident Number you would like to update in the data set:"))
            _incident_name = input("Enter the updated Incident Name for the incident: ")

            try:
                sql = """UPDATE data
                        SET  incident_name = ?
                        WHERE incident_data_set_reference = ?
                    """
                args = [_incident_name, _incident_data_set_reference]
                _conn.execute(sql, args)

            except Error as e:
                print(e)

        if decision == 2:
            _incident_data_set_reference = int(input("Enter the Incident Number you would like to update in the data set:"))
            _incident_final = input("Is the incident final Y/N?: ")

            try:
                sql = """UPDATE data
                        SET incident_is_final = ?
                        WHERE incident_data_set_reference = ?
                    """
                args = [_incident_final, _incident_data_set_reference]
                _conn.execute(sql, args)
            except Error as e:
                print(e)
        
        if decision == 3:
            _incident_data_set_reference = int(input("Enter the Incident Number you would like to update:"))
            _incident_administrative_unit = input("Enter the updaded Administrative Unit: ")

            try:
                sql = """UPDATE data
                        SET incident_administrative_unit = ?
                        WHERE incident_data_set_reference = ?
                    """
                args = [incident_administrative_unit, _incident_data_set_reference]
                _conn.execute(sql, args)
            except Error as e:
                print(e)

        if decision == 4:
            _incident_data_set_reference = int(input("Enter the Incident Number you would like to update:"))
            _incident_administrative_unit_url = input("Enter the updaded Administrative Unit URL: ")

            try:
                sql = """UPDATE data
                        SET incident_administrative_unit_url = ?
                        WHERE incident_data_set_reference = ?
                    """
                args = [_incident_administrative_unit_url, _incident_data_set_reference]
                _conn.execute(sql, args)
            except Error as e:
                print(e)
        
        if decision == 5:
            _incident_data_set_reference = int(input("Enter the Incident Number you would like to update:"))
            _incident_county = input("Enter the updaded County of the incident: ")

            try:
                sql = """UPDATE data
                        SET incident_county = ?
                        WHERE incident_data_set_reference = ?
                    """
                args = [_incident_county, _incident_data_set_reference]
                _conn.execute(sql, args)
            except Error as e:
                print(e)

        if decision == 6:
            _incident_data_set_reference = int(input("Enter the Incident Number you would like to update:"))
            _incident_location = input("Enter the updaded location within County of the incident: ")

            try:
                sql = """UPDATE data
                        SET incident_location = ?
                        WHERE incident_data_set_reference = ?
                    """
                args = [_incident_location, _incident_data_set_reference]
                _conn.execute(sql, args)
            except Error as e:
                print(e)
        
        if decision == 7:
            _incident_data_set_reference = int(input("Enter the Incident Number you would like to update:"))
            _incident_acres_burned = input("Enter the updaded number of acres burned: ")

            try:
                sql = """UPDATE data
                        SET incident_acres_burned = ?
                        WHERE incident_data_set_reference = ?
                    """
                args = [_incident_acres_burned, _incident_data_set_reference]
                _conn.execute(sql, args)
            except Error as e:
                print(e)
        
        if decision == 8:
            _incident_data_set_reference = int(input("Enter the Incident Number you would like to update:"))
            _incident_containment = input("Enter the updaded containment percentage of the incident: ")

            try:
                sql = """UPDATE data
                        SET incident_containment = ?
                        WHERE incident_data_set_reference = ?
                    """
                args = [_incident_acres_burned, _incident_data_set_reference]
                _conn.execute(sql, args)
            except Error as e:
                print(e)
        
        if decision == 9:
            _incident_data_set_reference = int(input("Enter the Incident Number you would like to update:"))
            _incident_control = input("Enter the updaded info on how surrounding areas have been controlled: ")

            try:
                sql = """UPDATE data
                        SET incident_control= ?
                        WHERE incident_data_set_reference = ?
                    """
                args = [_incident_control, _incident_data_set_reference]
                _conn.execute(sql, args)
            except Error as e:
                print(e)

        if decision == 10:
            _incident_data_set_reference = int(input("Enter the Incident Number you would like to update:"))
            _incident_cooperating_agencies = input("Enter the updaded cooperating agencies: ")

            try:
                sql = """UPDATE data
                        SET incident_cooperating_agencies = ?
                        WHERE incident_data_set_reference = ?
                    """
                args = [_incident_cooperating_agencies, _incident_data_set_reference]
                _conn.execute(sql, args)
            except Error as e:
                print(e)

        if decision == 11:
            _incident_data_set_reference = int(input("Enter the Incident Number you would like to update:"))
            _incident_longitude = input("Enter the updaded longitude: ")

            try:
                sql = """UPDATE data
                        SET incident_longitude = ?
                        WHERE incident_data_set_reference = ?
                    """
                args = [_incident_longitude, _incident_data_set_reference]
                _conn.execute(sql, args)
            except Error as e:
                print(e)

        if decision == 12:
            _incident_data_set_reference = int(input("Enter the Incident Number you would like to update:"))
            _incident_latitude = input("Enter the updaded latitude: ")

            try:
                sql = """UPDATE data
                        SET incident_latitude = ?
                        WHERE incident_data_set_reference = ?
                    """
                args = [_incident_latitude, _incident_data_set_reference]
                _conn.execute(sql, args)
            except Error as e:
                print(e)

        if decision == 13:
            _incident_data_set_reference = int(input("Enter the Incident Number you would like to update:"))
            _incident_type = input("Enter the updaded incident type (e.g. wildfire etc...): ")

            try:
                sql = """UPDATE data
                        SET incident_type = ?
                        WHERE incident_data_set_reference = ?
                    """
                args = [_incident_type, _incident_data_set_reference]
                _conn.execute(sql, args)
            except Error as e:
                print(e)

        if decision == 14:
            _incident_data_set_reference = int(input("Enter the Incident Number you would like to update:"))
            _incident_id = input("Enter the updaded incident id: ")

            try:
                sql = """UPDATE data
                        SET incident_id = ?
                        WHERE incident_data_set_reference = ?
                    """
                args = [_incident_id, _incident_data_set_reference]
                _conn.execute(sql, args)
            except Error as e:
                print(e)

        if decision == 15:
            _incident_data_set_reference = int(input("Enter the Incident Number you would like to update:"))
            _incident_url = input("Enter the updaded incident url: ")

            try:
                sql = """UPDATE data
                        SET incident_url = ?
                        WHERE incident_data_set_reference = ?
                    """
                args = [_incident_url, _incident_data_set_reference]
                _conn.execute(sql, args)
            except Error as e:
                print(e)

        if decision == 16:
            _incident_data_set_reference = int(input("Enter the Incident Number you would like to update:"))
            _incident_dateonly_extinguished = input("Enter the updaded date the fire was extinguished (YYYY-mm-dd): ")

            try:
                sql = """UPDATE data
                        SET incident_dateonly_extinguished = ?
                        WHERE incident_data_set_reference = ?
                    """
                args = [_incident_dateonly_extinguished, _incident_data_set_reference]
                _conn.execute(sql, args)
            except Error as e:
                print(e)
        
        if decision == 17:
            _incident_data_set_reference = int(input("Enter the Incident Number you would like to update:"))
            _incident_dateonly_created = input("Enter the updaded number of acres burned: ")

            try:
                sql = """UPDATE data
                        SET incident_acres_burned = ?
                        WHERE incident_data_set_reference = ?
                    """
                args = [_incident_dateonly_created, _incident_data_set_reference]
                _conn.execute(sql, args)
            except Error as e:
                print(e)

        if decision == 18:
            _incident_data_set_reference = int(input("Enter the Incident Number you would like to update:"))
            _is_active = input("Is the fire still active Y/N?: ")

            try:
                sql = """UPDATE data
                        SET is_active = ?
                        WHERE incident_data_set_reference = ?
                    """
                args = [_is_active, _incident_data_set_reference]
                _conn.execute(sql, args)
            except Error as e:
                print(e)

        if decision == 19:
            _incident_data_set_reference = int(input("Enter the Incident Number you would like to update:"))
            _calfire_incident = input("Is the fire a CalFire incident Y/N?: ")

            try:
                sql = """UPDATE data
                        SET calfire_incident = ?
                        WHERE incident_data_set_reference = ?
                    """
                args = [_calfire_incident, _incident_data_set_reference]
                _conn.execute(sql, args)
            except Error as e:
                print(e)

    if decision == 2:
        print("What do you want to update?")
        print("1. County Name")
        print("2. County Population")

        decision = int(input())
        if decision == 1:
            _county_number = int(input("Enter the county number you would like to update "))
            _county_name = input("Enter the updated county name ")

            try:
                sql = """UPDATE countyList
                        SET county_name = ?
                        WHERE county_number = ?
                    """
                args = [_county_name, _county_number]
                _conn.execute(sql, args)
            except Error as e:
                print(e)

        if decision == 2:
            _county_number = int(input("Enter the county number you would like to update "))
            _county_population = input("Enter the updated county population ")

            try:
                sql = """UPDATE countyList
                        SET county_population = ?
                        WHERE county_number = ?
                    """
                args = [_county_population, _county_number]
                _conn.execute(sql, args)

            except Error as e:
                print(e)



def delete(_conn):
    print("What table would you like to delete from?")
    print("1. Wildfire data")
    print("2. California counties")

    decision = int(input())

    if decision == 1:
        _incident_data_set_reference = int(input("Enter data set number you would like to delete "))

        try:
            sql = """DELETE FROM data
                    WHERE incident_data_set_reference = ?
                """
            args = [_incident_data_set_reference]
            _conn.execute(sql, args)

        except Error as e:
                print(e)
    
    if decision == 2:
        _county_number = int(input("Enter the county number you would like to delete "))

        try:
            sql = """DELETE FROM countyList
                    WHERE county_number = ?
                """
            args = [_county_number]
            _conn.execute(sql, args)

        except Error as e:
                print(e)

def secret_function(_conn):
    print("Showing all user info")

    try:
        sql = """SELECT username, password, role
                FROM user
            """
        cur = _conn.cursor()
        cur.execute(sql)
        rows = cur.fetchall()

        for row in rows:
            l = '{:<1}|{:<1}|{:<1}'.format(row[0], row[1], row[2])
            print(l)
    except Error as e:
        print(e)


def main():
    database = r"data.sqlite"
    
    conn = openConnection(database)
    
    with conn:
        start(conn)
    
    closeConnection(conn, database)


if __name__ == '__main__':
    main()
