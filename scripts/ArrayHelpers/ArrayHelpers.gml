function ArrayEraseIf(arrayId, evaluator)
{
	var erasedCount = 0;
	for (var i = array_length(arrayId) - 1; i >= 0; --i)
	{
		if (evaluator(arrayId[i]))
		{
			array_delete(arrayId, i, 1);
			++erasedCount;
		}
	}
	return erasedCount;
}

function ArrayPushUniqueList(arrayId, list)
{
	var listLength = ds_list_size(list);
	for (var i = 0; i < listLength; ++i)
	{
		var newEntry = ds_list_find_value(list, i);
		if (!array_contains(arrayId, newEntry))
		{
			array_push(arrayId, newEntry);
		}
	}
}