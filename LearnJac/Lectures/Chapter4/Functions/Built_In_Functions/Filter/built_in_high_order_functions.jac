with entry {
    # Raw test scores
    test_scores: list = [78, 55, 92, 69, 88, 95, 72];

    # Get passing grades (70 and above)
    # passing_scores: list = [score for score in test_scores];  Passing scores: [78, 55, 92, 69, 88, 95, 72]
    passing_scores: list = [score for score in test_scores if score >= 70];
    print(f"Passing scores without filter: {passing_scores}"); # Passing scores: [78, 92, 88, 95, 72]
}

with entry {
    test_scores: list[int] = [78, 85, 92, 69, 88, 95, 72];

    # The lambda `lambda score: bool: score >= 70` returns True for passing scores.
    # 'filter' applies this lambda to each item in 'test_scores'.
    passing_scores_iterator = filter(lambda score: float: score >= 70, test_scores);

    # The result of 'filter' is an iterator, so we convert it to a list to see the results.
    passing_scores: list[int] = list(passing_scores_iterator);
    print(f"Passing scores with filter: {passing_scores}");
}