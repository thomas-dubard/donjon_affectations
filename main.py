def available_users(day:str, shift:str)->list:
    """
    Fetches all available users on designated half of the day.

    Parameters
    -------
    day : str
        Day of the week
    shift : str
        Day or night / Morning or afternoon
    Returns
    users : list
        List of all available users
    -------
    """
    users = []
    return users

def happiness_score(user:int, day:str, shift:str)->dict:
    """
    Computes the happiness score for each user on designated half of chosen day.
    The criteria to compute this score are :
        - the difference between the hours they have already worked and the theoretical amount
        - if it would make them a full day (negative impact, except if full-time employee)
        - for morning shifts if they worked the evening shift the day before
        - if they would work in a different room than their last shift / usual tendency
            (should this criteria have a positive / negative impact ? short-term or long-term ?)

    Parameters
    -------
    user : int
        Designated user
    day : str
        Day of the week
    shift : str
        Morning or evening
    Returns
    score : dict
        Happiness score computed for one user for each room
        ex : {'1' : 0.89, '2':0.53, '3':0.88}
    -------
    """
    score = 0.00
    return score

def choose_users(scores:dict)->list:
    """
    Chooses a user for each room. This process may be pseudo-random as it not necessarily the user
    with the lowest score that may be chosen, as such a choice would only work for short-term goals.
    Some users are only trained on certain rooms, thus every item may not have the same size.

    Parameters
    -------
    scores : dict
        Happiness scores computed for each user for each room
        ex : {'1':{'1' : 0.89, '2':0.53, '3':0.88}, '2':{'1' : 0.24, '2':0.63}, ...}
    Returns
    choices : dict
        A designated user for each room
        ex : {'1' : 4, '2' : 3, '3' : 8}
    -------
    """
    score = 0.00
    return score

def update_new_week(new_week):
    """
    Updates the database with the choice of users.
    It may display the choices once they are updated / export them as a csv or txt.

    Parameters
    -------
    new_week : list
        List of all designated users for each room during the week.
        ex : [{'1' : 4, '2' : 3, '3' : 8}, {'1' : 2, '2' : 5, '3' : 1}, ...]
    Returns
    -------
    """

week_days = ["lundi", "mardi", "mercredi", "jeudi", "vendredi", "samedi", "dimanche"]
halves = ["matin", "soir"]
combinations = [(day, half) for day in week_days for half in halves]

new_week = []
for day, half in combinations:
    users = available_users(day, half)
    scores = dict()
    for user in users:
        scores[user] = happiness_score(user, day, half)

    room_assignments = choose_users(scores)
    new_week.append(room_assignments)

update_new_week(new_week)
# in further versions, we may change this simple process to have more iteraions based on random
# choices for certain steps.