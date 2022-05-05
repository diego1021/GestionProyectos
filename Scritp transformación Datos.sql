

SELECT		C.CustomerID,
			CONCAT(C.FirstName,' ',C.LastName) CustomerName, C.Telephone, PR.Names ProjectName,
			PR.StartDate, PR.FinishDate, PR.Price, PR.AmountHours, S.Descriptions
FROM		Customer C
INNER JOIN	Project PR
on			C.CustomerID = PR.CustomerID
INNER JOIN	[State] S
on			S.StateID = PR.StateID