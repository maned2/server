Difficulty.eco
===

DesiredNumberOfPlayers: 4
HoursPlayedPerDay: 10
CollaborationLevel: LowCollaboration
GameSpeed: Normal

AdvancedGameSettings
MeteorImpactInDays: 60
MaxProfessionsPerCitizen: 10->20
MaxSpecialtiesPerCitizen: 32 -> 40
SkillCostMultiplier: 1 -> 0.5 // как быстро получаются звёзды
CraftResourceMultiplier: 1 -> 0.5
CraftTimeMultiplier: 1 -> 0.5
ClaimStakesGrantedUponSkillscrollConsumed: 0 -> 0.2 // получение колышков новых участков при изучении специальности
ClaimPapersGrantedUponSkillscrollConsumed: 0 -> 2 // получение квитанций землемера при изучении специальности
SpecialtyRefundPercentage: 0 -> 0.8 // сколько опыта вернётся при сбросе всех специальностей
GainCharacterExperienceWithSpecialtyExperience: 0.0 -> 0.0 // сколько опыта получается при выполнении задач специальности (при 0 - только от еды и жилья)
StackSizeMultiplier: 1 -> 4 
WeightMultiplier: 1 -> 0.5 // увеличение переносимого веса
FuelEfficiencyMultiplier: 1 -> 2.0 // увеличение длительности топлива
GrowthRateMultiplier: 1 -> 2.0 // увеличение скорости вырастания. полезно для фермеров, но минус для всех остальных кто убирает растения с участка
ConnectionRangeMultiplier: 1 -> 4.0 // увеличение расстояния соединения складов
ShelfLifeMultiplier: 1 -> 2.0 // увеличение срока годности еды
AllowDeepOceanBuilding: false -> true

Network.eco
===

PublicServer: false -> true
DiscordAddress // только символы из инвайта в дискорд
Name
DetailedDescription
ServerCategory: Beginner
WebServerUrl: // ссылка на сайт сервера

Settlements.eco
===

MinCitizensToFoundSettlement 3,12,30 -> 2,4,6 
MinCitizensToMaintainSettlement: -> 2,4,6

Users.eco
===

Admins.Collection.System.String.$values // добавить админов по steamid

72, 72