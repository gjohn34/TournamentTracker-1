﻿CREATE TABLE [dbo].[MatchupEntries]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [MatchupId] INT NOT NULL, 
    [ParentMatchupId] INT NOT NULL, 
    [TeamCompetingId] INT NOT NULL, 
    [Score] DECIMAL NOT NULL, 
    CONSTRAINT [FK_MatchupEntries_ToMatchups] FOREIGN KEY ([MatchupId]) REFERENCES [Matchups]([Id]), 
    CONSTRAINT [FK_MatchupEntries_ToParentMatchups] FOREIGN KEY ([ParentMatchupId]) REFERENCES [Matchups]([Id]), 
    CONSTRAINT [FK_MatchupEntries_ToTeams] FOREIGN KEY ([TeamCompetingId]) REFERENCES [Teams]([Id])
)