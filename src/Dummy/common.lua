function ConvertRace(integer_i) return "race" end
function ConvertAllianceType(integer_i) return "alliancetype" end
function ConvertRacePref(integer_i) return "racepreference" end
function ConvertIGameState(integer_i) return "igamestate" end
function ConvertFGameState(integer_i) return "fgamestate" end
function ConvertPlayerState(integer_i) return "playerstate" end
function ConvertPlayerScore(integer_i) return "playerscore" end
function ConvertPlayerGameResult(integer_i) return "playergameresult" end
function ConvertUnitState(integer_i) return "unitstate" end
function ConvertAIDifficulty(integer_i) return "aidifficulty" end
function ConvertGameEvent(integer_i) return "gameevent" end
function ConvertPlayerEvent(integer_i) return "playerevent" end
function ConvertPlayerUnitEvent(integer_i) return "playerunitevent" end
function ConvertWidgetEvent(integer_i) return "widgetevent" end
function ConvertDialogEvent(integer_i) return "dialogevent" end
function ConvertUnitEvent(integer_i) return "unitevent" end
function ConvertLimitOp(integer_i) return "limitop" end
function ConvertUnitType(integer_i) return "unittype" end
function ConvertGameSpeed(integer_i) return "gamespeed" end
function ConvertPlacement(integer_i) return "placement" end
function ConvertStartLocPrio(integer_i) return "startlocprio" end
function ConvertGameDifficulty(integer_i) return "gamedifficulty" end
function ConvertGameType(integer_i) return "gametype" end
function ConvertMapFlag(integer_i) return "mapflag" end
function ConvertMapVisibility(integer_i) return "mapvisibility" end
function ConvertMapSetting(integer_i) return "mapsetting" end
function ConvertMapDensity(integer_i) return "mapdensity" end
function ConvertMapControl(integer_i) return "mapcontrol" end
function ConvertPlayerColor(integer_i) return "playercolor" end
function ConvertPlayerSlotState(integer_i) return "playerslotstate" end
function ConvertVolumeGroup(integer_i) return "volumegroup" end
function ConvertCameraField(integer_i) return "camerafield" end
function ConvertBlendMode(integer_i) return "blendmode" end
function ConvertRarityControl(integer_i) return "raritycontrol" end
function ConvertTexMapFlags(integer_i) return "texmapflags" end
function ConvertFogState(integer_i) return "fogstate" end
function ConvertEffectType(integer_i) return "effecttype" end
function ConvertVersion(integer_i) return "version" end
function ConvertItemType(integer_i) return "itemtype" end
function ConvertAttackType(integer_i) return "attacktype" end
function ConvertDamageType(integer_i) return "damagetype" end
function ConvertWeaponType(integer_i) return "weapontype" end
function ConvertSoundType(integer_i) return "soundtype" end
function ConvertPathingType(integer_i) return "pathingtype" end
function ConvertMouseButtonType(integer_i) return "mousebuttontype" end
function ConvertAnimType(integer_i) return "animtype" end
function ConvertSubAnimType(integer_i) return "subanimtype" end
function ConvertOriginFrameType(integer_i) return "originframetype" end
function ConvertFramePointType(integer_i) return "framepointtype" end
function ConvertTextAlignType(integer_i) return "textaligntype" end
function ConvertFrameEventType(integer_i) return "frameeventtype" end
function ConvertOsKeyType(integer_i) return "oskeytype" end
function ConvertAbilityIntegerField(integer_i) return "abilityintegerfield" end
function ConvertAbilityRealField(integer_i) return "abilityrealfield" end
function ConvertAbilityBooleanField(integer_i) return "abilitybooleanfield" end
function ConvertAbilityStringField(integer_i) return "abilitystringfield" end
function ConvertAbilityIntegerLevelField(integer_i) return "abilityintegerlevelfield" end
function ConvertAbilityRealLevelField(integer_i) return "abilityreallevelfield" end
function ConvertAbilityBooleanLevelField(integer_i) return "abilitybooleanlevelfield" end
function ConvertAbilityStringLevelField(integer_i) return "abilitystringlevelfield" end
function ConvertAbilityIntegerLevelArrayField(integer_i) return "abilityintegerlevelarrayfield" end
function ConvertAbilityRealLevelArrayField(integer_i) return "abilityreallevelarrayfield" end
function ConvertAbilityBooleanLevelArrayField(integer_i) return "abilitybooleanlevelarrayfield" end
function ConvertAbilityStringLevelArrayField(integer_i) return "abilitystringlevelarrayfield" end
function ConvertUnitIntegerField(integer_i) return "unitintegerfield" end
function ConvertUnitRealField(integer_i) return "unitrealfield" end
function ConvertUnitBooleanField(integer_i) return "unitbooleanfield" end
function ConvertUnitStringField(integer_i) return "unitstringfield" end
function ConvertUnitWeaponIntegerField(integer_i) return "unitweaponintegerfield" end
function ConvertUnitWeaponRealField(integer_i) return "unitweaponrealfield" end
function ConvertUnitWeaponBooleanField(integer_i) return "unitweaponbooleanfield" end
function ConvertUnitWeaponStringField(integer_i) return "unitweaponstringfield" end
function ConvertItemIntegerField(integer_i) return "itemintegerfield" end
function ConvertItemRealField(integer_i) return "itemrealfield" end
function ConvertItemBooleanField(integer_i) return "itembooleanfield" end
function ConvertItemStringField(integer_i) return "itemstringfield" end
function ConvertMoveType(integer_i) return "movetype" end
function ConvertTargetFlag(integer_i) return "targetflag" end
function ConvertArmorType(integer_i) return "armortype" end
function ConvertHeroAttribute(integer_i) return "heroattribute" end
function ConvertDefenseType(integer_i) return "defensetype" end
function ConvertRegenType(integer_i) return "regentype" end
function ConvertUnitCategory(integer_i) return "unitcategory" end
function ConvertPathingFlag(integer_i) return "pathingflag" end
function OrderId(string_orderIdString) return "integer" end
function OrderId2String(integer_orderId) return "string" end
function UnitId(string_unitIdString) return "integer" end
function UnitId2String(integer_unitId) return "string" end
function AbilityId(string_abilityIdString) return "integer" end
function AbilityId2String(integer_abilityId) return "string" end
function GetObjectName(integer_objectId) return "string" end
function GetBJMaxPlayers() return "integer" end
function GetBJPlayerNeutralVictim() return "integer" end
function GetBJPlayerNeutralExtra() return "integer" end
function GetBJMaxPlayerSlots() return "integer" end
function GetPlayerNeutralPassive() return "integer" end
function GetPlayerNeutralAggressive() return "integer" end
--Globals
    FALSE = false
    TRUE = true
    JASS_MAX_ARRAY_SIZE = 32768
    PLAYER_NEUTRAL_PASSIVE = GetPlayerNeutralPassive()
    PLAYER_NEUTRAL_AGGRESSIVE = GetPlayerNeutralAggressive()
    PLAYER_COLOR_RED = ConvertPlayerColor(0)
    PLAYER_COLOR_BLUE = ConvertPlayerColor(1)
    PLAYER_COLOR_CYAN = ConvertPlayerColor(2)
    PLAYER_COLOR_PURPLE = ConvertPlayerColor(3)
    PLAYER_COLOR_YELLOW = ConvertPlayerColor(4)
    PLAYER_COLOR_ORANGE = ConvertPlayerColor(5)
    PLAYER_COLOR_GREEN = ConvertPlayerColor(6)
    PLAYER_COLOR_PINK = ConvertPlayerColor(7)
    PLAYER_COLOR_LIGHT_GRAY = ConvertPlayerColor(8)
    PLAYER_COLOR_LIGHT_BLUE = ConvertPlayerColor(9)
    PLAYER_COLOR_AQUA = ConvertPlayerColor(10)
    PLAYER_COLOR_BROWN = ConvertPlayerColor(11)
    PLAYER_COLOR_MAROON = ConvertPlayerColor(12)
    PLAYER_COLOR_NAVY = ConvertPlayerColor(13)
    PLAYER_COLOR_TURQUOISE = ConvertPlayerColor(14)
    PLAYER_COLOR_VIOLET = ConvertPlayerColor(15)
    PLAYER_COLOR_WHEAT = ConvertPlayerColor(16)
    PLAYER_COLOR_PEACH = ConvertPlayerColor(17)
    PLAYER_COLOR_MINT = ConvertPlayerColor(18)
    PLAYER_COLOR_LAVENDER = ConvertPlayerColor(19)
    PLAYER_COLOR_COAL = ConvertPlayerColor(20)
    PLAYER_COLOR_SNOW = ConvertPlayerColor(21)
    PLAYER_COLOR_EMERALD = ConvertPlayerColor(22)
    PLAYER_COLOR_PEANUT = ConvertPlayerColor(23)
    RACE_HUMAN = ConvertRace(1)
    RACE_ORC = ConvertRace(2)
    RACE_UNDEAD = ConvertRace(3)
    RACE_NIGHTELF = ConvertRace(4)
    RACE_DEMON = ConvertRace(5)
    RACE_OTHER = ConvertRace(7)
    PLAYER_GAME_RESULT_VICTORY = ConvertPlayerGameResult(0)
    PLAYER_GAME_RESULT_DEFEAT = ConvertPlayerGameResult(1)
    PLAYER_GAME_RESULT_TIE = ConvertPlayerGameResult(2)
    PLAYER_GAME_RESULT_NEUTRAL = ConvertPlayerGameResult(3)
    ALLIANCE_PASSIVE = ConvertAllianceType(0)
    ALLIANCE_HELP_REQUEST = ConvertAllianceType(1)
    ALLIANCE_HELP_RESPONSE = ConvertAllianceType(2)
    ALLIANCE_SHARED_XP = ConvertAllianceType(3)
    ALLIANCE_SHARED_SPELLS = ConvertAllianceType(4)
    ALLIANCE_SHARED_VISION = ConvertAllianceType(5)
    ALLIANCE_SHARED_CONTROL = ConvertAllianceType(6)
    ALLIANCE_SHARED_ADVANCED_CONTROL = ConvertAllianceType(7)
    ALLIANCE_RESCUABLE = ConvertAllianceType(8)
    ALLIANCE_SHARED_VISION_FORCED = ConvertAllianceType(9)
    VERSION_REIGN_OF_CHAOS = ConvertVersion(0)
    VERSION_FROZEN_THRONE = ConvertVersion(1)
    ATTACK_TYPE_NORMAL = ConvertAttackType(0)
    ATTACK_TYPE_MELEE = ConvertAttackType(1)
    ATTACK_TYPE_PIERCE = ConvertAttackType(2)
    ATTACK_TYPE_SIEGE = ConvertAttackType(3)
    ATTACK_TYPE_MAGIC = ConvertAttackType(4)
    ATTACK_TYPE_CHAOS = ConvertAttackType(5)
    ATTACK_TYPE_HERO = ConvertAttackType(6)
    DAMAGE_TYPE_UNKNOWN = ConvertDamageType(0)
    DAMAGE_TYPE_NORMAL = ConvertDamageType(4)
    DAMAGE_TYPE_ENHANCED = ConvertDamageType(5)
    DAMAGE_TYPE_FIRE = ConvertDamageType(8)
    DAMAGE_TYPE_COLD = ConvertDamageType(9)
    DAMAGE_TYPE_LIGHTNING = ConvertDamageType(10)
    DAMAGE_TYPE_POISON = ConvertDamageType(11)
    DAMAGE_TYPE_DISEASE = ConvertDamageType(12)
    DAMAGE_TYPE_DIVINE = ConvertDamageType(13)
    DAMAGE_TYPE_MAGIC = ConvertDamageType(14)
    DAMAGE_TYPE_SONIC = ConvertDamageType(15)
    DAMAGE_TYPE_ACID = ConvertDamageType(16)
    DAMAGE_TYPE_FORCE = ConvertDamageType(17)
    DAMAGE_TYPE_DEATH = ConvertDamageType(18)
    DAMAGE_TYPE_MIND = ConvertDamageType(19)
    DAMAGE_TYPE_PLANT = ConvertDamageType(20)
    DAMAGE_TYPE_DEFENSIVE = ConvertDamageType(21)
    DAMAGE_TYPE_DEMOLITION = ConvertDamageType(22)
    DAMAGE_TYPE_SLOW_POISON = ConvertDamageType(23)
    DAMAGE_TYPE_SPIRIT_LINK = ConvertDamageType(24)
    DAMAGE_TYPE_SHADOW_STRIKE = ConvertDamageType(25)
    DAMAGE_TYPE_UNIVERSAL = ConvertDamageType(26)
    WEAPON_TYPE_WHOKNOWS = ConvertWeaponType(0)
    WEAPON_TYPE_METAL_LIGHT_CHOP = ConvertWeaponType(1)
    WEAPON_TYPE_METAL_MEDIUM_CHOP = ConvertWeaponType(2)
    WEAPON_TYPE_METAL_HEAVY_CHOP = ConvertWeaponType(3)
    WEAPON_TYPE_METAL_LIGHT_SLICE = ConvertWeaponType(4)
    WEAPON_TYPE_METAL_MEDIUM_SLICE = ConvertWeaponType(5)
    WEAPON_TYPE_METAL_HEAVY_SLICE = ConvertWeaponType(6)
    WEAPON_TYPE_METAL_MEDIUM_BASH = ConvertWeaponType(7)
    WEAPON_TYPE_METAL_HEAVY_BASH = ConvertWeaponType(8)
    WEAPON_TYPE_METAL_MEDIUM_STAB = ConvertWeaponType(9)
    WEAPON_TYPE_METAL_HEAVY_STAB = ConvertWeaponType(10)
    WEAPON_TYPE_WOOD_LIGHT_SLICE = ConvertWeaponType(11)
    WEAPON_TYPE_WOOD_MEDIUM_SLICE = ConvertWeaponType(12)
    WEAPON_TYPE_WOOD_HEAVY_SLICE = ConvertWeaponType(13)
    WEAPON_TYPE_WOOD_LIGHT_BASH = ConvertWeaponType(14)
    WEAPON_TYPE_WOOD_MEDIUM_BASH = ConvertWeaponType(15)
    WEAPON_TYPE_WOOD_HEAVY_BASH = ConvertWeaponType(16)
    WEAPON_TYPE_WOOD_LIGHT_STAB = ConvertWeaponType(17)
    WEAPON_TYPE_WOOD_MEDIUM_STAB = ConvertWeaponType(18)
    WEAPON_TYPE_CLAW_LIGHT_SLICE = ConvertWeaponType(19)
    WEAPON_TYPE_CLAW_MEDIUM_SLICE = ConvertWeaponType(20)
    WEAPON_TYPE_CLAW_HEAVY_SLICE = ConvertWeaponType(21)
    WEAPON_TYPE_AXE_MEDIUM_CHOP = ConvertWeaponType(22)
    WEAPON_TYPE_ROCK_HEAVY_BASH = ConvertWeaponType(23)
    PATHING_TYPE_ANY = ConvertPathingType(0)
    PATHING_TYPE_WALKABILITY = ConvertPathingType(1)
    PATHING_TYPE_FLYABILITY = ConvertPathingType(2)
    PATHING_TYPE_BUILDABILITY = ConvertPathingType(3)
    PATHING_TYPE_PEONHARVESTPATHING = ConvertPathingType(4)
    PATHING_TYPE_BLIGHTPATHING = ConvertPathingType(5)
    PATHING_TYPE_FLOATABILITY = ConvertPathingType(6)
    PATHING_TYPE_AMPHIBIOUSPATHING = ConvertPathingType(7)
    MOUSE_BUTTON_TYPE_LEFT = ConvertMouseButtonType(1)
    MOUSE_BUTTON_TYPE_MIDDLE = ConvertMouseButtonType(2)
    MOUSE_BUTTON_TYPE_RIGHT = ConvertMouseButtonType(3)
    ANIM_TYPE_BIRTH = ConvertAnimType(0)
    ANIM_TYPE_DEATH = ConvertAnimType(1)
    ANIM_TYPE_DECAY = ConvertAnimType(2)
    ANIM_TYPE_DISSIPATE = ConvertAnimType(3)
    ANIM_TYPE_STAND = ConvertAnimType(4)
    ANIM_TYPE_WALK = ConvertAnimType(5)
    ANIM_TYPE_ATTACK = ConvertAnimType(6)
    ANIM_TYPE_MORPH = ConvertAnimType(7)
    ANIM_TYPE_SLEEP = ConvertAnimType(8)
    ANIM_TYPE_SPELL = ConvertAnimType(9)
    ANIM_TYPE_PORTRAIT = ConvertAnimType(10)
    SUBANIM_TYPE_ROOTED = ConvertSubAnimType(11)
    SUBANIM_TYPE_ALTERNATE_EX = ConvertSubAnimType(12)
    SUBANIM_TYPE_LOOPING = ConvertSubAnimType(13)
    SUBANIM_TYPE_SLAM = ConvertSubAnimType(14)
    SUBANIM_TYPE_THROW = ConvertSubAnimType(15)
    SUBANIM_TYPE_SPIKED = ConvertSubAnimType(16)
    SUBANIM_TYPE_FAST = ConvertSubAnimType(17)
    SUBANIM_TYPE_SPIN = ConvertSubAnimType(18)
    SUBANIM_TYPE_READY = ConvertSubAnimType(19)
    SUBANIM_TYPE_CHANNEL = ConvertSubAnimType(20)
    SUBANIM_TYPE_DEFEND = ConvertSubAnimType(21)
    SUBANIM_TYPE_VICTORY = ConvertSubAnimType(22)
    SUBANIM_TYPE_TURN = ConvertSubAnimType(23)
    SUBANIM_TYPE_LEFT = ConvertSubAnimType(24)
    SUBANIM_TYPE_RIGHT = ConvertSubAnimType(25)
    SUBANIM_TYPE_FIRE = ConvertSubAnimType(26)
    SUBANIM_TYPE_FLESH = ConvertSubAnimType(27)
    SUBANIM_TYPE_HIT = ConvertSubAnimType(28)
    SUBANIM_TYPE_WOUNDED = ConvertSubAnimType(29)
    SUBANIM_TYPE_LIGHT = ConvertSubAnimType(30)
    SUBANIM_TYPE_MODERATE = ConvertSubAnimType(31)
    SUBANIM_TYPE_SEVERE = ConvertSubAnimType(32)
    SUBANIM_TYPE_CRITICAL = ConvertSubAnimType(33)
    SUBANIM_TYPE_COMPLETE = ConvertSubAnimType(34)
    SUBANIM_TYPE_GOLD = ConvertSubAnimType(35)
    SUBANIM_TYPE_LUMBER = ConvertSubAnimType(36)
    SUBANIM_TYPE_WORK = ConvertSubAnimType(37)
    SUBANIM_TYPE_TALK = ConvertSubAnimType(38)
    SUBANIM_TYPE_FIRST = ConvertSubAnimType(39)
    SUBANIM_TYPE_SECOND = ConvertSubAnimType(40)
    SUBANIM_TYPE_THIRD = ConvertSubAnimType(41)
    SUBANIM_TYPE_FOURTH = ConvertSubAnimType(42)
    SUBANIM_TYPE_FIFTH = ConvertSubAnimType(43)
    SUBANIM_TYPE_ONE = ConvertSubAnimType(44)
    SUBANIM_TYPE_TWO = ConvertSubAnimType(45)
    SUBANIM_TYPE_THREE = ConvertSubAnimType(46)
    SUBANIM_TYPE_FOUR = ConvertSubAnimType(47)
    SUBANIM_TYPE_FIVE = ConvertSubAnimType(48)
    SUBANIM_TYPE_SMALL = ConvertSubAnimType(49)
    SUBANIM_TYPE_MEDIUM = ConvertSubAnimType(50)
    SUBANIM_TYPE_LARGE = ConvertSubAnimType(51)
    SUBANIM_TYPE_UPGRADE = ConvertSubAnimType(52)
    SUBANIM_TYPE_DRAIN = ConvertSubAnimType(53)
    SUBANIM_TYPE_FILL = ConvertSubAnimType(54)
    SUBANIM_TYPE_CHAINLIGHTNING = ConvertSubAnimType(55)
    SUBANIM_TYPE_EATTREE = ConvertSubAnimType(56)
    SUBANIM_TYPE_PUKE = ConvertSubAnimType(57)
    SUBANIM_TYPE_FLAIL = ConvertSubAnimType(58)
    SUBANIM_TYPE_OFF = ConvertSubAnimType(59)
    SUBANIM_TYPE_SWIM = ConvertSubAnimType(60)
    SUBANIM_TYPE_ENTANGLE = ConvertSubAnimType(61)
    SUBANIM_TYPE_BERSERK = ConvertSubAnimType(62)
    RACE_PREF_HUMAN = ConvertRacePref(1)
    RACE_PREF_ORC = ConvertRacePref(2)
    RACE_PREF_NIGHTELF = ConvertRacePref(4)
    RACE_PREF_UNDEAD = ConvertRacePref(8)
    RACE_PREF_DEMON = ConvertRacePref(16)
    RACE_PREF_RANDOM = ConvertRacePref(32)
    RACE_PREF_USER_SELECTABLE = ConvertRacePref(64)
    MAP_CONTROL_USER = ConvertMapControl(0)
    MAP_CONTROL_COMPUTER = ConvertMapControl(1)
    MAP_CONTROL_RESCUABLE = ConvertMapControl(2)
    MAP_CONTROL_NEUTRAL = ConvertMapControl(3)
    MAP_CONTROL_CREEP = ConvertMapControl(4)
    MAP_CONTROL_NONE = ConvertMapControl(5)
    GAME_TYPE_MELEE = ConvertGameType(1)
    GAME_TYPE_FFA = ConvertGameType(2)
    GAME_TYPE_USE_MAP_SETTINGS = ConvertGameType(4)
    GAME_TYPE_BLIZ = ConvertGameType(8)
    GAME_TYPE_ONE_ON_ONE = ConvertGameType(16)
    GAME_TYPE_TWO_TEAM_PLAY = ConvertGameType(32)
    GAME_TYPE_THREE_TEAM_PLAY = ConvertGameType(64)
    GAME_TYPE_FOUR_TEAM_PLAY = ConvertGameType(128)
    MAP_FOG_HIDE_TERRAIN = ConvertMapFlag(1)
    MAP_FOG_MAP_EXPLORED = ConvertMapFlag(2)
    MAP_FOG_ALWAYS_VISIBLE = ConvertMapFlag(4)
    MAP_USE_HANDICAPS = ConvertMapFlag(8)
    MAP_OBSERVERS = ConvertMapFlag(16)
    MAP_OBSERVERS_ON_DEATH = ConvertMapFlag(32)
    MAP_FIXED_COLORS = ConvertMapFlag(128)
    MAP_LOCK_RESOURCE_TRADING = ConvertMapFlag(256)
    MAP_RESOURCE_TRADING_ALLIES_ONLY = ConvertMapFlag(512)
    MAP_LOCK_ALLIANCE_CHANGES = ConvertMapFlag(1024)
    MAP_ALLIANCE_CHANGES_HIDDEN = ConvertMapFlag(2048)
    MAP_CHEATS = ConvertMapFlag(4096)
    MAP_CHEATS_HIDDEN = ConvertMapFlag(8192)
    MAP_LOCK_SPEED = ConvertMapFlag(81922)
    MAP_LOCK_RANDOM_SEED = ConvertMapFlag(81924)
    MAP_SHARED_ADVANCED_CONTROL = ConvertMapFlag(81928)
    MAP_RANDOM_HERO = ConvertMapFlag(819216)
    MAP_RANDOM_RACES = ConvertMapFlag(819232)
    MAP_RELOADED = ConvertMapFlag(819264)
    MAP_PLACEMENT_RANDOM = ConvertPlacement(0)
    MAP_PLACEMENT_FIXED = ConvertPlacement(1)
    MAP_PLACEMENT_USE_MAP_SETTINGS = ConvertPlacement(2)
    MAP_PLACEMENT_TEAMS_TOGETHER = ConvertPlacement(3)
    MAP_LOC_PRIO_LOW = ConvertStartLocPrio(0)
    MAP_LOC_PRIO_HIGH = ConvertStartLocPrio(1)
    MAP_LOC_PRIO_NOT = ConvertStartLocPrio(2)
    MAP_DENSITY_NONE = ConvertMapDensity(0)
    MAP_DENSITY_LIGHT = ConvertMapDensity(1)
    MAP_DENSITY_MEDIUM = ConvertMapDensity(2)
    MAP_DENSITY_HEAVY = ConvertMapDensity(3)
    MAP_DIFFICULTY_EASY = ConvertGameDifficulty(0)
    MAP_DIFFICULTY_NORMAL = ConvertGameDifficulty(1)
    MAP_DIFFICULTY_HARD = ConvertGameDifficulty(2)
    MAP_DIFFICULTY_INSANE = ConvertGameDifficulty(3)
    MAP_SPEED_SLOWEST = ConvertGameSpeed(0)
    MAP_SPEED_SLOW = ConvertGameSpeed(1)
    MAP_SPEED_NORMAL = ConvertGameSpeed(2)
    MAP_SPEED_FAST = ConvertGameSpeed(3)
    MAP_SPEED_FASTEST = ConvertGameSpeed(4)
    PLAYER_SLOT_STATE_EMPTY = ConvertPlayerSlotState(0)
    PLAYER_SLOT_STATE_PLAYING = ConvertPlayerSlotState(1)
    PLAYER_SLOT_STATE_LEFT = ConvertPlayerSlotState(2)
    SOUND_VOLUMEGROUP_UNITMOVEMENT = ConvertVolumeGroup(0)
    SOUND_VOLUMEGROUP_UNITSOUNDS = ConvertVolumeGroup(1)
    SOUND_VOLUMEGROUP_COMBAT = ConvertVolumeGroup(2)
    SOUND_VOLUMEGROUP_SPELLS = ConvertVolumeGroup(3)
    SOUND_VOLUMEGROUP_UI = ConvertVolumeGroup(4)
    SOUND_VOLUMEGROUP_MUSIC = ConvertVolumeGroup(5)
    SOUND_VOLUMEGROUP_AMBIENTSOUNDS = ConvertVolumeGroup(6)
    SOUND_VOLUMEGROUP_FIRE = ConvertVolumeGroup(7)
    GAME_STATE_DIVINE_INTERVENTION = ConvertIGameState(0)
    GAME_STATE_DISCONNECTED = ConvertIGameState(1)
    GAME_STATE_TIME_OF_DAY = ConvertFGameState(2)
    PLAYER_STATE_GAME_RESULT = ConvertPlayerState(0)
    PLAYER_STATE_RESOURCE_GOLD = ConvertPlayerState(1)
    PLAYER_STATE_RESOURCE_LUMBER = ConvertPlayerState(2)
    PLAYER_STATE_RESOURCE_HERO_TOKENS = ConvertPlayerState(3)
    PLAYER_STATE_RESOURCE_FOOD_CAP = ConvertPlayerState(4)
    PLAYER_STATE_RESOURCE_FOOD_USED = ConvertPlayerState(5)
    PLAYER_STATE_FOOD_CAP_CEILING = ConvertPlayerState(6)
    PLAYER_STATE_GIVES_BOUNTY = ConvertPlayerState(7)
    PLAYER_STATE_ALLIED_VICTORY = ConvertPlayerState(8)
    PLAYER_STATE_PLACED = ConvertPlayerState(9)
    PLAYER_STATE_OBSERVER_ON_DEATH = ConvertPlayerState(10)
    PLAYER_STATE_OBSERVER = ConvertPlayerState(11)
    PLAYER_STATE_UNFOLLOWABLE = ConvertPlayerState(12)
    PLAYER_STATE_GOLD_UPKEEP_RATE = ConvertPlayerState(13)
    PLAYER_STATE_LUMBER_UPKEEP_RATE = ConvertPlayerState(14)
    PLAYER_STATE_GOLD_GATHERED = ConvertPlayerState(15)
    PLAYER_STATE_LUMBER_GATHERED = ConvertPlayerState(16)
    PLAYER_STATE_NO_CREEP_SLEEP = ConvertPlayerState(25)
    UNIT_STATE_LIFE = ConvertUnitState(0)
    UNIT_STATE_MAX_LIFE = ConvertUnitState(1)
    UNIT_STATE_MANA = ConvertUnitState(2)
    UNIT_STATE_MAX_MANA = ConvertUnitState(3)
    AI_DIFFICULTY_NEWBIE = ConvertAIDifficulty(0)
    AI_DIFFICULTY_NORMAL = ConvertAIDifficulty(1)
    AI_DIFFICULTY_INSANE = ConvertAIDifficulty(2)
    PLAYER_SCORE_UNITS_TRAINED = ConvertPlayerScore(0)
    PLAYER_SCORE_UNITS_KILLED = ConvertPlayerScore(1)
    PLAYER_SCORE_STRUCT_BUILT = ConvertPlayerScore(2)
    PLAYER_SCORE_STRUCT_RAZED = ConvertPlayerScore(3)
    PLAYER_SCORE_TECH_PERCENT = ConvertPlayerScore(4)
    PLAYER_SCORE_FOOD_MAXPROD = ConvertPlayerScore(5)
    PLAYER_SCORE_FOOD_MAXUSED = ConvertPlayerScore(6)
    PLAYER_SCORE_HEROES_KILLED = ConvertPlayerScore(7)
    PLAYER_SCORE_ITEMS_GAINED = ConvertPlayerScore(8)
    PLAYER_SCORE_MERCS_HIRED = ConvertPlayerScore(9)
    PLAYER_SCORE_GOLD_MINED_TOTAL = ConvertPlayerScore(10)
    PLAYER_SCORE_GOLD_MINED_UPKEEP = ConvertPlayerScore(11)
    PLAYER_SCORE_GOLD_LOST_UPKEEP = ConvertPlayerScore(12)
    PLAYER_SCORE_GOLD_LOST_TAX = ConvertPlayerScore(13)
    PLAYER_SCORE_GOLD_GIVEN = ConvertPlayerScore(14)
    PLAYER_SCORE_GOLD_RECEIVED = ConvertPlayerScore(15)
    PLAYER_SCORE_LUMBER_TOTAL = ConvertPlayerScore(16)
    PLAYER_SCORE_LUMBER_LOST_UPKEEP = ConvertPlayerScore(17)
    PLAYER_SCORE_LUMBER_LOST_TAX = ConvertPlayerScore(18)
    PLAYER_SCORE_LUMBER_GIVEN = ConvertPlayerScore(19)
    PLAYER_SCORE_LUMBER_RECEIVED = ConvertPlayerScore(20)
    PLAYER_SCORE_UNIT_TOTAL = ConvertPlayerScore(21)
    PLAYER_SCORE_HERO_TOTAL = ConvertPlayerScore(22)
    PLAYER_SCORE_RESOURCE_TOTAL = ConvertPlayerScore(23)
    PLAYER_SCORE_TOTAL = ConvertPlayerScore(24)
    EVENT_GAME_VICTORY = ConvertGameEvent(0)
    EVENT_GAME_END_LEVEL = ConvertGameEvent(1)
    EVENT_GAME_VARIABLE_LIMIT = ConvertGameEvent(2)
    EVENT_GAME_STATE_LIMIT = ConvertGameEvent(3)
    EVENT_GAME_TIMER_EXPIRED = ConvertGameEvent(4)
    EVENT_GAME_ENTER_REGION = ConvertGameEvent(5)
    EVENT_GAME_LEAVE_REGION = ConvertGameEvent(6)
    EVENT_GAME_TRACKABLE_HIT = ConvertGameEvent(7)
    EVENT_GAME_TRACKABLE_TRACK = ConvertGameEvent(8)
    EVENT_GAME_SHOW_SKILL = ConvertGameEvent(9)
    EVENT_GAME_BUILD_SUBMENU = ConvertGameEvent(10)
    EVENT_PLAYER_STATE_LIMIT = ConvertPlayerEvent(11)
    EVENT_PLAYER_ALLIANCE_CHANGED = ConvertPlayerEvent(12)
    EVENT_PLAYER_DEFEAT = ConvertPlayerEvent(13)
    EVENT_PLAYER_VICTORY = ConvertPlayerEvent(14)
    EVENT_PLAYER_LEAVE = ConvertPlayerEvent(15)
    EVENT_PLAYER_CHAT = ConvertPlayerEvent(16)
    EVENT_PLAYER_END_CINEMATIC = ConvertPlayerEvent(17)
    EVENT_PLAYER_UNIT_ATTACKED = ConvertPlayerUnitEvent(18)
    EVENT_PLAYER_UNIT_RESCUED = ConvertPlayerUnitEvent(19)
    EVENT_PLAYER_UNIT_DEATH = ConvertPlayerUnitEvent(20)
    EVENT_PLAYER_UNIT_DECAY = ConvertPlayerUnitEvent(21)
    EVENT_PLAYER_UNIT_DETECTED = ConvertPlayerUnitEvent(22)
    EVENT_PLAYER_UNIT_HIDDEN = ConvertPlayerUnitEvent(23)
    EVENT_PLAYER_UNIT_SELECTED = ConvertPlayerUnitEvent(24)
    EVENT_PLAYER_UNIT_DESELECTED = ConvertPlayerUnitEvent(25)
    EVENT_PLAYER_UNIT_CONSTRUCT_START = ConvertPlayerUnitEvent(26)
    EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL = ConvertPlayerUnitEvent(27)
    EVENT_PLAYER_UNIT_CONSTRUCT_FINISH = ConvertPlayerUnitEvent(28)
    EVENT_PLAYER_UNIT_UPGRADE_START = ConvertPlayerUnitEvent(29)
    EVENT_PLAYER_UNIT_UPGRADE_CANCEL = ConvertPlayerUnitEvent(30)
    EVENT_PLAYER_UNIT_UPGRADE_FINISH = ConvertPlayerUnitEvent(31)
    EVENT_PLAYER_UNIT_TRAIN_START = ConvertPlayerUnitEvent(32)
    EVENT_PLAYER_UNIT_TRAIN_CANCEL = ConvertPlayerUnitEvent(33)
    EVENT_PLAYER_UNIT_TRAIN_FINISH = ConvertPlayerUnitEvent(34)
    EVENT_PLAYER_UNIT_RESEARCH_START = ConvertPlayerUnitEvent(35)
    EVENT_PLAYER_UNIT_RESEARCH_CANCEL = ConvertPlayerUnitEvent(36)
    EVENT_PLAYER_UNIT_RESEARCH_FINISH = ConvertPlayerUnitEvent(37)
    EVENT_PLAYER_UNIT_ISSUED_ORDER = ConvertPlayerUnitEvent(38)
    EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER = ConvertPlayerUnitEvent(39)
    EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER = ConvertPlayerUnitEvent(40)
    EVENT_PLAYER_UNIT_ISSUED_UNIT_ORDER = ConvertPlayerUnitEvent(40)
    EVENT_PLAYER_HERO_LEVEL = ConvertPlayerUnitEvent(41)
    EVENT_PLAYER_HERO_SKILL = ConvertPlayerUnitEvent(42)
    EVENT_PLAYER_HERO_REVIVABLE = ConvertPlayerUnitEvent(43)
    EVENT_PLAYER_HERO_REVIVE_START = ConvertPlayerUnitEvent(44)
    EVENT_PLAYER_HERO_REVIVE_CANCEL = ConvertPlayerUnitEvent(45)
    EVENT_PLAYER_HERO_REVIVE_FINISH = ConvertPlayerUnitEvent(46)
    EVENT_PLAYER_UNIT_SUMMON = ConvertPlayerUnitEvent(47)
    EVENT_PLAYER_UNIT_DROP_ITEM = ConvertPlayerUnitEvent(48)
    EVENT_PLAYER_UNIT_PICKUP_ITEM = ConvertPlayerUnitEvent(49)
    EVENT_PLAYER_UNIT_USE_ITEM = ConvertPlayerUnitEvent(50)
    EVENT_PLAYER_UNIT_LOADED = ConvertPlayerUnitEvent(51)
    EVENT_PLAYER_UNIT_DAMAGED = ConvertPlayerUnitEvent(308)
    EVENT_PLAYER_UNIT_DAMAGING = ConvertPlayerUnitEvent(315)
    EVENT_UNIT_DAMAGED = ConvertUnitEvent(52)
    EVENT_UNIT_DAMAGING = ConvertUnitEvent(314)
    EVENT_UNIT_DEATH = ConvertUnitEvent(53)
    EVENT_UNIT_DECAY = ConvertUnitEvent(54)
    EVENT_UNIT_DETECTED = ConvertUnitEvent(55)
    EVENT_UNIT_HIDDEN = ConvertUnitEvent(56)
    EVENT_UNIT_SELECTED = ConvertUnitEvent(57)
    EVENT_UNIT_DESELECTED = ConvertUnitEvent(58)
    EVENT_UNIT_STATE_LIMIT = ConvertUnitEvent(59)
    EVENT_UNIT_ACQUIRED_TARGET = ConvertUnitEvent(60)
    EVENT_UNIT_TARGET_IN_RANGE = ConvertUnitEvent(61)
    EVENT_UNIT_ATTACKED = ConvertUnitEvent(62)
    EVENT_UNIT_RESCUED = ConvertUnitEvent(63)
    EVENT_UNIT_CONSTRUCT_CANCEL = ConvertUnitEvent(64)
    EVENT_UNIT_CONSTRUCT_FINISH = ConvertUnitEvent(65)
    EVENT_UNIT_UPGRADE_START = ConvertUnitEvent(66)
    EVENT_UNIT_UPGRADE_CANCEL = ConvertUnitEvent(67)
    EVENT_UNIT_UPGRADE_FINISH = ConvertUnitEvent(68)
    EVENT_UNIT_TRAIN_START = ConvertUnitEvent(69)
    EVENT_UNIT_TRAIN_CANCEL = ConvertUnitEvent(70)
    EVENT_UNIT_TRAIN_FINISH = ConvertUnitEvent(71)
    EVENT_UNIT_RESEARCH_START = ConvertUnitEvent(72)
    EVENT_UNIT_RESEARCH_CANCEL = ConvertUnitEvent(73)
    EVENT_UNIT_RESEARCH_FINISH = ConvertUnitEvent(74)
    EVENT_UNIT_ISSUED_ORDER = ConvertUnitEvent(75)
    EVENT_UNIT_ISSUED_POINT_ORDER = ConvertUnitEvent(76)
    EVENT_UNIT_ISSUED_TARGET_ORDER = ConvertUnitEvent(77)
    EVENT_UNIT_HERO_LEVEL = ConvertUnitEvent(78)
    EVENT_UNIT_HERO_SKILL = ConvertUnitEvent(79)
    EVENT_UNIT_HERO_REVIVABLE = ConvertUnitEvent(80)
    EVENT_UNIT_HERO_REVIVE_START = ConvertUnitEvent(81)
    EVENT_UNIT_HERO_REVIVE_CANCEL = ConvertUnitEvent(82)
    EVENT_UNIT_HERO_REVIVE_FINISH = ConvertUnitEvent(83)
    EVENT_UNIT_SUMMON = ConvertUnitEvent(84)
    EVENT_UNIT_DROP_ITEM = ConvertUnitEvent(85)
    EVENT_UNIT_PICKUP_ITEM = ConvertUnitEvent(86)
    EVENT_UNIT_USE_ITEM = ConvertUnitEvent(87)
    EVENT_UNIT_LOADED = ConvertUnitEvent(88)
    EVENT_WIDGET_DEATH = ConvertWidgetEvent(89)
    EVENT_DIALOG_BUTTON_CLICK = ConvertDialogEvent(90)
    EVENT_DIALOG_CLICK = ConvertDialogEvent(91)
    EVENT_GAME_LOADED = ConvertGameEvent(256)
    EVENT_GAME_TOURNAMENT_FINISH_SOON = ConvertGameEvent(257)
    EVENT_GAME_TOURNAMENT_FINISH_NOW = ConvertGameEvent(258)
    EVENT_GAME_SAVE = ConvertGameEvent(259)
    EVENT_GAME_CUSTOM_UI_FRAME = ConvertGameEvent(310)
    EVENT_PLAYER_ARROW_LEFT_DOWN = ConvertPlayerEvent(261)
    EVENT_PLAYER_ARROW_LEFT_UP = ConvertPlayerEvent(262)
    EVENT_PLAYER_ARROW_RIGHT_DOWN = ConvertPlayerEvent(263)
    EVENT_PLAYER_ARROW_RIGHT_UP = ConvertPlayerEvent(264)
    EVENT_PLAYER_ARROW_DOWN_DOWN = ConvertPlayerEvent(265)
    EVENT_PLAYER_ARROW_DOWN_UP = ConvertPlayerEvent(266)
    EVENT_PLAYER_ARROW_UP_DOWN = ConvertPlayerEvent(267)
    EVENT_PLAYER_ARROW_UP_UP = ConvertPlayerEvent(268)
    EVENT_PLAYER_MOUSE_DOWN = ConvertPlayerEvent(305)
    EVENT_PLAYER_MOUSE_UP = ConvertPlayerEvent(306)
    EVENT_PLAYER_MOUSE_MOVE = ConvertPlayerEvent(307)
    EVENT_PLAYER_SYNC_DATA = ConvertPlayerEvent(309)
    EVENT_PLAYER_KEY = ConvertPlayerEvent(311)
    EVENT_PLAYER_KEY_DOWN = ConvertPlayerEvent(312)
    EVENT_PLAYER_KEY_UP = ConvertPlayerEvent(313)
    EVENT_PLAYER_UNIT_SELL = ConvertPlayerUnitEvent(269)
    EVENT_PLAYER_UNIT_CHANGE_OWNER = ConvertPlayerUnitEvent(270)
    EVENT_PLAYER_UNIT_SELL_ITEM = ConvertPlayerUnitEvent(271)
    EVENT_PLAYER_UNIT_SPELL_CHANNEL = ConvertPlayerUnitEvent(272)
    EVENT_PLAYER_UNIT_SPELL_CAST = ConvertPlayerUnitEvent(273)
    EVENT_PLAYER_UNIT_SPELL_EFFECT = ConvertPlayerUnitEvent(274)
    EVENT_PLAYER_UNIT_SPELL_FINISH = ConvertPlayerUnitEvent(275)
    EVENT_PLAYER_UNIT_SPELL_ENDCAST = ConvertPlayerUnitEvent(276)
    EVENT_PLAYER_UNIT_PAWN_ITEM = ConvertPlayerUnitEvent(277)
    EVENT_UNIT_SELL = ConvertUnitEvent(286)
    EVENT_UNIT_CHANGE_OWNER = ConvertUnitEvent(287)
    EVENT_UNIT_SELL_ITEM = ConvertUnitEvent(288)
    EVENT_UNIT_SPELL_CHANNEL = ConvertUnitEvent(289)
    EVENT_UNIT_SPELL_CAST = ConvertUnitEvent(290)
    EVENT_UNIT_SPELL_EFFECT = ConvertUnitEvent(291)
    EVENT_UNIT_SPELL_FINISH = ConvertUnitEvent(292)
    EVENT_UNIT_SPELL_ENDCAST = ConvertUnitEvent(293)
    EVENT_UNIT_PAWN_ITEM = ConvertUnitEvent(294)
    LESS_THAN = ConvertLimitOp(0)
    LESS_THAN_OR_EQUAL = ConvertLimitOp(1)
    EQUAL = ConvertLimitOp(2)
    GREATER_THAN_OR_EQUAL = ConvertLimitOp(3)
    GREATER_THAN = ConvertLimitOp(4)
    NOT_EQUAL = ConvertLimitOp(5)
    UNIT_TYPE_HERO = ConvertUnitType(0)
    UNIT_TYPE_DEAD = ConvertUnitType(1)
    UNIT_TYPE_STRUCTURE = ConvertUnitType(2)
    UNIT_TYPE_FLYING = ConvertUnitType(3)
    UNIT_TYPE_GROUND = ConvertUnitType(4)
    UNIT_TYPE_ATTACKS_FLYING = ConvertUnitType(5)
    UNIT_TYPE_ATTACKS_GROUND = ConvertUnitType(6)
    UNIT_TYPE_MELEE_ATTACKER = ConvertUnitType(7)
    UNIT_TYPE_RANGED_ATTACKER = ConvertUnitType(8)
    UNIT_TYPE_GIANT = ConvertUnitType(9)
    UNIT_TYPE_SUMMONED = ConvertUnitType(10)
    UNIT_TYPE_STUNNED = ConvertUnitType(11)
    UNIT_TYPE_PLAGUED = ConvertUnitType(12)
    UNIT_TYPE_SNARED = ConvertUnitType(13)
    UNIT_TYPE_UNDEAD = ConvertUnitType(14)
    UNIT_TYPE_MECHANICAL = ConvertUnitType(15)
    UNIT_TYPE_PEON = ConvertUnitType(16)
    UNIT_TYPE_SAPPER = ConvertUnitType(17)
    UNIT_TYPE_TOWNHALL = ConvertUnitType(18)
    UNIT_TYPE_ANCIENT = ConvertUnitType(19)
    UNIT_TYPE_TAUREN = ConvertUnitType(20)
    UNIT_TYPE_POISONED = ConvertUnitType(21)
    UNIT_TYPE_POLYMORPHED = ConvertUnitType(22)
    UNIT_TYPE_SLEEPING = ConvertUnitType(23)
    UNIT_TYPE_RESISTANT = ConvertUnitType(24)
    UNIT_TYPE_ETHEREAL = ConvertUnitType(25)
    UNIT_TYPE_MAGIC_IMMUNE = ConvertUnitType(26)
    ITEM_TYPE_PERMANENT = ConvertItemType(0)
    ITEM_TYPE_CHARGED = ConvertItemType(1)
    ITEM_TYPE_POWERUP = ConvertItemType(2)
    ITEM_TYPE_ARTIFACT = ConvertItemType(3)
    ITEM_TYPE_PURCHASABLE = ConvertItemType(4)
    ITEM_TYPE_CAMPAIGN = ConvertItemType(5)
    ITEM_TYPE_MISCELLANEOUS = ConvertItemType(6)
    ITEM_TYPE_UNKNOWN = ConvertItemType(7)
    ITEM_TYPE_ANY = ConvertItemType(8)
    ITEM_TYPE_TOME = ConvertItemType(2)
    CAMERA_FIELD_TARGET_DISTANCE = ConvertCameraField(0)
    CAMERA_FIELD_FARZ = ConvertCameraField(1)
    CAMERA_FIELD_ANGLE_OF_ATTACK = ConvertCameraField(2)
    CAMERA_FIELD_FIELD_OF_VIEW = ConvertCameraField(3)
    CAMERA_FIELD_ROLL = ConvertCameraField(4)
    CAMERA_FIELD_ROTATION = ConvertCameraField(5)
    CAMERA_FIELD_ZOFFSET = ConvertCameraField(6)
    CAMERA_FIELD_NEARZ = ConvertCameraField(7)
    CAMERA_FIELD_LOCAL_PITCH = ConvertCameraField(8)
    CAMERA_FIELD_LOCAL_YAW = ConvertCameraField(9)
    CAMERA_FIELD_LOCAL_ROLL = ConvertCameraField(10)
    BLEND_MODE_NONE = ConvertBlendMode(0)
    BLEND_MODE_DONT_CARE = ConvertBlendMode(0)
    BLEND_MODE_KEYALPHA = ConvertBlendMode(1)
    BLEND_MODE_BLEND = ConvertBlendMode(2)
    BLEND_MODE_ADDITIVE = ConvertBlendMode(3)
    BLEND_MODE_MODULATE = ConvertBlendMode(4)
    BLEND_MODE_MODULATE_2X = ConvertBlendMode(5)
    RARITY_FREQUENT = ConvertRarityControl(0)
    RARITY_RARE = ConvertRarityControl(1)
    TEXMAP_FLAG_NONE = ConvertTexMapFlags(0)
    TEXMAP_FLAG_WRAP_U = ConvertTexMapFlags(1)
    TEXMAP_FLAG_WRAP_V = ConvertTexMapFlags(2)
    TEXMAP_FLAG_WRAP_UV = ConvertTexMapFlags(3)
    FOG_OF_WAR_MASKED = ConvertFogState(1)
    FOG_OF_WAR_FOGGED = ConvertFogState(2)
    FOG_OF_WAR_VISIBLE = ConvertFogState(4)
    CAMERA_MARGIN_LEFT = 0
    CAMERA_MARGIN_RIGHT = 1
    CAMERA_MARGIN_TOP = 2
    CAMERA_MARGIN_BOTTOM = 3
    EFFECT_TYPE_EFFECT = ConvertEffectType(0)
    EFFECT_TYPE_TARGET = ConvertEffectType(1)
    EFFECT_TYPE_CASTER = ConvertEffectType(2)
    EFFECT_TYPE_SPECIAL = ConvertEffectType(3)
    EFFECT_TYPE_AREA_EFFECT = ConvertEffectType(4)
    EFFECT_TYPE_MISSILE = ConvertEffectType(5)
    EFFECT_TYPE_LIGHTNING = ConvertEffectType(6)
    SOUND_TYPE_EFFECT = ConvertSoundType(0)
    SOUND_TYPE_EFFECT_LOOPED = ConvertSoundType(1)
    ORIGIN_FRAME_GAME_UI = ConvertOriginFrameType(0)
    ORIGIN_FRAME_COMMAND_BUTTON = ConvertOriginFrameType(1)
    ORIGIN_FRAME_HERO_BAR = ConvertOriginFrameType(2)
    ORIGIN_FRAME_HERO_BUTTON = ConvertOriginFrameType(3)
    ORIGIN_FRAME_HERO_HP_BAR = ConvertOriginFrameType(4)
    ORIGIN_FRAME_HERO_MANA_BAR = ConvertOriginFrameType(5)
    ORIGIN_FRAME_HERO_BUTTON_INDICATOR = ConvertOriginFrameType(6)
    ORIGIN_FRAME_ITEM_BUTTON = ConvertOriginFrameType(7)
    ORIGIN_FRAME_MINIMAP = ConvertOriginFrameType(8)
    ORIGIN_FRAME_MINIMAP_BUTTON = ConvertOriginFrameType(9)
    ORIGIN_FRAME_SYSTEM_BUTTON = ConvertOriginFrameType(10)
    ORIGIN_FRAME_TOOLTIP = ConvertOriginFrameType(11)
    ORIGIN_FRAME_UBERTOOLTIP = ConvertOriginFrameType(12)
    ORIGIN_FRAME_CHAT_MSG = ConvertOriginFrameType(13)
    ORIGIN_FRAME_UNIT_MSG = ConvertOriginFrameType(14)
    ORIGIN_FRAME_TOP_MSG = ConvertOriginFrameType(15)
    ORIGIN_FRAME_PORTRAIT = ConvertOriginFrameType(16)
    ORIGIN_FRAME_WORLD_FRAME = ConvertOriginFrameType(17)
    FRAMEPOINT_TOPLEFT = ConvertFramePointType(0)
    FRAMEPOINT_TOP = ConvertFramePointType(1)
    FRAMEPOINT_TOPRIGHT = ConvertFramePointType(2)
    FRAMEPOINT_LEFT = ConvertFramePointType(3)
    FRAMEPOINT_CENTER = ConvertFramePointType(4)
    FRAMEPOINT_RIGHT = ConvertFramePointType(5)
    FRAMEPOINT_BOTTOMLEFT = ConvertFramePointType(6)
    FRAMEPOINT_BOTTOM = ConvertFramePointType(7)
    FRAMEPOINT_BOTTOMRIGHT = ConvertFramePointType(8)
    TEXT_JUSTIFY_TOP = ConvertTextAlignType(0)
    TEXT_JUSTIFY_MIDDLE = ConvertTextAlignType(1)
    TEXT_JUSTIFY_BOTTOM = ConvertTextAlignType(2)
    TEXT_JUSTIFY_LEFT = ConvertTextAlignType(3)
    TEXT_JUSTIFY_CENTER = ConvertTextAlignType(4)
    TEXT_JUSTIFY_RIGHT = ConvertTextAlignType(5)
    FRAMEEVENT_CONTROL_CLICK = ConvertFrameEventType(1)
    FRAMEEVENT_MOUSE_ENTER = ConvertFrameEventType(2)
    FRAMEEVENT_MOUSE_LEAVE = ConvertFrameEventType(3)
    FRAMEEVENT_MOUSE_UP = ConvertFrameEventType(4)
    FRAMEEVENT_MOUSE_DOWN = ConvertFrameEventType(5)
    FRAMEEVENT_MOUSE_WHEEL = ConvertFrameEventType(6)
    FRAMEEVENT_CHECKBOX_CHECKED = ConvertFrameEventType(7)
    FRAMEEVENT_CHECKBOX_UNCHECKED = ConvertFrameEventType(8)
    FRAMEEVENT_EDITBOX_TEXT_CHANGED = ConvertFrameEventType(9)
    FRAMEEVENT_POPUPMENU_ITEM_CHANGED = ConvertFrameEventType(10)
    FRAMEEVENT_MOUSE_DOUBLECLICK = ConvertFrameEventType(11)
    FRAMEEVENT_SPRITE_ANIM_UPDATE = ConvertFrameEventType(12)
    FRAMEEVENT_SLIDER_VALUE_CHANGED = ConvertFrameEventType(13)
    FRAMEEVENT_DIALOG_CANCEL = ConvertFrameEventType(14)
    FRAMEEVENT_DIALOG_ACCEPT = ConvertFrameEventType(15)
    FRAMEEVENT_EDITBOX_ENTER = ConvertFrameEventType(16)
    OSKEY_BACKSPACE = ConvertOsKeyType(0x08)
    OSKEY_TAB = ConvertOsKeyType(0x09)
    OSKEY_CLEAR = ConvertOsKeyType(0x0C)
    OSKEY_RETURN = ConvertOsKeyType(0x0D)
    OSKEY_SHIFT = ConvertOsKeyType(0x10)
    OSKEY_CONTROL = ConvertOsKeyType(0x11)
    OSKEY_ALT = ConvertOsKeyType(0x12)
    OSKEY_PAUSE = ConvertOsKeyType(0x13)
    OSKEY_CAPSLOCK = ConvertOsKeyType(0x14)
    OSKEY_KANA = ConvertOsKeyType(0x15)
    OSKEY_HANGUL = ConvertOsKeyType(0x15)
    OSKEY_JUNJA = ConvertOsKeyType(0x17)
    OSKEY_FINAL = ConvertOsKeyType(0x18)
    OSKEY_HANJA = ConvertOsKeyType(0x19)
    OSKEY_KANJI = ConvertOsKeyType(0x19)
    OSKEY_ESCAPE = ConvertOsKeyType(0x1B)
    OSKEY_CONVERT = ConvertOsKeyType(0x1C)
    OSKEY_NONCONVERT = ConvertOsKeyType(0x1D)
    OSKEY_ACCEPT = ConvertOsKeyType(0x1E)
    OSKEY_MODECHANGE = ConvertOsKeyType(0x1F)
    OSKEY_SPACE = ConvertOsKeyType(0x20)
    OSKEY_PAGEUP = ConvertOsKeyType(0x21)
    OSKEY_PAGEDOWN = ConvertOsKeyType(0x22)
    OSKEY_END = ConvertOsKeyType(0x23)
    OSKEY_HOME = ConvertOsKeyType(0x24)
    OSKEY_LEFT = ConvertOsKeyType(0x25)
    OSKEY_UP = ConvertOsKeyType(0x26)
    OSKEY_RIGHT = ConvertOsKeyType(0x27)
    OSKEY_DOWN = ConvertOsKeyType(0x28)
    OSKEY_SELECT = ConvertOsKeyType(0x29)
    OSKEY_PRINT = ConvertOsKeyType(0x2A)
    OSKEY_EXECUTE = ConvertOsKeyType(0x2B)
    OSKEY_PRINTSCREEN = ConvertOsKeyType(0x2C)
    OSKEY_INSERT = ConvertOsKeyType(0x2D)
    OSKEY_DELETE = ConvertOsKeyType(0x2E)
    OSKEY_HELP = ConvertOsKeyType(0x2F)
    OSKEY_0 = ConvertOsKeyType(0x30)
    OSKEY_1 = ConvertOsKeyType(0x31)
    OSKEY_2 = ConvertOsKeyType(0x32)
    OSKEY_3 = ConvertOsKeyType(0x33)
    OSKEY_4 = ConvertOsKeyType(0x34)
    OSKEY_5 = ConvertOsKeyType(0x35)
    OSKEY_6 = ConvertOsKeyType(0x36)
    OSKEY_7 = ConvertOsKeyType(0x37)
    OSKEY_8 = ConvertOsKeyType(0x38)
    OSKEY_9 = ConvertOsKeyType(0x39)
    OSKEY_A = ConvertOsKeyType(0x41)
    OSKEY_B = ConvertOsKeyType(0x42)
    OSKEY_C = ConvertOsKeyType(0x43)
    OSKEY_D = ConvertOsKeyType(0x44)
    OSKEY_E = ConvertOsKeyType(0x45)
    OSKEY_F = ConvertOsKeyType(0x46)
    OSKEY_G = ConvertOsKeyType(0x47)
    OSKEY_H = ConvertOsKeyType(0x48)
    OSKEY_I = ConvertOsKeyType(0x49)
    OSKEY_J = ConvertOsKeyType(0x4A)
    OSKEY_K = ConvertOsKeyType(0x4B)
    OSKEY_L = ConvertOsKeyType(0x4C)
    OSKEY_M = ConvertOsKeyType(0x4D)
    OSKEY_N = ConvertOsKeyType(0x4E)
    OSKEY_O = ConvertOsKeyType(0x4F)
    OSKEY_P = ConvertOsKeyType(0x50)
    OSKEY_Q = ConvertOsKeyType(0x51)
    OSKEY_R = ConvertOsKeyType(0x52)
    OSKEY_S = ConvertOsKeyType(0x53)
    OSKEY_T = ConvertOsKeyType(0x54)
    OSKEY_U = ConvertOsKeyType(0x55)
    OSKEY_V = ConvertOsKeyType(0x56)
    OSKEY_W = ConvertOsKeyType(0x57)
    OSKEY_X = ConvertOsKeyType(0x58)
    OSKEY_Y = ConvertOsKeyType(0x59)
    OSKEY_Z = ConvertOsKeyType(0x5A)
    OSKEY_LMETA = ConvertOsKeyType(0x5B)
    OSKEY_RMETA = ConvertOsKeyType(0x5C)
    OSKEY_APPS = ConvertOsKeyType(0x5D)
    OSKEY_SLEEP = ConvertOsKeyType(0x5F)
    OSKEY_NUMPAD0 = ConvertOsKeyType(0x60)
    OSKEY_NUMPAD1 = ConvertOsKeyType(0x61)
    OSKEY_NUMPAD2 = ConvertOsKeyType(0x62)
    OSKEY_NUMPAD3 = ConvertOsKeyType(0x63)
    OSKEY_NUMPAD4 = ConvertOsKeyType(0x64)
    OSKEY_NUMPAD5 = ConvertOsKeyType(0x65)
    OSKEY_NUMPAD6 = ConvertOsKeyType(0x66)
    OSKEY_NUMPAD7 = ConvertOsKeyType(0x67)
    OSKEY_NUMPAD8 = ConvertOsKeyType(0x68)
    OSKEY_NUMPAD9 = ConvertOsKeyType(0x69)
    OSKEY_MULTIPLY = ConvertOsKeyType(0x6A)
    OSKEY_ADD = ConvertOsKeyType(0x6B)
    OSKEY_SEPARATOR = ConvertOsKeyType(0x6C)
    OSKEY_SUBTRACT = ConvertOsKeyType(0x6D)
    OSKEY_DECIMAL = ConvertOsKeyType(0x6E)
    OSKEY_DIVIDE = ConvertOsKeyType(0x6F)
    OSKEY_F1 = ConvertOsKeyType(0x70)
    OSKEY_F2 = ConvertOsKeyType(0x71)
    OSKEY_F3 = ConvertOsKeyType(0x72)
    OSKEY_F4 = ConvertOsKeyType(0x73)
    OSKEY_F5 = ConvertOsKeyType(0x74)
    OSKEY_F6 = ConvertOsKeyType(0x75)
    OSKEY_F7 = ConvertOsKeyType(0x76)
    OSKEY_F8 = ConvertOsKeyType(0x77)
    OSKEY_F9 = ConvertOsKeyType(0x78)
    OSKEY_F10 = ConvertOsKeyType(0x79)
    OSKEY_F11 = ConvertOsKeyType(0x7A)
    OSKEY_F12 = ConvertOsKeyType(0x7B)
    OSKEY_F13 = ConvertOsKeyType(0x7C)
    OSKEY_F14 = ConvertOsKeyType(0x7D)
    OSKEY_F15 = ConvertOsKeyType(0x7E)
    OSKEY_F16 = ConvertOsKeyType(0x7F)
    OSKEY_F17 = ConvertOsKeyType(0x80)
    OSKEY_F18 = ConvertOsKeyType(0x81)
    OSKEY_F19 = ConvertOsKeyType(0x82)
    OSKEY_F20 = ConvertOsKeyType(0x83)
    OSKEY_F21 = ConvertOsKeyType(0x84)
    OSKEY_F22 = ConvertOsKeyType(0x85)
    OSKEY_F23 = ConvertOsKeyType(0x86)
    OSKEY_F24 = ConvertOsKeyType(0x87)
    OSKEY_NUMLOCK = ConvertOsKeyType(0x90)
    OSKEY_SCROLLLOCK = ConvertOsKeyType(0x91)
    OSKEY_OEM_NEC_EQUAL = ConvertOsKeyType(0x92)
    OSKEY_OEM_FJ_JISHO = ConvertOsKeyType(0x92)
    OSKEY_OEM_FJ_MASSHOU = ConvertOsKeyType(0x93)
    OSKEY_OEM_FJ_TOUROKU = ConvertOsKeyType(0x94)
    OSKEY_OEM_FJ_LOYA = ConvertOsKeyType(0x95)
    OSKEY_OEM_FJ_ROYA = ConvertOsKeyType(0x96)
    OSKEY_LSHIFT = ConvertOsKeyType(0xA0)
    OSKEY_RSHIFT = ConvertOsKeyType(0xA1)
    OSKEY_LCONTROL = ConvertOsKeyType(0xA2)
    OSKEY_RCONTROL = ConvertOsKeyType(0xA3)
    OSKEY_LALT = ConvertOsKeyType(0xA4)
    OSKEY_RALT = ConvertOsKeyType(0xA5)
    OSKEY_BROWSER_BACK = ConvertOsKeyType(0xA6)
    OSKEY_BROWSER_FORWARD = ConvertOsKeyType(0xA7)
    OSKEY_BROWSER_REFRESH = ConvertOsKeyType(0xA8)
    OSKEY_BROWSER_STOP = ConvertOsKeyType(0xA9)
    OSKEY_BROWSER_SEARCH = ConvertOsKeyType(0xAA)
    OSKEY_BROWSER_FAVORITES = ConvertOsKeyType(0xAB)
    OSKEY_BROWSER_HOME = ConvertOsKeyType(0xAC)
    OSKEY_VOLUME_MUTE = ConvertOsKeyType(0xAD)
    OSKEY_VOLUME_DOWN = ConvertOsKeyType(0xAE)
    OSKEY_VOLUME_UP = ConvertOsKeyType(0xAF)
    OSKEY_MEDIA_NEXT_TRACK = ConvertOsKeyType(0xB0)
    OSKEY_MEDIA_PREV_TRACK = ConvertOsKeyType(0xB1)
    OSKEY_MEDIA_STOP = ConvertOsKeyType(0xB2)
    OSKEY_MEDIA_PLAY_PAUSE = ConvertOsKeyType(0xB3)
    OSKEY_LAUNCH_MAIL = ConvertOsKeyType(0xB4)
    OSKEY_LAUNCH_MEDIA_SELECT = ConvertOsKeyType(0xB5)
    OSKEY_LAUNCH_APP1 = ConvertOsKeyType(0xB6)
    OSKEY_LAUNCH_APP2 = ConvertOsKeyType(0xB7)
    OSKEY_OEM_1 = ConvertOsKeyType(0xBA)
    OSKEY_OEM_PLUS = ConvertOsKeyType(0xBB)
    OSKEY_OEM_COMMA = ConvertOsKeyType(0xBC)
    OSKEY_OEM_MINUS = ConvertOsKeyType(0xBD)
    OSKEY_OEM_PERIOD = ConvertOsKeyType(0xBE)
    OSKEY_OEM_2 = ConvertOsKeyType(0xBF)
    OSKEY_OEM_3 = ConvertOsKeyType(0xC0)
    OSKEY_OEM_4 = ConvertOsKeyType(0xDB)
    OSKEY_OEM_5 = ConvertOsKeyType(0xDC)
    OSKEY_OEM_6 = ConvertOsKeyType(0xDD)
    OSKEY_OEM_7 = ConvertOsKeyType(0xDE)
    OSKEY_OEM_8 = ConvertOsKeyType(0xDF)
    OSKEY_OEM_AX = ConvertOsKeyType(0xE1)
    OSKEY_OEM_102 = ConvertOsKeyType(0xE2)
    OSKEY_ICO_HELP = ConvertOsKeyType(0xE3)
    OSKEY_ICO_00 = ConvertOsKeyType(0xE4)
    OSKEY_PROCESSKEY = ConvertOsKeyType(0xE5)
    OSKEY_ICO_CLEAR = ConvertOsKeyType(0xE6)
    OSKEY_PACKET = ConvertOsKeyType(0xE7)
    OSKEY_OEM_RESET = ConvertOsKeyType(0xE9)
    OSKEY_OEM_JUMP = ConvertOsKeyType(0xEA)
    OSKEY_OEM_PA1 = ConvertOsKeyType(0xEB)
    OSKEY_OEM_PA2 = ConvertOsKeyType(0xEC)
    OSKEY_OEM_PA3 = ConvertOsKeyType(0xED)
    OSKEY_OEM_WSCTRL = ConvertOsKeyType(0xEE)
    OSKEY_OEM_CUSEL = ConvertOsKeyType(0xEF)
    OSKEY_OEM_ATTN = ConvertOsKeyType(0xF0)
    OSKEY_OEM_FINISH = ConvertOsKeyType(0xF1)
    OSKEY_OEM_COPY = ConvertOsKeyType(0xF2)
    OSKEY_OEM_AUTO = ConvertOsKeyType(0xF3)
    OSKEY_OEM_ENLW = ConvertOsKeyType(0xF4)
    OSKEY_OEM_BACKTAB = ConvertOsKeyType(0xF5)
    OSKEY_ATTN = ConvertOsKeyType(0xF6)
    OSKEY_CRSEL = ConvertOsKeyType(0xF7)
    OSKEY_EXSEL = ConvertOsKeyType(0xF8)
    OSKEY_EREOF = ConvertOsKeyType(0xF9)
    OSKEY_PLAY = ConvertOsKeyType(0xFA)
    OSKEY_ZOOM = ConvertOsKeyType(0xFB)
    OSKEY_NONAME = ConvertOsKeyType(0xFC)
    OSKEY_PA1 = ConvertOsKeyType(0xFD)
    OSKEY_OEM_CLEAR = ConvertOsKeyType(0xFE)
    ABILITY_IF_BUTTON_POSITION_NORMAL_X = ConvertAbilityIntegerField(1633841272)
    ABILITY_IF_BUTTON_POSITION_NORMAL_Y = ConvertAbilityIntegerField(1633841273)
    ABILITY_IF_BUTTON_POSITION_ACTIVATED_X = ConvertAbilityIntegerField(1635082872)
    ABILITY_IF_BUTTON_POSITION_ACTIVATED_Y = ConvertAbilityIntegerField(1635082873)
    ABILITY_IF_BUTTON_POSITION_RESEARCH_X = ConvertAbilityIntegerField(1634889848)
    ABILITY_IF_BUTTON_POSITION_RESEARCH_Y = ConvertAbilityIntegerField(1634889849)
    ABILITY_IF_MISSILE_SPEED = ConvertAbilityIntegerField(1634562928)
    ABILITY_IF_TARGET_ATTACHMENTS = ConvertAbilityIntegerField(1635017059)
    ABILITY_IF_CASTER_ATTACHMENTS = ConvertAbilityIntegerField(1633902947)
    ABILITY_IF_PRIORITY = ConvertAbilityIntegerField(1634759273)
    ABILITY_IF_LEVELS = ConvertAbilityIntegerField(1634493814)
    ABILITY_IF_REQUIRED_LEVEL = ConvertAbilityIntegerField(1634888822)
    ABILITY_IF_LEVEL_SKIP_REQUIREMENT = ConvertAbilityIntegerField(1634497387)
    ABILITY_BF_HERO_ABILITY = ConvertAbilityBooleanField(1634231666)
    ABILITY_BF_ITEM_ABILITY = ConvertAbilityBooleanField(1634301029)
    ABILITY_BF_CHECK_DEPENDENCIES = ConvertAbilityBooleanField(1633904740)
    ABILITY_RF_ARF_MISSILE_ARC = ConvertAbilityRealField(1634558307)
    ABILITY_SF_NAME = ConvertAbilityStringField(1634623853)
    ABILITY_SF_ICON_ACTIVATED = ConvertAbilityStringField(1635082610)
    ABILITY_SF_ICON_RESEARCH = ConvertAbilityStringField(1634886002)
    ABILITY_SF_EFFECT_SOUND = ConvertAbilityStringField(1634035315)
    ABILITY_SF_EFFECT_SOUND_LOOPING = ConvertAbilityStringField(1634035308)
    ABILITY_ILF_MANA_COST = ConvertAbilityIntegerLevelField(1634558835)
    ABILITY_ILF_NUMBER_OF_WAVES = ConvertAbilityIntegerLevelField(1214413361)
    ABILITY_ILF_NUMBER_OF_SHARDS = ConvertAbilityIntegerLevelField(1214413363)
    ABILITY_ILF_NUMBER_OF_UNITS_TELEPORTED = ConvertAbilityIntegerLevelField(1215132721)
    ABILITY_ILF_SUMMONED_UNIT_COUNT_HWE2 = ConvertAbilityIntegerLevelField(1215784242)
    ABILITY_ILF_NUMBER_OF_IMAGES = ConvertAbilityIntegerLevelField(1332570417)
    ABILITY_ILF_NUMBER_OF_CORPSES_RAISED_UAN1 = ConvertAbilityIntegerLevelField(1432448561)
    ABILITY_ILF_MORPHING_FLAGS = ConvertAbilityIntegerLevelField(1164797234)
    ABILITY_ILF_STRENGTH_BONUS_NRG5 = ConvertAbilityIntegerLevelField(1316120373)
    ABILITY_ILF_DEFENSE_BONUS_NRG6 = ConvertAbilityIntegerLevelField(1316120374)
    ABILITY_ILF_NUMBER_OF_TARGETS_HIT = ConvertAbilityIntegerLevelField(1331915826)
    ABILITY_ILF_DETECTION_TYPE_OFS1 = ConvertAbilityIntegerLevelField(1332114225)
    ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_OSF2 = ConvertAbilityIntegerLevelField(1332962866)
    ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_EFN1 = ConvertAbilityIntegerLevelField(1164340785)
    ABILITY_ILF_NUMBER_OF_CORPSES_RAISED_HRE1 = ConvertAbilityIntegerLevelField(1215456561)
    ABILITY_ILF_STACK_FLAGS = ConvertAbilityIntegerLevelField(1214472500)
    ABILITY_ILF_MINIMUM_NUMBER_OF_UNITS = ConvertAbilityIntegerLevelField(1315205170)
    ABILITY_ILF_MAXIMUM_NUMBER_OF_UNITS_NDP3 = ConvertAbilityIntegerLevelField(1315205171)
    ABILITY_ILF_NUMBER_OF_UNITS_CREATED_NRC2 = ConvertAbilityIntegerLevelField(1316119346)
    ABILITY_ILF_SHIELD_LIFE = ConvertAbilityIntegerLevelField(1097691955)
    ABILITY_ILF_MANA_LOSS_AMS4 = ConvertAbilityIntegerLevelField(1097691956)
    ABILITY_ILF_GOLD_PER_INTERVAL_BGM1 = ConvertAbilityIntegerLevelField(1114074417)
    ABILITY_ILF_MAX_NUMBER_OF_MINERS = ConvertAbilityIntegerLevelField(1114074419)
    ABILITY_ILF_CARGO_CAPACITY = ConvertAbilityIntegerLevelField(1130459697)
    ABILITY_ILF_MAXIMUM_CREEP_LEVEL_DEV3 = ConvertAbilityIntegerLevelField(1147500083)
    ABILITY_ILF_MAX_CREEP_LEVEL_DEV1 = ConvertAbilityIntegerLevelField(1147500081)
    ABILITY_ILF_GOLD_PER_INTERVAL_EGM1 = ConvertAbilityIntegerLevelField(1164406065)
    ABILITY_ILF_DEFENSE_REDUCTION = ConvertAbilityIntegerLevelField(1180788017)
    ABILITY_ILF_DETECTION_TYPE_FLA1 = ConvertAbilityIntegerLevelField(1181507889)
    ABILITY_ILF_FLARE_COUNT = ConvertAbilityIntegerLevelField(1181507891)
    ABILITY_ILF_MAX_GOLD = ConvertAbilityIntegerLevelField(1198285873)
    ABILITY_ILF_MINING_CAPACITY = ConvertAbilityIntegerLevelField(1198285875)
    ABILITY_ILF_MAXIMUM_NUMBER_OF_CORPSES_GYD1 = ConvertAbilityIntegerLevelField(1199137841)
    ABILITY_ILF_DAMAGE_TO_TREE = ConvertAbilityIntegerLevelField(1214345777)
    ABILITY_ILF_LUMBER_CAPACITY = ConvertAbilityIntegerLevelField(1214345778)
    ABILITY_ILF_GOLD_CAPACITY = ConvertAbilityIntegerLevelField(1214345779)
    ABILITY_ILF_DEFENSE_INCREASE_INF2 = ConvertAbilityIntegerLevelField(1231971890)
    ABILITY_ILF_INTERACTION_TYPE = ConvertAbilityIntegerLevelField(1315271986)
    ABILITY_ILF_GOLD_COST_NDT1 = ConvertAbilityIntegerLevelField(1315206193)
    ABILITY_ILF_LUMBER_COST_NDT2 = ConvertAbilityIntegerLevelField(1315206194)
    ABILITY_ILF_DETECTION_TYPE_NDT3 = ConvertAbilityIntegerLevelField(1315206195)
    ABILITY_ILF_STACKING_TYPE_POI4 = ConvertAbilityIntegerLevelField(1349478708)
    ABILITY_ILF_STACKING_TYPE_POA5 = ConvertAbilityIntegerLevelField(1349476661)
    ABILITY_ILF_MAXIMUM_CREEP_LEVEL_PLY1 = ConvertAbilityIntegerLevelField(1349286193)
    ABILITY_ILF_MAXIMUM_CREEP_LEVEL_POS1 = ConvertAbilityIntegerLevelField(1349481265)
    ABILITY_ILF_MOVEMENT_UPDATE_FREQUENCY_PRG1 = ConvertAbilityIntegerLevelField(1349674801)
    ABILITY_ILF_ATTACK_UPDATE_FREQUENCY_PRG2 = ConvertAbilityIntegerLevelField(1349674802)
    ABILITY_ILF_MANA_LOSS_PRG6 = ConvertAbilityIntegerLevelField(1349674806)
    ABILITY_ILF_UNITS_SUMMONED_TYPE_ONE = ConvertAbilityIntegerLevelField(1382115633)
    ABILITY_ILF_UNITS_SUMMONED_TYPE_TWO = ConvertAbilityIntegerLevelField(1382115634)
    ABILITY_ILF_MAX_UNITS_SUMMONED = ConvertAbilityIntegerLevelField(1432576565)
    ABILITY_ILF_ALLOW_WHEN_FULL_REJ3 = ConvertAbilityIntegerLevelField(1382378035)
    ABILITY_ILF_MAXIMUM_UNITS_CHARGED_TO_CASTER = ConvertAbilityIntegerLevelField(1383096885)
    ABILITY_ILF_MAXIMUM_UNITS_AFFECTED = ConvertAbilityIntegerLevelField(1383096886)
    ABILITY_ILF_DEFENSE_INCREASE_ROA2 = ConvertAbilityIntegerLevelField(1383031090)
    ABILITY_ILF_MAX_UNITS_ROA7 = ConvertAbilityIntegerLevelField(1383031095)
    ABILITY_ILF_ROOTED_WEAPONS = ConvertAbilityIntegerLevelField(1383034673)
    ABILITY_ILF_UPROOTED_WEAPONS = ConvertAbilityIntegerLevelField(1383034674)
    ABILITY_ILF_UPROOTED_DEFENSE_TYPE = ConvertAbilityIntegerLevelField(1383034676)
    ABILITY_ILF_ACCUMULATION_STEP = ConvertAbilityIntegerLevelField(1398893618)
    ABILITY_ILF_NUMBER_OF_OWLS = ConvertAbilityIntegerLevelField(1165192756)
    ABILITY_ILF_STACKING_TYPE_SPO4 = ConvertAbilityIntegerLevelField(1399877428)
    ABILITY_ILF_NUMBER_OF_UNITS = ConvertAbilityIntegerLevelField(1399809073)
    ABILITY_ILF_SPIDER_CAPACITY = ConvertAbilityIntegerLevelField(1399873841)
    ABILITY_ILF_INTERVALS_BEFORE_CHANGING_TREES = ConvertAbilityIntegerLevelField(1466458418)
    ABILITY_ILF_AGILITY_BONUS = ConvertAbilityIntegerLevelField(1231120233)
    ABILITY_ILF_INTELLIGENCE_BONUS = ConvertAbilityIntegerLevelField(1231646324)
    ABILITY_ILF_STRENGTH_BONUS_ISTR = ConvertAbilityIntegerLevelField(1232303218)
    ABILITY_ILF_ATTACK_BONUS = ConvertAbilityIntegerLevelField(1231123572)
    ABILITY_ILF_DEFENSE_BONUS_IDEF = ConvertAbilityIntegerLevelField(1231316326)
    ABILITY_ILF_SUMMON_1_AMOUNT = ConvertAbilityIntegerLevelField(1232301617)
    ABILITY_ILF_SUMMON_2_AMOUNT = ConvertAbilityIntegerLevelField(1232301618)
    ABILITY_ILF_EXPERIENCE_GAINED = ConvertAbilityIntegerLevelField(1232629863)
    ABILITY_ILF_HIT_POINTS_GAINED_IHPG = ConvertAbilityIntegerLevelField(1231581287)
    ABILITY_ILF_MANA_POINTS_GAINED_IMPG = ConvertAbilityIntegerLevelField(1231908967)
    ABILITY_ILF_HIT_POINTS_GAINED_IHP2 = ConvertAbilityIntegerLevelField(1231581234)
    ABILITY_ILF_MANA_POINTS_GAINED_IMP2 = ConvertAbilityIntegerLevelField(1231908914)
    ABILITY_ILF_DAMAGE_BONUS_DICE = ConvertAbilityIntegerLevelField(1231317347)
    ABILITY_ILF_ARMOR_PENALTY_IARP = ConvertAbilityIntegerLevelField(1231123056)
    ABILITY_ILF_ENABLED_ATTACK_INDEX_IOB5 = ConvertAbilityIntegerLevelField(1232036405)
    ABILITY_ILF_LEVELS_GAINED = ConvertAbilityIntegerLevelField(1231840630)
    ABILITY_ILF_MAX_LIFE_GAINED = ConvertAbilityIntegerLevelField(1231841638)
    ABILITY_ILF_MAX_MANA_GAINED = ConvertAbilityIntegerLevelField(1231905134)
    ABILITY_ILF_GOLD_GIVEN = ConvertAbilityIntegerLevelField(1231515500)
    ABILITY_ILF_LUMBER_GIVEN = ConvertAbilityIntegerLevelField(1231844717)
    ABILITY_ILF_DETECTION_TYPE_IFA1 = ConvertAbilityIntegerLevelField(1231446321)
    ABILITY_ILF_MAXIMUM_CREEP_LEVEL_ICRE = ConvertAbilityIntegerLevelField(1231254117)
    ABILITY_ILF_MOVEMENT_SPEED_BONUS = ConvertAbilityIntegerLevelField(1231910498)
    ABILITY_ILF_HIT_POINTS_REGENERATED_PER_SECOND = ConvertAbilityIntegerLevelField(1231581298)
    ABILITY_ILF_SIGHT_RANGE_BONUS = ConvertAbilityIntegerLevelField(1232300386)
    ABILITY_ILF_DAMAGE_PER_DURATION = ConvertAbilityIntegerLevelField(1231251044)
    ABILITY_ILF_MANA_USED_PER_SECOND = ConvertAbilityIntegerLevelField(1231251053)
    ABILITY_ILF_EXTRA_MANA_REQUIRED = ConvertAbilityIntegerLevelField(1231251064)
    ABILITY_ILF_DETECTION_RADIUS_IDET = ConvertAbilityIntegerLevelField(1231316340)
    ABILITY_ILF_MANA_LOSS_PER_UNIT_IDIM = ConvertAbilityIntegerLevelField(1231317357)
    ABILITY_ILF_DAMAGE_TO_SUMMONED_UNITS_IDID = ConvertAbilityIntegerLevelField(1231317348)
    ABILITY_ILF_MAXIMUM_NUMBER_OF_UNITS_IREC = ConvertAbilityIntegerLevelField(1232233827)
    ABILITY_ILF_DELAY_AFTER_DEATH_SECONDS = ConvertAbilityIntegerLevelField(1232233316)
    ABILITY_ILF_RESTORED_LIFE = ConvertAbilityIntegerLevelField(1769104178)
    ABILITY_ILF_RESTORED_MANA__1_FOR_CURRENT = ConvertAbilityIntegerLevelField(1769104179)
    ABILITY_ILF_HIT_POINTS_RESTORED = ConvertAbilityIntegerLevelField(1231581299)
    ABILITY_ILF_MANA_POINTS_RESTORED = ConvertAbilityIntegerLevelField(1231908979)
    ABILITY_ILF_MAXIMUM_NUMBER_OF_UNITS_ITPM = ConvertAbilityIntegerLevelField(1232367725)
    ABILITY_ILF_NUMBER_OF_CORPSES_RAISED_CAD1 = ConvertAbilityIntegerLevelField(1130456113)
    ABILITY_ILF_TERRAIN_DEFORMATION_DURATION_MS = ConvertAbilityIntegerLevelField(1467118387)
    ABILITY_ILF_MAXIMUM_UNITS = ConvertAbilityIntegerLevelField(1432646449)
    ABILITY_ILF_DETECTION_TYPE_DET1 = ConvertAbilityIntegerLevelField(1147499569)
    ABILITY_ILF_GOLD_COST_PER_STRUCTURE = ConvertAbilityIntegerLevelField(1316188209)
    ABILITY_ILF_LUMBER_COST_PER_USE = ConvertAbilityIntegerLevelField(1316188210)
    ABILITY_ILF_DETECTION_TYPE_NSP3 = ConvertAbilityIntegerLevelField(1316188211)
    ABILITY_ILF_NUMBER_OF_SWARM_UNITS = ConvertAbilityIntegerLevelField(1433170737)
    ABILITY_ILF_MAX_SWARM_UNITS_PER_TARGET = ConvertAbilityIntegerLevelField(1433170739)
    ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_NBA2 = ConvertAbilityIntegerLevelField(1315070258)
    ABILITY_ILF_MAXIMUM_CREEP_LEVEL_NCH1 = ConvertAbilityIntegerLevelField(1315137585)
    ABILITY_ILF_ATTACKS_PREVENTED = ConvertAbilityIntegerLevelField(1316186417)
    ABILITY_ILF_MAXIMUM_NUMBER_OF_TARGETS_EFK3 = ConvertAbilityIntegerLevelField(1164340019)
    ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_ESV1 = ConvertAbilityIntegerLevelField(1165194801)
    ABILITY_ILF_MAXIMUM_NUMBER_OF_CORPSES_EXH1 = ConvertAbilityIntegerLevelField(1702389809)
    ABILITY_ILF_ITEM_CAPACITY = ConvertAbilityIntegerLevelField(1768846897)
    ABILITY_ILF_MAXIMUM_NUMBER_OF_TARGETS_SPL2 = ConvertAbilityIntegerLevelField(1936747570)
    ABILITY_ILF_ALLOW_WHEN_FULL_IRL3 = ConvertAbilityIntegerLevelField(1769106483)
    ABILITY_ILF_MAXIMUM_DISPELLED_UNITS = ConvertAbilityIntegerLevelField(1768186675)
    ABILITY_ILF_NUMBER_OF_LURES = ConvertAbilityIntegerLevelField(1768779569)
    ABILITY_ILF_NEW_TIME_OF_DAY_HOUR = ConvertAbilityIntegerLevelField(1768125489)
    ABILITY_ILF_NEW_TIME_OF_DAY_MINUTE = ConvertAbilityIntegerLevelField(1768125490)
    ABILITY_ILF_NUMBER_OF_UNITS_CREATED_MEC1 = ConvertAbilityIntegerLevelField(1835361073)
    ABILITY_ILF_MINIMUM_SPELLS = ConvertAbilityIntegerLevelField(1936745011)
    ABILITY_ILF_MAXIMUM_SPELLS = ConvertAbilityIntegerLevelField(1936745012)
    ABILITY_ILF_DISABLED_ATTACK_INDEX = ConvertAbilityIntegerLevelField(1735549235)
    ABILITY_ILF_ENABLED_ATTACK_INDEX_GRA4 = ConvertAbilityIntegerLevelField(1735549236)
    ABILITY_ILF_MAXIMUM_ATTACKS = ConvertAbilityIntegerLevelField(1735549237)
    ABILITY_ILF_BUILDING_TYPES_ALLOWED_NPR1 = ConvertAbilityIntegerLevelField(1315992113)
    ABILITY_ILF_BUILDING_TYPES_ALLOWED_NSA1 = ConvertAbilityIntegerLevelField(1316184369)
    ABILITY_ILF_ATTACK_MODIFICATION = ConvertAbilityIntegerLevelField(1231118641)
    ABILITY_ILF_SUMMONED_UNIT_COUNT_NPA5 = ConvertAbilityIntegerLevelField(1315987765)
    ABILITY_ILF_UPGRADE_LEVELS = ConvertAbilityIntegerLevelField(1231514673)
    ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_NDO2 = ConvertAbilityIntegerLevelField(1315204914)
    ABILITY_ILF_BEASTS_PER_SECOND = ConvertAbilityIntegerLevelField(1316189233)
    ABILITY_ILF_TARGET_TYPE = ConvertAbilityIntegerLevelField(1315138610)
    ABILITY_ILF_OPTIONS = ConvertAbilityIntegerLevelField(1315138611)
    ABILITY_ILF_ARMOR_PENALTY_NAB3 = ConvertAbilityIntegerLevelField(1315004979)
    ABILITY_ILF_WAVE_COUNT_NHS6 = ConvertAbilityIntegerLevelField(1315468086)
    ABILITY_ILF_MAX_CREEP_LEVEL_NTM3 = ConvertAbilityIntegerLevelField(1316252979)
    ABILITY_ILF_MISSILE_COUNT = ConvertAbilityIntegerLevelField(1315140403)
    ABILITY_ILF_SPLIT_ATTACK_COUNT = ConvertAbilityIntegerLevelField(1315728691)
    ABILITY_ILF_GENERATION_COUNT = ConvertAbilityIntegerLevelField(1315728694)
    ABILITY_ILF_ROCK_RING_COUNT = ConvertAbilityIntegerLevelField(1316381489)
    ABILITY_ILF_WAVE_COUNT_NVC2 = ConvertAbilityIntegerLevelField(1316381490)
    ABILITY_ILF_PREFER_HOSTILES_TAU1 = ConvertAbilityIntegerLevelField(1415673137)
    ABILITY_ILF_PREFER_FRIENDLIES_TAU2 = ConvertAbilityIntegerLevelField(1415673138)
    ABILITY_ILF_MAX_UNITS_TAU3 = ConvertAbilityIntegerLevelField(1415673139)
    ABILITY_ILF_NUMBER_OF_PULSES = ConvertAbilityIntegerLevelField(1415673140)
    ABILITY_ILF_SUMMONED_UNIT_TYPE_HWE1 = ConvertAbilityIntegerLevelField(1215784241)
    ABILITY_ILF_SUMMONED_UNIT_UIN4 = ConvertAbilityIntegerLevelField(1432972852)
    ABILITY_ILF_SUMMONED_UNIT_OSF1 = ConvertAbilityIntegerLevelField(1332962865)
    ABILITY_ILF_SUMMONED_UNIT_TYPE_EFNU = ConvertAbilityIntegerLevelField(1164340853)
    ABILITY_ILF_SUMMONED_UNIT_TYPE_NBAU = ConvertAbilityIntegerLevelField(1315070325)
    ABILITY_ILF_SUMMONED_UNIT_TYPE_NTOU = ConvertAbilityIntegerLevelField(1316253557)
    ABILITY_ILF_SUMMONED_UNIT_TYPE_ESVU = ConvertAbilityIntegerLevelField(1165194869)
    ABILITY_ILF_SUMMONED_UNIT_TYPES = ConvertAbilityIntegerLevelField(1315268145)
    ABILITY_ILF_SUMMONED_UNIT_TYPE_NDOU = ConvertAbilityIntegerLevelField(1315204981)
    ABILITY_ILF_ALTERNATE_FORM_UNIT_EMEU = ConvertAbilityIntegerLevelField(1164797301)
    ABILITY_ILF_PLAGUE_WARD_UNIT_TYPE = ConvertAbilityIntegerLevelField(1097886837)
    ABILITY_ILF_ALLOWED_UNIT_TYPE_BTL1 = ConvertAbilityIntegerLevelField(1114926129)
    ABILITY_ILF_NEW_UNIT_TYPE = ConvertAbilityIntegerLevelField(1130914097)
    ABILITY_ILF_RESULTING_UNIT_TYPE_ENT1 = ConvertAbilityIntegerLevelField(1701737521)
    ABILITY_ILF_CORPSE_UNIT_TYPE = ConvertAbilityIntegerLevelField(1199137909)
    ABILITY_ILF_ALLOWED_UNIT_TYPE_LOA1 = ConvertAbilityIntegerLevelField(1282367793)
    ABILITY_ILF_UNIT_TYPE_FOR_LIMIT_CHECK = ConvertAbilityIntegerLevelField(1382115701)
    ABILITY_ILF_WARD_UNIT_TYPE_STAU = ConvertAbilityIntegerLevelField(1400136053)
    ABILITY_ILF_EFFECT_ABILITY = ConvertAbilityIntegerLevelField(1232036469)
    ABILITY_ILF_CONVERSION_UNIT = ConvertAbilityIntegerLevelField(1315201842)
    ABILITY_ILF_UNIT_TO_PRESERVE = ConvertAbilityIntegerLevelField(1316187185)
    ABILITY_ILF_UNIT_TYPE_ALLOWED = ConvertAbilityIntegerLevelField(1130916913)
    ABILITY_ILF_SWARM_UNIT_TYPE = ConvertAbilityIntegerLevelField(1433170805)
    ABILITY_ILF_RESULTING_UNIT_TYPE_COAU = ConvertAbilityIntegerLevelField(1668243829)
    ABILITY_ILF_UNIT_TYPE_EXHU = ConvertAbilityIntegerLevelField(1702389877)
    ABILITY_ILF_WARD_UNIT_TYPE_HWDU = ConvertAbilityIntegerLevelField(1752654965)
    ABILITY_ILF_LURE_UNIT_TYPE = ConvertAbilityIntegerLevelField(1768779637)
    ABILITY_ILF_UNIT_TYPE_IPMU = ConvertAbilityIntegerLevelField(1768975733)
    ABILITY_ILF_FACTORY_UNIT_ID = ConvertAbilityIntegerLevelField(1316190581)
    ABILITY_ILF_SPAWN_UNIT_ID_NFYU = ConvertAbilityIntegerLevelField(1315338613)
    ABILITY_ILF_DESTRUCTIBLE_ID = ConvertAbilityIntegerLevelField(1316381557)
    ABILITY_ILF_UPGRADE_TYPE = ConvertAbilityIntegerLevelField(1231514741)
    ABILITY_RLF_CASTING_TIME = ConvertAbilityRealLevelField(1633902963)
    ABILITY_RLF_DURATION_NORMAL = ConvertAbilityRealLevelField(1633973618)
    ABILITY_RLF_DURATION_HERO = ConvertAbilityRealLevelField(1634231413)
    ABILITY_RLF_COOLDOWN = ConvertAbilityRealLevelField(1633903726)
    ABILITY_RLF_AREA_OF_EFFECT = ConvertAbilityRealLevelField(1633776229)
    ABILITY_RLF_CAST_RANGE = ConvertAbilityRealLevelField(1634885998)
    ABILITY_RLF_DAMAGE_HBZ2 = ConvertAbilityRealLevelField(1214413362)
    ABILITY_RLF_BUILDING_REDUCTION_HBZ4 = ConvertAbilityRealLevelField(1214413364)
    ABILITY_RLF_DAMAGE_PER_SECOND_HBZ5 = ConvertAbilityRealLevelField(1214413365)
    ABILITY_RLF_MAXIMUM_DAMAGE_PER_WAVE = ConvertAbilityRealLevelField(1214413366)
    ABILITY_RLF_MANA_REGENERATION_INCREASE = ConvertAbilityRealLevelField(1214341681)
    ABILITY_RLF_CASTING_DELAY = ConvertAbilityRealLevelField(1215132722)
    ABILITY_RLF_DAMAGE_PER_SECOND_OWW1 = ConvertAbilityRealLevelField(1333229361)
    ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_OWW2 = ConvertAbilityRealLevelField(1333229362)
    ABILITY_RLF_CHANCE_TO_CRITICAL_STRIKE = ConvertAbilityRealLevelField(1331917361)
    ABILITY_RLF_DAMAGE_MULTIPLIER_OCR2 = ConvertAbilityRealLevelField(1331917362)
    ABILITY_RLF_DAMAGE_BONUS_OCR3 = ConvertAbilityRealLevelField(1331917363)
    ABILITY_RLF_CHANCE_TO_EVADE_OCR4 = ConvertAbilityRealLevelField(1331917364)
    ABILITY_RLF_DAMAGE_DEALT_PERCENT_OMI2 = ConvertAbilityRealLevelField(1332570418)
    ABILITY_RLF_DAMAGE_TAKEN_PERCENT_OMI3 = ConvertAbilityRealLevelField(1332570419)
    ABILITY_RLF_ANIMATION_DELAY = ConvertAbilityRealLevelField(1332570420)
    ABILITY_RLF_TRANSITION_TIME = ConvertAbilityRealLevelField(1333226289)
    ABILITY_RLF_MOVEMENT_SPEED_INCREASE_PERCENT_OWK2 = ConvertAbilityRealLevelField(1333226290)
    ABILITY_RLF_BACKSTAB_DAMAGE = ConvertAbilityRealLevelField(1333226291)
    ABILITY_RLF_AMOUNT_HEALED_DAMAGED_UDC1 = ConvertAbilityRealLevelField(1432642353)
    ABILITY_RLF_LIFE_CONVERTED_TO_MANA = ConvertAbilityRealLevelField(1432645681)
    ABILITY_RLF_LIFE_CONVERTED_TO_LIFE = ConvertAbilityRealLevelField(1432645682)
    ABILITY_RLF_MOVEMENT_SPEED_INCREASE_PERCENT_UAU1 = ConvertAbilityRealLevelField(1432450353)
    ABILITY_RLF_LIFE_REGENERATION_INCREASE_PERCENT = ConvertAbilityRealLevelField(1432450354)
    ABILITY_RLF_CHANCE_TO_EVADE_EEV1 = ConvertAbilityRealLevelField(1164277297)
    ABILITY_RLF_DAMAGE_PER_INTERVAL = ConvertAbilityRealLevelField(1164537137)
    ABILITY_RLF_MANA_DRAINED_PER_SECOND_EIM2 = ConvertAbilityRealLevelField(1164537138)
    ABILITY_RLF_BUFFER_MANA_REQUIRED = ConvertAbilityRealLevelField(1164537139)
    ABILITY_RLF_MAX_MANA_DRAINED = ConvertAbilityRealLevelField(1164796465)
    ABILITY_RLF_BOLT_DELAY = ConvertAbilityRealLevelField(1164796466)
    ABILITY_RLF_BOLT_LIFETIME = ConvertAbilityRealLevelField(1164796467)
    ABILITY_RLF_ALTITUDE_ADJUSTMENT_DURATION = ConvertAbilityRealLevelField(1164797235)
    ABILITY_RLF_LANDING_DELAY_TIME = ConvertAbilityRealLevelField(1164797236)
    ABILITY_RLF_ALTERNATE_FORM_HIT_POINT_BONUS = ConvertAbilityRealLevelField(1164797237)
    ABILITY_RLF_MOVE_SPEED_BONUS_INFO_PANEL_ONLY = ConvertAbilityRealLevelField(1315140149)
    ABILITY_RLF_ATTACK_SPEED_BONUS_INFO_PANEL_ONLY = ConvertAbilityRealLevelField(1315140150)
    ABILITY_RLF_LIFE_REGENERATION_RATE_PER_SECOND = ConvertAbilityRealLevelField(1635149109)
    ABILITY_RLF_STUN_DURATION_USL1 = ConvertAbilityRealLevelField(1433627697)
    ABILITY_RLF_ATTACK_DAMAGE_STOLEN_PERCENT = ConvertAbilityRealLevelField(1432450609)
    ABILITY_RLF_DAMAGE_UCS1 = ConvertAbilityRealLevelField(1432580913)
    ABILITY_RLF_MAX_DAMAGE_UCS2 = ConvertAbilityRealLevelField(1432580914)
    ABILITY_RLF_DISTANCE_UCS3 = ConvertAbilityRealLevelField(1432580915)
    ABILITY_RLF_FINAL_AREA_UCS4 = ConvertAbilityRealLevelField(1432580916)
    ABILITY_RLF_DAMAGE_UIN1 = ConvertAbilityRealLevelField(1432972849)
    ABILITY_RLF_DURATION = ConvertAbilityRealLevelField(1432972850)
    ABILITY_RLF_IMPACT_DELAY = ConvertAbilityRealLevelField(1432972851)
    ABILITY_RLF_DAMAGE_PER_TARGET_OCL1 = ConvertAbilityRealLevelField(1331915825)
    ABILITY_RLF_DAMAGE_REDUCTION_PER_TARGET = ConvertAbilityRealLevelField(1331915827)
    ABILITY_RLF_EFFECT_DELAY_OEQ1 = ConvertAbilityRealLevelField(1332048177)
    ABILITY_RLF_DAMAGE_PER_SECOND_TO_BUILDINGS = ConvertAbilityRealLevelField(1332048178)
    ABILITY_RLF_UNITS_SLOWED_PERCENT = ConvertAbilityRealLevelField(1332048179)
    ABILITY_RLF_FINAL_AREA_OEQ4 = ConvertAbilityRealLevelField(1332048180)
    ABILITY_RLF_DAMAGE_PER_SECOND_EER1 = ConvertAbilityRealLevelField(1164276273)
    ABILITY_RLF_DAMAGE_DEALT_TO_ATTACKERS = ConvertAbilityRealLevelField(1164011569)
    ABILITY_RLF_LIFE_HEALED = ConvertAbilityRealLevelField(1165259057)
    ABILITY_RLF_HEAL_INTERVAL = ConvertAbilityRealLevelField(1165259058)
    ABILITY_RLF_BUILDING_REDUCTION_ETQ3 = ConvertAbilityRealLevelField(1165259059)
    ABILITY_RLF_INITIAL_IMMUNITY_DURATION = ConvertAbilityRealLevelField(1165259060)
    ABILITY_RLF_MAX_LIFE_DRAINED_PER_SECOND_PERCENT = ConvertAbilityRealLevelField(1432642609)
    ABILITY_RLF_BUILDING_REDUCTION_UDD2 = ConvertAbilityRealLevelField(1432642610)
    ABILITY_RLF_ARMOR_DURATION = ConvertAbilityRealLevelField(1432772913)
    ABILITY_RLF_ARMOR_BONUS_UFA2 = ConvertAbilityRealLevelField(1432772914)
    ABILITY_RLF_AREA_OF_EFFECT_DAMAGE = ConvertAbilityRealLevelField(1432776241)
    ABILITY_RLF_SPECIFIC_TARGET_DAMAGE_UFN2 = ConvertAbilityRealLevelField(1432776242)
    ABILITY_RLF_DAMAGE_BONUS_HFA1 = ConvertAbilityRealLevelField(1214669105)
    ABILITY_RLF_DAMAGE_DEALT_ESF1 = ConvertAbilityRealLevelField(1165190705)
    ABILITY_RLF_DAMAGE_INTERVAL_ESF2 = ConvertAbilityRealLevelField(1165190706)
    ABILITY_RLF_BUILDING_REDUCTION_ESF3 = ConvertAbilityRealLevelField(1165190707)
    ABILITY_RLF_DAMAGE_BONUS_PERCENT = ConvertAbilityRealLevelField(1164014129)
    ABILITY_RLF_DEFENSE_BONUS_HAV1 = ConvertAbilityRealLevelField(1214346801)
    ABILITY_RLF_HIT_POINT_BONUS = ConvertAbilityRealLevelField(1214346802)
    ABILITY_RLF_DAMAGE_BONUS_HAV3 = ConvertAbilityRealLevelField(1214346803)
    ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_HAV4 = ConvertAbilityRealLevelField(1214346804)
    ABILITY_RLF_CHANCE_TO_BASH = ConvertAbilityRealLevelField(1214408753)
    ABILITY_RLF_DAMAGE_MULTIPLIER_HBH2 = ConvertAbilityRealLevelField(1214408754)
    ABILITY_RLF_DAMAGE_BONUS_HBH3 = ConvertAbilityRealLevelField(1214408755)
    ABILITY_RLF_CHANCE_TO_MISS_HBH4 = ConvertAbilityRealLevelField(1214408756)
    ABILITY_RLF_DAMAGE_HTB1 = ConvertAbilityRealLevelField(1215586865)
    ABILITY_RLF_AOE_DAMAGE = ConvertAbilityRealLevelField(1215587121)
    ABILITY_RLF_SPECIFIC_TARGET_DAMAGE_HTC2 = ConvertAbilityRealLevelField(1215587122)
    ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_PERCENT_HTC3 = ConvertAbilityRealLevelField(1215587123)
    ABILITY_RLF_ATTACK_SPEED_REDUCTION_PERCENT_HTC4 = ConvertAbilityRealLevelField(1215587124)
    ABILITY_RLF_ARMOR_BONUS_HAD1 = ConvertAbilityRealLevelField(1214342193)
    ABILITY_RLF_AMOUNT_HEALED_DAMAGED_HHB1 = ConvertAbilityRealLevelField(1214800433)
    ABILITY_RLF_EXTRA_DAMAGE_HCA1 = ConvertAbilityRealLevelField(1214472497)
    ABILITY_RLF_MOVEMENT_SPEED_FACTOR_HCA2 = ConvertAbilityRealLevelField(1214472498)
    ABILITY_RLF_ATTACK_SPEED_FACTOR_HCA3 = ConvertAbilityRealLevelField(1214472499)
    ABILITY_RLF_MOVEMENT_SPEED_INCREASE_PERCENT_OAE1 = ConvertAbilityRealLevelField(1331782961)
    ABILITY_RLF_ATTACK_SPEED_INCREASE_PERCENT_OAE2 = ConvertAbilityRealLevelField(1331782962)
    ABILITY_RLF_REINCARNATION_DELAY = ConvertAbilityRealLevelField(1332897073)
    ABILITY_RLF_DAMAGE_OSH1 = ConvertAbilityRealLevelField(1332963377)
    ABILITY_RLF_MAXIMUM_DAMAGE_OSH2 = ConvertAbilityRealLevelField(1332963378)
    ABILITY_RLF_DISTANCE_OSH3 = ConvertAbilityRealLevelField(1332963379)
    ABILITY_RLF_FINAL_AREA_OSH4 = ConvertAbilityRealLevelField(1332963380)
    ABILITY_RLF_GRAPHIC_DELAY_NFD1 = ConvertAbilityRealLevelField(1315333169)
    ABILITY_RLF_GRAPHIC_DURATION_NFD2 = ConvertAbilityRealLevelField(1315333170)
    ABILITY_RLF_DAMAGE_NFD3 = ConvertAbilityRealLevelField(1315333171)
    ABILITY_RLF_SUMMONED_UNIT_DAMAGE_AMS1 = ConvertAbilityRealLevelField(1097691953)
    ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_AMS2 = ConvertAbilityRealLevelField(1097691954)
    ABILITY_RLF_AURA_DURATION = ConvertAbilityRealLevelField(1097886769)
    ABILITY_RLF_DAMAGE_PER_SECOND_APL2 = ConvertAbilityRealLevelField(1097886770)
    ABILITY_RLF_DURATION_OF_PLAGUE_WARD = ConvertAbilityRealLevelField(1097886771)
    ABILITY_RLF_AMOUNT_OF_HIT_POINTS_REGENERATED = ConvertAbilityRealLevelField(1331786289)
    ABILITY_RLF_ATTACK_DAMAGE_INCREASE_AKB1 = ConvertAbilityRealLevelField(1097556529)
    ABILITY_RLF_MANA_LOSS_ADM1 = ConvertAbilityRealLevelField(1097100593)
    ABILITY_RLF_SUMMONED_UNIT_DAMAGE_ADM2 = ConvertAbilityRealLevelField(1097100594)
    ABILITY_RLF_EXPANSION_AMOUNT = ConvertAbilityRealLevelField(1114401073)
    ABILITY_RLF_INTERVAL_DURATION_BGM2 = ConvertAbilityRealLevelField(1114074418)
    ABILITY_RLF_RADIUS_OF_MINING_RING = ConvertAbilityRealLevelField(1114074420)
    ABILITY_RLF_ATTACK_SPEED_INCREASE_PERCENT_BLO1 = ConvertAbilityRealLevelField(1114402609)
    ABILITY_RLF_MOVEMENT_SPEED_INCREASE_PERCENT_BLO2 = ConvertAbilityRealLevelField(1114402610)
    ABILITY_RLF_SCALING_FACTOR = ConvertAbilityRealLevelField(1114402611)
    ABILITY_RLF_HIT_POINTS_PER_SECOND_CAN1 = ConvertAbilityRealLevelField(1130458673)
    ABILITY_RLF_MAX_HIT_POINTS = ConvertAbilityRealLevelField(1130458674)
    ABILITY_RLF_DAMAGE_PER_SECOND_DEV2 = ConvertAbilityRealLevelField(1147500082)
    ABILITY_RLF_MOVEMENT_UPDATE_FREQUENCY_CHD1 = ConvertAbilityRealLevelField(1130914865)
    ABILITY_RLF_ATTACK_UPDATE_FREQUENCY_CHD2 = ConvertAbilityRealLevelField(1130914866)
    ABILITY_RLF_SUMMONED_UNIT_DAMAGE_CHD3 = ConvertAbilityRealLevelField(1130914867)
    ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_PERCENT_CRI1 = ConvertAbilityRealLevelField(1131571505)
    ABILITY_RLF_ATTACK_SPEED_REDUCTION_PERCENT_CRI2 = ConvertAbilityRealLevelField(1131571506)
    ABILITY_RLF_DAMAGE_REDUCTION_CRI3 = ConvertAbilityRealLevelField(1131571507)
    ABILITY_RLF_CHANCE_TO_MISS_CRS = ConvertAbilityRealLevelField(1131574065)
    ABILITY_RLF_FULL_DAMAGE_RADIUS_DDA1 = ConvertAbilityRealLevelField(1147429169)
    ABILITY_RLF_FULL_DAMAGE_AMOUNT_DDA2 = ConvertAbilityRealLevelField(1147429170)
    ABILITY_RLF_PARTIAL_DAMAGE_RADIUS = ConvertAbilityRealLevelField(1147429171)
    ABILITY_RLF_PARTIAL_DAMAGE_AMOUNT = ConvertAbilityRealLevelField(1147429172)
    ABILITY_RLF_BUILDING_DAMAGE_FACTOR_SDS1 = ConvertAbilityRealLevelField(1399092017)
    ABILITY_RLF_MAX_DAMAGE_UCO5 = ConvertAbilityRealLevelField(1432579893)
    ABILITY_RLF_MOVE_SPEED_BONUS_UCO6 = ConvertAbilityRealLevelField(1432579894)
    ABILITY_RLF_DAMAGE_TAKEN_PERCENT_DEF1 = ConvertAbilityRealLevelField(1147495985)
    ABILITY_RLF_DAMAGE_DEALT_PERCENT_DEF2 = ConvertAbilityRealLevelField(1147495986)
    ABILITY_RLF_MOVEMENT_SPEED_FACTOR_DEF3 = ConvertAbilityRealLevelField(1147495987)
    ABILITY_RLF_ATTACK_SPEED_FACTOR_DEF4 = ConvertAbilityRealLevelField(1147495988)
    ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_DEF5 = ConvertAbilityRealLevelField(1147495989)
    ABILITY_RLF_CHANCE_TO_DEFLECT = ConvertAbilityRealLevelField(1147495990)
    ABILITY_RLF_DEFLECT_DAMAGE_TAKEN_PIERCING = ConvertAbilityRealLevelField(1147495991)
    ABILITY_RLF_DEFLECT_DAMAGE_TAKEN_SPELLS = ConvertAbilityRealLevelField(1147495992)
    ABILITY_RLF_RIP_DELAY = ConvertAbilityRealLevelField(1164014641)
    ABILITY_RLF_EAT_DELAY = ConvertAbilityRealLevelField(1164014642)
    ABILITY_RLF_HIT_POINTS_GAINED_EAT3 = ConvertAbilityRealLevelField(1164014643)
    ABILITY_RLF_AIR_UNIT_LOWER_DURATION = ConvertAbilityRealLevelField(1164866353)
    ABILITY_RLF_AIR_UNIT_HEIGHT = ConvertAbilityRealLevelField(1164866354)
    ABILITY_RLF_MELEE_ATTACK_RANGE = ConvertAbilityRealLevelField(1164866355)
    ABILITY_RLF_INTERVAL_DURATION_EGM2 = ConvertAbilityRealLevelField(1164406066)
    ABILITY_RLF_EFFECT_DELAY_FLA2 = ConvertAbilityRealLevelField(1181507890)
    ABILITY_RLF_MINING_DURATION = ConvertAbilityRealLevelField(1198285874)
    ABILITY_RLF_RADIUS_OF_GRAVESTONES = ConvertAbilityRealLevelField(1199137842)
    ABILITY_RLF_RADIUS_OF_CORPSES = ConvertAbilityRealLevelField(1199137843)
    ABILITY_RLF_HIT_POINTS_GAINED_HEA1 = ConvertAbilityRealLevelField(1214603569)
    ABILITY_RLF_DAMAGE_INCREASE_PERCENT_INF1 = ConvertAbilityRealLevelField(1231971889)
    ABILITY_RLF_AUTOCAST_RANGE = ConvertAbilityRealLevelField(1231971891)
    ABILITY_RLF_LIFE_REGEN_RATE = ConvertAbilityRealLevelField(1231971892)
    ABILITY_RLF_GRAPHIC_DELAY_LIT1 = ConvertAbilityRealLevelField(1281979441)
    ABILITY_RLF_GRAPHIC_DURATION_LIT2 = ConvertAbilityRealLevelField(1281979442)
    ABILITY_RLF_DAMAGE_PER_SECOND_LSH1 = ConvertAbilityRealLevelField(1282631729)
    ABILITY_RLF_MANA_GAINED = ConvertAbilityRealLevelField(1298297905)
    ABILITY_RLF_HIT_POINTS_GAINED_MBT2 = ConvertAbilityRealLevelField(1298297906)
    ABILITY_RLF_AUTOCAST_REQUIREMENT = ConvertAbilityRealLevelField(1298297907)
    ABILITY_RLF_WATER_HEIGHT = ConvertAbilityRealLevelField(1298297908)
    ABILITY_RLF_ACTIVATION_DELAY_MIN1 = ConvertAbilityRealLevelField(1298755121)
    ABILITY_RLF_INVISIBILITY_TRANSITION_TIME = ConvertAbilityRealLevelField(1298755122)
    ABILITY_RLF_ACTIVATION_RADIUS = ConvertAbilityRealLevelField(1315271985)
    ABILITY_RLF_AMOUNT_REGENERATED = ConvertAbilityRealLevelField(1098018097)
    ABILITY_RLF_DAMAGE_PER_SECOND_POI1 = ConvertAbilityRealLevelField(1349478705)
    ABILITY_RLF_ATTACK_SPEED_FACTOR_POI2 = ConvertAbilityRealLevelField(1349478706)
    ABILITY_RLF_MOVEMENT_SPEED_FACTOR_POI3 = ConvertAbilityRealLevelField(1349478707)
    ABILITY_RLF_EXTRA_DAMAGE_POA1 = ConvertAbilityRealLevelField(1349476657)
    ABILITY_RLF_DAMAGE_PER_SECOND_POA2 = ConvertAbilityRealLevelField(1349476658)
    ABILITY_RLF_ATTACK_SPEED_FACTOR_POA3 = ConvertAbilityRealLevelField(1349476659)
    ABILITY_RLF_MOVEMENT_SPEED_FACTOR_POA4 = ConvertAbilityRealLevelField(1349476660)
    ABILITY_RLF_DAMAGE_AMPLIFICATION = ConvertAbilityRealLevelField(1349481266)
    ABILITY_RLF_CHANCE_TO_STOMP_PERCENT = ConvertAbilityRealLevelField(1466004017)
    ABILITY_RLF_DAMAGE_DEALT_WAR2 = ConvertAbilityRealLevelField(1466004018)
    ABILITY_RLF_FULL_DAMAGE_RADIUS_WAR3 = ConvertAbilityRealLevelField(1466004019)
    ABILITY_RLF_HALF_DAMAGE_RADIUS_WAR4 = ConvertAbilityRealLevelField(1466004020)
    ABILITY_RLF_SUMMONED_UNIT_DAMAGE_PRG3 = ConvertAbilityRealLevelField(1349674803)
    ABILITY_RLF_UNIT_PAUSE_DURATION = ConvertAbilityRealLevelField(1349674804)
    ABILITY_RLF_HERO_PAUSE_DURATION = ConvertAbilityRealLevelField(1349674805)
    ABILITY_RLF_HIT_POINTS_GAINED_REJ1 = ConvertAbilityRealLevelField(1382378033)
    ABILITY_RLF_MANA_POINTS_GAINED_REJ2 = ConvertAbilityRealLevelField(1382378034)
    ABILITY_RLF_MINIMUM_LIFE_REQUIRED = ConvertAbilityRealLevelField(1383096883)
    ABILITY_RLF_MINIMUM_MANA_REQUIRED = ConvertAbilityRealLevelField(1383096884)
    ABILITY_RLF_REPAIR_COST_RATIO = ConvertAbilityRealLevelField(1382379569)
    ABILITY_RLF_REPAIR_TIME_RATIO = ConvertAbilityRealLevelField(1382379570)
    ABILITY_RLF_POWERBUILD_COST = ConvertAbilityRealLevelField(1382379571)
    ABILITY_RLF_POWERBUILD_RATE = ConvertAbilityRealLevelField(1382379572)
    ABILITY_RLF_NAVAL_RANGE_BONUS = ConvertAbilityRealLevelField(1382379573)
    ABILITY_RLF_DAMAGE_INCREASE_PERCENT_ROA1 = ConvertAbilityRealLevelField(1383031089)
    ABILITY_RLF_LIFE_REGENERATION_RATE = ConvertAbilityRealLevelField(1383031091)
    ABILITY_RLF_MANA_REGEN = ConvertAbilityRealLevelField(1383031092)
    ABILITY_RLF_DAMAGE_INCREASE = ConvertAbilityRealLevelField(1315074609)
    ABILITY_RLF_SALVAGE_COST_RATIO = ConvertAbilityRealLevelField(1398893617)
    ABILITY_RLF_IN_FLIGHT_SIGHT_RADIUS = ConvertAbilityRealLevelField(1165192753)
    ABILITY_RLF_HOVERING_SIGHT_RADIUS = ConvertAbilityRealLevelField(1165192754)
    ABILITY_RLF_HOVERING_HEIGHT = ConvertAbilityRealLevelField(1165192755)
    ABILITY_RLF_DURATION_OF_OWLS = ConvertAbilityRealLevelField(1165192757)
    ABILITY_RLF_FADE_DURATION = ConvertAbilityRealLevelField(1399352625)
    ABILITY_RLF_DAY_NIGHT_DURATION = ConvertAbilityRealLevelField(1399352626)
    ABILITY_RLF_ACTION_DURATION = ConvertAbilityRealLevelField(1399352627)
    ABILITY_RLF_MOVEMENT_SPEED_FACTOR_SLO1 = ConvertAbilityRealLevelField(1399615281)
    ABILITY_RLF_ATTACK_SPEED_FACTOR_SLO2 = ConvertAbilityRealLevelField(1399615282)
    ABILITY_RLF_DAMAGE_PER_SECOND_SPO1 = ConvertAbilityRealLevelField(1399877425)
    ABILITY_RLF_MOVEMENT_SPEED_FACTOR_SPO2 = ConvertAbilityRealLevelField(1399877426)
    ABILITY_RLF_ATTACK_SPEED_FACTOR_SPO3 = ConvertAbilityRealLevelField(1399877427)
    ABILITY_RLF_ACTIVATION_DELAY_STA1 = ConvertAbilityRealLevelField(1400135985)
    ABILITY_RLF_DETECTION_RADIUS_STA2 = ConvertAbilityRealLevelField(1400135986)
    ABILITY_RLF_DETONATION_RADIUS = ConvertAbilityRealLevelField(1400135987)
    ABILITY_RLF_STUN_DURATION_STA4 = ConvertAbilityRealLevelField(1400135988)
    ABILITY_RLF_ATTACK_SPEED_BONUS_PERCENT = ConvertAbilityRealLevelField(1432905265)
    ABILITY_RLF_DAMAGE_PER_SECOND_UHF2 = ConvertAbilityRealLevelField(1432905266)
    ABILITY_RLF_LUMBER_PER_INTERVAL = ConvertAbilityRealLevelField(1466458417)
    ABILITY_RLF_ART_ATTACHMENT_HEIGHT = ConvertAbilityRealLevelField(1466458419)
    ABILITY_RLF_TELEPORT_AREA_WIDTH = ConvertAbilityRealLevelField(1467117617)
    ABILITY_RLF_TELEPORT_AREA_HEIGHT = ConvertAbilityRealLevelField(1467117618)
    ABILITY_RLF_LIFE_STOLEN_PER_ATTACK = ConvertAbilityRealLevelField(1232494957)
    ABILITY_RLF_DAMAGE_BONUS_IDAM = ConvertAbilityRealLevelField(1231315309)
    ABILITY_RLF_CHANCE_TO_HIT_UNITS_PERCENT = ConvertAbilityRealLevelField(1232036402)
    ABILITY_RLF_CHANCE_TO_HIT_HEROS_PERCENT = ConvertAbilityRealLevelField(1232036403)
    ABILITY_RLF_CHANCE_TO_HIT_SUMMONS_PERCENT = ConvertAbilityRealLevelField(1232036404)
    ABILITY_RLF_DELAY_FOR_TARGET_EFFECT = ConvertAbilityRealLevelField(1231316332)
    ABILITY_RLF_DAMAGE_DEALT_PERCENT_OF_NORMAL = ConvertAbilityRealLevelField(1231645796)
    ABILITY_RLF_DAMAGE_RECEIVED_MULTIPLIER = ConvertAbilityRealLevelField(1231645815)
    ABILITY_RLF_MANA_REGENERATION_BONUS_AS_FRACTION_OF_NORMAL = ConvertAbilityRealLevelField(1231909488)
    ABILITY_RLF_MOVEMENT_SPEED_INCREASE_ISPI = ConvertAbilityRealLevelField(1232302185)
    ABILITY_RLF_DAMAGE_PER_SECOND_IDPS = ConvertAbilityRealLevelField(1231319155)
    ABILITY_RLF_ATTACK_DAMAGE_INCREASE_CAC1 = ConvertAbilityRealLevelField(1130455857)
    ABILITY_RLF_DAMAGE_PER_SECOND_COR1 = ConvertAbilityRealLevelField(1131377201)
    ABILITY_RLF_ATTACK_SPEED_INCREASE_ISX1 = ConvertAbilityRealLevelField(1232304177)
    ABILITY_RLF_DAMAGE_WRS1 = ConvertAbilityRealLevelField(1467118385)
    ABILITY_RLF_TERRAIN_DEFORMATION_AMPLITUDE = ConvertAbilityRealLevelField(1467118386)
    ABILITY_RLF_DAMAGE_CTC1 = ConvertAbilityRealLevelField(1131701041)
    ABILITY_RLF_EXTRA_DAMAGE_TO_TARGET = ConvertAbilityRealLevelField(1131701042)
    ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_CTC3 = ConvertAbilityRealLevelField(1131701043)
    ABILITY_RLF_ATTACK_SPEED_REDUCTION_CTC4 = ConvertAbilityRealLevelField(1131701044)
    ABILITY_RLF_DAMAGE_CTB1 = ConvertAbilityRealLevelField(1131700785)
    ABILITY_RLF_CASTING_DELAY_SECONDS = ConvertAbilityRealLevelField(1432646450)
    ABILITY_RLF_MANA_LOSS_PER_UNIT_DTN1 = ConvertAbilityRealLevelField(1148481073)
    ABILITY_RLF_DAMAGE_TO_SUMMONED_UNITS_DTN2 = ConvertAbilityRealLevelField(1148481074)
    ABILITY_RLF_TRANSITION_TIME_SECONDS = ConvertAbilityRealLevelField(1232499505)
    ABILITY_RLF_MANA_DRAINED_PER_SECOND_NMR1 = ConvertAbilityRealLevelField(1315795505)
    ABILITY_RLF_CHANCE_TO_REDUCE_DAMAGE_PERCENT = ConvertAbilityRealLevelField(1400073009)
    ABILITY_RLF_MINIMUM_DAMAGE = ConvertAbilityRealLevelField(1400073010)
    ABILITY_RLF_IGNORED_DAMAGE = ConvertAbilityRealLevelField(1400073011)
    ABILITY_RLF_FULL_DAMAGE_DEALT = ConvertAbilityRealLevelField(1214673713)
    ABILITY_RLF_FULL_DAMAGE_INTERVAL = ConvertAbilityRealLevelField(1214673714)
    ABILITY_RLF_HALF_DAMAGE_DEALT = ConvertAbilityRealLevelField(1214673715)
    ABILITY_RLF_HALF_DAMAGE_INTERVAL = ConvertAbilityRealLevelField(1214673716)
    ABILITY_RLF_BUILDING_REDUCTION_HFS5 = ConvertAbilityRealLevelField(1214673717)
    ABILITY_RLF_MAXIMUM_DAMAGE_HFS6 = ConvertAbilityRealLevelField(1214673718)
    ABILITY_RLF_MANA_PER_HIT_POINT = ConvertAbilityRealLevelField(1315795761)
    ABILITY_RLF_DAMAGE_ABSORBED_PERCENT = ConvertAbilityRealLevelField(1315795762)
    ABILITY_RLF_WAVE_DISTANCE = ConvertAbilityRealLevelField(1432972593)
    ABILITY_RLF_WAVE_TIME_SECONDS = ConvertAbilityRealLevelField(1432972594)
    ABILITY_RLF_DAMAGE_DEALT_UIM3 = ConvertAbilityRealLevelField(1432972595)
    ABILITY_RLF_AIR_TIME_SECONDS_UIM4 = ConvertAbilityRealLevelField(1432972596)
    ABILITY_RLF_UNIT_RELEASE_INTERVAL_SECONDS = ConvertAbilityRealLevelField(1433170738)
    ABILITY_RLF_DAMAGE_RETURN_FACTOR = ConvertAbilityRealLevelField(1433170740)
    ABILITY_RLF_DAMAGE_RETURN_THRESHOLD = ConvertAbilityRealLevelField(1433170741)
    ABILITY_RLF_RETURNED_DAMAGE_FACTOR = ConvertAbilityRealLevelField(1433695025)
    ABILITY_RLF_RECEIVED_DAMAGE_FACTOR = ConvertAbilityRealLevelField(1433695026)
    ABILITY_RLF_DEFENSE_BONUS_UTS3 = ConvertAbilityRealLevelField(1433695027)
    ABILITY_RLF_DAMAGE_BONUS_NBA1 = ConvertAbilityRealLevelField(1315070257)
    ABILITY_RLF_SUMMONED_UNIT_DURATION_SECONDS_NBA3 = ConvertAbilityRealLevelField(1315070259)
    ABILITY_RLF_MANA_PER_SUMMONED_HITPOINT = ConvertAbilityRealLevelField(1131243314)
    ABILITY_RLF_CHARGE_FOR_CURRENT_LIFE = ConvertAbilityRealLevelField(1131243315)
    ABILITY_RLF_HIT_POINTS_DRAINED = ConvertAbilityRealLevelField(1315205681)
    ABILITY_RLF_MANA_POINTS_DRAINED = ConvertAbilityRealLevelField(1315205682)
    ABILITY_RLF_DRAIN_INTERVAL_SECONDS = ConvertAbilityRealLevelField(1315205683)
    ABILITY_RLF_LIFE_TRANSFERRED_PER_SECOND = ConvertAbilityRealLevelField(1315205684)
    ABILITY_RLF_MANA_TRANSFERRED_PER_SECOND = ConvertAbilityRealLevelField(1315205685)
    ABILITY_RLF_BONUS_LIFE_FACTOR = ConvertAbilityRealLevelField(1315205686)
    ABILITY_RLF_BONUS_LIFE_DECAY = ConvertAbilityRealLevelField(1315205687)
    ABILITY_RLF_BONUS_MANA_FACTOR = ConvertAbilityRealLevelField(1315205688)
    ABILITY_RLF_BONUS_MANA_DECAY = ConvertAbilityRealLevelField(1315205689)
    ABILITY_RLF_CHANCE_TO_MISS_PERCENT = ConvertAbilityRealLevelField(1316186418)
    ABILITY_RLF_MOVEMENT_SPEED_MODIFIER = ConvertAbilityRealLevelField(1316186419)
    ABILITY_RLF_ATTACK_SPEED_MODIFIER = ConvertAbilityRealLevelField(1316186420)
    ABILITY_RLF_DAMAGE_PER_SECOND_TDG1 = ConvertAbilityRealLevelField(1415866161)
    ABILITY_RLF_MEDIUM_DAMAGE_RADIUS_TDG2 = ConvertAbilityRealLevelField(1415866162)
    ABILITY_RLF_MEDIUM_DAMAGE_PER_SECOND = ConvertAbilityRealLevelField(1415866163)
    ABILITY_RLF_SMALL_DAMAGE_RADIUS_TDG4 = ConvertAbilityRealLevelField(1415866164)
    ABILITY_RLF_SMALL_DAMAGE_PER_SECOND = ConvertAbilityRealLevelField(1415866165)
    ABILITY_RLF_AIR_TIME_SECONDS_TSP1 = ConvertAbilityRealLevelField(1416851505)
    ABILITY_RLF_MINIMUM_HIT_INTERVAL_SECONDS = ConvertAbilityRealLevelField(1416851506)
    ABILITY_RLF_DAMAGE_PER_SECOND_NBF5 = ConvertAbilityRealLevelField(1315071541)
    ABILITY_RLF_MAXIMUM_RANGE = ConvertAbilityRealLevelField(1164078129)
    ABILITY_RLF_MINIMUM_RANGE = ConvertAbilityRealLevelField(1164078130)
    ABILITY_RLF_DAMAGE_PER_TARGET_EFK1 = ConvertAbilityRealLevelField(1164340017)
    ABILITY_RLF_MAXIMUM_TOTAL_DAMAGE = ConvertAbilityRealLevelField(1164340018)
    ABILITY_RLF_MAXIMUM_SPEED_ADJUSTMENT = ConvertAbilityRealLevelField(1164340020)
    ABILITY_RLF_DECAYING_DAMAGE = ConvertAbilityRealLevelField(1165191217)
    ABILITY_RLF_MOVEMENT_SPEED_FACTOR_ESH2 = ConvertAbilityRealLevelField(1165191218)
    ABILITY_RLF_ATTACK_SPEED_FACTOR_ESH3 = ConvertAbilityRealLevelField(1165191219)
    ABILITY_RLF_DECAY_POWER = ConvertAbilityRealLevelField(1165191220)
    ABILITY_RLF_INITIAL_DAMAGE_ESH5 = ConvertAbilityRealLevelField(1165191221)
    ABILITY_RLF_MAXIMUM_LIFE_ABSORBED = ConvertAbilityRealLevelField(1633841969)
    ABILITY_RLF_MAXIMUM_MANA_ABSORBED = ConvertAbilityRealLevelField(1633841970)
    ABILITY_RLF_MOVEMENT_SPEED_INCREASE_BSK1 = ConvertAbilityRealLevelField(1651731249)
    ABILITY_RLF_ATTACK_SPEED_INCREASE_BSK2 = ConvertAbilityRealLevelField(1651731250)
    ABILITY_RLF_DAMAGE_TAKEN_INCREASE = ConvertAbilityRealLevelField(1651731251)
    ABILITY_RLF_LIFE_PER_UNIT = ConvertAbilityRealLevelField(1685482801)
    ABILITY_RLF_MANA_PER_UNIT = ConvertAbilityRealLevelField(1685482802)
    ABILITY_RLF_LIFE_PER_BUFF = ConvertAbilityRealLevelField(1685482803)
    ABILITY_RLF_MANA_PER_BUFF = ConvertAbilityRealLevelField(1685482804)
    ABILITY_RLF_SUMMONED_UNIT_DAMAGE_DVM5 = ConvertAbilityRealLevelField(1685482805)
    ABILITY_RLF_DAMAGE_BONUS_FAK1 = ConvertAbilityRealLevelField(1717660465)
    ABILITY_RLF_MEDIUM_DAMAGE_FACTOR_FAK2 = ConvertAbilityRealLevelField(1717660466)
    ABILITY_RLF_SMALL_DAMAGE_FACTOR_FAK3 = ConvertAbilityRealLevelField(1717660467)
    ABILITY_RLF_FULL_DAMAGE_RADIUS_FAK4 = ConvertAbilityRealLevelField(1717660468)
    ABILITY_RLF_HALF_DAMAGE_RADIUS_FAK5 = ConvertAbilityRealLevelField(1717660469)
    ABILITY_RLF_EXTRA_DAMAGE_PER_SECOND = ConvertAbilityRealLevelField(1818849585)
    ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_LIQ2 = ConvertAbilityRealLevelField(1818849586)
    ABILITY_RLF_ATTACK_SPEED_REDUCTION_LIQ3 = ConvertAbilityRealLevelField(1818849587)
    ABILITY_RLF_MAGIC_DAMAGE_FACTOR = ConvertAbilityRealLevelField(1835625777)
    ABILITY_RLF_UNIT_DAMAGE_PER_MANA_POINT = ConvertAbilityRealLevelField(1835428913)
    ABILITY_RLF_HERO_DAMAGE_PER_MANA_POINT = ConvertAbilityRealLevelField(1835428914)
    ABILITY_RLF_UNIT_MAXIMUM_DAMAGE = ConvertAbilityRealLevelField(1835428915)
    ABILITY_RLF_HERO_MAXIMUM_DAMAGE = ConvertAbilityRealLevelField(1835428916)
    ABILITY_RLF_DAMAGE_COOLDOWN = ConvertAbilityRealLevelField(1835428917)
    ABILITY_RLF_DISTRIBUTED_DAMAGE_FACTOR_SPL1 = ConvertAbilityRealLevelField(1936747569)
    ABILITY_RLF_LIFE_REGENERATED = ConvertAbilityRealLevelField(1769106481)
    ABILITY_RLF_MANA_REGENERATED = ConvertAbilityRealLevelField(1769106482)
    ABILITY_RLF_MANA_LOSS_PER_UNIT_IDC1 = ConvertAbilityRealLevelField(1768186673)
    ABILITY_RLF_SUMMONED_UNIT_DAMAGE_IDC2 = ConvertAbilityRealLevelField(1768186674)
    ABILITY_RLF_ACTIVATION_DELAY_IMO2 = ConvertAbilityRealLevelField(1768779570)
    ABILITY_RLF_LURE_INTERVAL_SECONDS = ConvertAbilityRealLevelField(1768779571)
    ABILITY_RLF_DAMAGE_BONUS_ISR1 = ConvertAbilityRealLevelField(1769173553)
    ABILITY_RLF_DAMAGE_REDUCTION_ISR2 = ConvertAbilityRealLevelField(1769173554)
    ABILITY_RLF_DAMAGE_BONUS_IPV1 = ConvertAbilityRealLevelField(1768977969)
    ABILITY_RLF_LIFE_STEAL_AMOUNT = ConvertAbilityRealLevelField(1768977970)
    ABILITY_RLF_LIFE_RESTORED_FACTOR = ConvertAbilityRealLevelField(1634956337)
    ABILITY_RLF_MANA_RESTORED_FACTOR = ConvertAbilityRealLevelField(1634956338)
    ABILITY_RLF_ATTACH_DELAY = ConvertAbilityRealLevelField(1735549233)
    ABILITY_RLF_REMOVE_DELAY = ConvertAbilityRealLevelField(1735549234)
    ABILITY_RLF_HERO_REGENERATION_DELAY = ConvertAbilityRealLevelField(1316184370)
    ABILITY_RLF_UNIT_REGENERATION_DELAY = ConvertAbilityRealLevelField(1316184371)
    ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_NSA4 = ConvertAbilityRealLevelField(1316184372)
    ABILITY_RLF_HIT_POINTS_PER_SECOND_NSA5 = ConvertAbilityRealLevelField(1316184373)
    ABILITY_RLF_DAMAGE_TO_SUMMONED_UNITS_IXS1 = ConvertAbilityRealLevelField(1232630577)
    ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_IXS2 = ConvertAbilityRealLevelField(1232630578)
    ABILITY_RLF_SUMMONED_UNIT_DURATION = ConvertAbilityRealLevelField(1315987766)
    ABILITY_RLF_SHIELD_COOLDOWN_TIME = ConvertAbilityRealLevelField(1316185393)
    ABILITY_RLF_DAMAGE_PER_SECOND_NDO1 = ConvertAbilityRealLevelField(1315204913)
    ABILITY_RLF_SUMMONED_UNIT_DURATION_SECONDS_NDO3 = ConvertAbilityRealLevelField(1315204915)
    ABILITY_RLF_MEDIUM_DAMAGE_RADIUS_FLK1 = ConvertAbilityRealLevelField(1718381361)
    ABILITY_RLF_SMALL_DAMAGE_RADIUS_FLK2 = ConvertAbilityRealLevelField(1718381362)
    ABILITY_RLF_FULL_DAMAGE_AMOUNT_FLK3 = ConvertAbilityRealLevelField(1718381363)
    ABILITY_RLF_MEDIUM_DAMAGE_AMOUNT = ConvertAbilityRealLevelField(1718381364)
    ABILITY_RLF_SMALL_DAMAGE_AMOUNT = ConvertAbilityRealLevelField(1718381365)
    ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_PERCENT_HBN1 = ConvertAbilityRealLevelField(1214410289)
    ABILITY_RLF_ATTACK_SPEED_REDUCTION_PERCENT_HBN2 = ConvertAbilityRealLevelField(1214410290)
    ABILITY_RLF_MAX_MANA_DRAINED_UNITS = ConvertAbilityRealLevelField(1717726001)
    ABILITY_RLF_DAMAGE_RATIO_UNITS_PERCENT = ConvertAbilityRealLevelField(1717726002)
    ABILITY_RLF_MAX_MANA_DRAINED_HEROS = ConvertAbilityRealLevelField(1717726003)
    ABILITY_RLF_DAMAGE_RATIO_HEROS_PERCENT = ConvertAbilityRealLevelField(1717726004)
    ABILITY_RLF_SUMMONED_DAMAGE = ConvertAbilityRealLevelField(1717726005)
    ABILITY_RLF_DISTRIBUTED_DAMAGE_FACTOR_NCA1 = ConvertAbilityRealLevelField(1852006705)
    ABILITY_RLF_INITIAL_DAMAGE_PXF1 = ConvertAbilityRealLevelField(1886938673)
    ABILITY_RLF_DAMAGE_PER_SECOND_PXF2 = ConvertAbilityRealLevelField(1886938674)
    ABILITY_RLF_DAMAGE_PER_SECOND_MLS1 = ConvertAbilityRealLevelField(1835823921)
    ABILITY_RLF_BEAST_COLLISION_RADIUS = ConvertAbilityRealLevelField(1316189234)
    ABILITY_RLF_DAMAGE_AMOUNT_NST3 = ConvertAbilityRealLevelField(1316189235)
    ABILITY_RLF_DAMAGE_RADIUS = ConvertAbilityRealLevelField(1316189236)
    ABILITY_RLF_DAMAGE_DELAY = ConvertAbilityRealLevelField(1316189237)
    ABILITY_RLF_FOLLOW_THROUGH_TIME = ConvertAbilityRealLevelField(1315138609)
    ABILITY_RLF_ART_DURATION = ConvertAbilityRealLevelField(1315138612)
    ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_PERCENT_NAB1 = ConvertAbilityRealLevelField(1315004977)
    ABILITY_RLF_ATTACK_SPEED_REDUCTION_PERCENT_NAB2 = ConvertAbilityRealLevelField(1315004978)
    ABILITY_RLF_PRIMARY_DAMAGE = ConvertAbilityRealLevelField(1315004980)
    ABILITY_RLF_SECONDARY_DAMAGE = ConvertAbilityRealLevelField(1315004981)
    ABILITY_RLF_DAMAGE_INTERVAL_NAB6 = ConvertAbilityRealLevelField(1315004982)
    ABILITY_RLF_GOLD_COST_FACTOR = ConvertAbilityRealLevelField(1316252977)
    ABILITY_RLF_LUMBER_COST_FACTOR = ConvertAbilityRealLevelField(1316252978)
    ABILITY_RLF_MOVE_SPEED_BONUS_NEG1 = ConvertAbilityRealLevelField(1315268401)
    ABILITY_RLF_DAMAGE_BONUS_NEG2 = ConvertAbilityRealLevelField(1315268402)
    ABILITY_RLF_DAMAGE_AMOUNT_NCS1 = ConvertAbilityRealLevelField(1315140401)
    ABILITY_RLF_DAMAGE_INTERVAL_NCS2 = ConvertAbilityRealLevelField(1315140402)
    ABILITY_RLF_MAX_DAMAGE_NCS4 = ConvertAbilityRealLevelField(1315140404)
    ABILITY_RLF_BUILDING_DAMAGE_FACTOR_NCS5 = ConvertAbilityRealLevelField(1315140405)
    ABILITY_RLF_EFFECT_DURATION = ConvertAbilityRealLevelField(1315140406)
    ABILITY_RLF_SPAWN_INTERVAL_NSY1 = ConvertAbilityRealLevelField(1316190513)
    ABILITY_RLF_SPAWN_UNIT_DURATION = ConvertAbilityRealLevelField(1316190515)
    ABILITY_RLF_SPAWN_UNIT_OFFSET = ConvertAbilityRealLevelField(1316190516)
    ABILITY_RLF_LEASH_RANGE_NSY5 = ConvertAbilityRealLevelField(1316190517)
    ABILITY_RLF_SPAWN_INTERVAL_NFY1 = ConvertAbilityRealLevelField(1315338545)
    ABILITY_RLF_LEASH_RANGE_NFY2 = ConvertAbilityRealLevelField(1315338546)
    ABILITY_RLF_CHANCE_TO_DEMOLISH = ConvertAbilityRealLevelField(1315202353)
    ABILITY_RLF_DAMAGE_MULTIPLIER_BUILDINGS = ConvertAbilityRealLevelField(1315202354)
    ABILITY_RLF_DAMAGE_MULTIPLIER_UNITS = ConvertAbilityRealLevelField(1315202355)
    ABILITY_RLF_DAMAGE_MULTIPLIER_HEROES = ConvertAbilityRealLevelField(1315202356)
    ABILITY_RLF_BONUS_DAMAGE_MULTIPLIER = ConvertAbilityRealLevelField(1315529521)
    ABILITY_RLF_DEATH_DAMAGE_FULL_AMOUNT = ConvertAbilityRealLevelField(1315529522)
    ABILITY_RLF_DEATH_DAMAGE_FULL_AREA = ConvertAbilityRealLevelField(1315529523)
    ABILITY_RLF_DEATH_DAMAGE_HALF_AMOUNT = ConvertAbilityRealLevelField(1315529524)
    ABILITY_RLF_DEATH_DAMAGE_HALF_AREA = ConvertAbilityRealLevelField(1315529525)
    ABILITY_RLF_DEATH_DAMAGE_DELAY = ConvertAbilityRealLevelField(1315529526)
    ABILITY_RLF_DAMAGE_AMOUNT_NSO1 = ConvertAbilityRealLevelField(1316187953)
    ABILITY_RLF_DAMAGE_PERIOD = ConvertAbilityRealLevelField(1316187954)
    ABILITY_RLF_DAMAGE_PENALTY = ConvertAbilityRealLevelField(1316187955)
    ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_PERCENT_NSO4 = ConvertAbilityRealLevelField(1316187956)
    ABILITY_RLF_ATTACK_SPEED_REDUCTION_PERCENT_NSO5 = ConvertAbilityRealLevelField(1316187957)
    ABILITY_RLF_SPLIT_DELAY = ConvertAbilityRealLevelField(1315728690)
    ABILITY_RLF_MAX_HITPOINT_FACTOR = ConvertAbilityRealLevelField(1315728692)
    ABILITY_RLF_LIFE_DURATION_SPLIT_BONUS = ConvertAbilityRealLevelField(1315728693)
    ABILITY_RLF_WAVE_INTERVAL = ConvertAbilityRealLevelField(1316381491)
    ABILITY_RLF_BUILDING_DAMAGE_FACTOR_NVC4 = ConvertAbilityRealLevelField(1316381492)
    ABILITY_RLF_FULL_DAMAGE_AMOUNT_NVC5 = ConvertAbilityRealLevelField(1316381493)
    ABILITY_RLF_HALF_DAMAGE_FACTOR = ConvertAbilityRealLevelField(1316381494)
    ABILITY_RLF_INTERVAL_BETWEEN_PULSES = ConvertAbilityRealLevelField(1415673141)
    ABILITY_BLF_PERCENT_BONUS_HAB2 = ConvertAbilityBooleanLevelField(1214341682)
    ABILITY_BLF_USE_TELEPORT_CLUSTERING_HMT3 = ConvertAbilityBooleanLevelField(1215132723)
    ABILITY_BLF_NEVER_MISS_OCR5 = ConvertAbilityBooleanLevelField(1331917365)
    ABILITY_BLF_EXCLUDE_ITEM_DAMAGE = ConvertAbilityBooleanLevelField(1331917366)
    ABILITY_BLF_BACKSTAB_DAMAGE = ConvertAbilityBooleanLevelField(1333226292)
    ABILITY_BLF_INHERIT_UPGRADES_UAN3 = ConvertAbilityBooleanLevelField(1432448563)
    ABILITY_BLF_MANA_CONVERSION_AS_PERCENT = ConvertAbilityBooleanLevelField(1432645683)
    ABILITY_BLF_LIFE_CONVERSION_AS_PERCENT = ConvertAbilityBooleanLevelField(1432645684)
    ABILITY_BLF_LEAVE_TARGET_ALIVE = ConvertAbilityBooleanLevelField(1432645685)
    ABILITY_BLF_PERCENT_BONUS_UAU3 = ConvertAbilityBooleanLevelField(1432450355)
    ABILITY_BLF_DAMAGE_IS_PERCENT_RECEIVED = ConvertAbilityBooleanLevelField(1164011570)
    ABILITY_BLF_MELEE_BONUS = ConvertAbilityBooleanLevelField(1164014130)
    ABILITY_BLF_RANGED_BONUS = ConvertAbilityBooleanLevelField(1164014131)
    ABILITY_BLF_FLAT_BONUS = ConvertAbilityBooleanLevelField(1164014132)
    ABILITY_BLF_NEVER_MISS_HBH5 = ConvertAbilityBooleanLevelField(1214408757)
    ABILITY_BLF_PERCENT_BONUS_HAD2 = ConvertAbilityBooleanLevelField(1214342194)
    ABILITY_BLF_CAN_DEACTIVATE = ConvertAbilityBooleanLevelField(1214542641)
    ABILITY_BLF_RAISED_UNITS_ARE_INVULNERABLE = ConvertAbilityBooleanLevelField(1215456562)
    ABILITY_BLF_PERCENTAGE_OAR2 = ConvertAbilityBooleanLevelField(1331786290)
    ABILITY_BLF_SUMMON_BUSY_UNITS = ConvertAbilityBooleanLevelField(1114926130)
    ABILITY_BLF_CREATES_BLIGHT = ConvertAbilityBooleanLevelField(1114401074)
    ABILITY_BLF_EXPLODES_ON_DEATH = ConvertAbilityBooleanLevelField(1399092022)
    ABILITY_BLF_ALWAYS_AUTOCAST_FAE2 = ConvertAbilityBooleanLevelField(1180788018)
    ABILITY_BLF_REGENERATE_ONLY_AT_NIGHT = ConvertAbilityBooleanLevelField(1298297909)
    ABILITY_BLF_SHOW_SELECT_UNIT_BUTTON = ConvertAbilityBooleanLevelField(1315271987)
    ABILITY_BLF_SHOW_UNIT_INDICATOR = ConvertAbilityBooleanLevelField(1315271988)
    ABILITY_BLF_CHARGE_OWNING_PLAYER = ConvertAbilityBooleanLevelField(1097757494)
    ABILITY_BLF_PERCENTAGE_ARM2 = ConvertAbilityBooleanLevelField(1098018098)
    ABILITY_BLF_TARGET_IS_INVULNERABLE = ConvertAbilityBooleanLevelField(1349481267)
    ABILITY_BLF_TARGET_IS_MAGIC_IMMUNE = ConvertAbilityBooleanLevelField(1349481268)
    ABILITY_BLF_KILL_ON_CASTER_DEATH = ConvertAbilityBooleanLevelField(1432576566)
    ABILITY_BLF_NO_TARGET_REQUIRED_REJ4 = ConvertAbilityBooleanLevelField(1382378036)
    ABILITY_BLF_ACCEPTS_GOLD = ConvertAbilityBooleanLevelField(1383362097)
    ABILITY_BLF_ACCEPTS_LUMBER = ConvertAbilityBooleanLevelField(1383362098)
    ABILITY_BLF_PREFER_HOSTILES_ROA5 = ConvertAbilityBooleanLevelField(1383031093)
    ABILITY_BLF_PREFER_FRIENDLIES_ROA6 = ConvertAbilityBooleanLevelField(1383031094)
    ABILITY_BLF_ROOTED_TURNING = ConvertAbilityBooleanLevelField(1383034675)
    ABILITY_BLF_ALWAYS_AUTOCAST_SLO3 = ConvertAbilityBooleanLevelField(1399615283)
    ABILITY_BLF_HIDE_BUTTON = ConvertAbilityBooleanLevelField(1231579492)
    ABILITY_BLF_USE_TELEPORT_CLUSTERING_ITP2 = ConvertAbilityBooleanLevelField(1232367666)
    ABILITY_BLF_IMMUNE_TO_MORPH_EFFECTS = ConvertAbilityBooleanLevelField(1165256753)
    ABILITY_BLF_DOES_NOT_BLOCK_BUILDINGS = ConvertAbilityBooleanLevelField(1165256754)
    ABILITY_BLF_AUTO_ACQUIRE_ATTACK_TARGETS = ConvertAbilityBooleanLevelField(1198026545)
    ABILITY_BLF_IMMUNE_TO_MORPH_EFFECTS_GHO2 = ConvertAbilityBooleanLevelField(1198026546)
    ABILITY_BLF_DO_NOT_BLOCK_BUILDINGS = ConvertAbilityBooleanLevelField(1198026547)
    ABILITY_BLF_INCLUDE_RANGED_DAMAGE = ConvertAbilityBooleanLevelField(1400073012)
    ABILITY_BLF_INCLUDE_MELEE_DAMAGE = ConvertAbilityBooleanLevelField(1400073013)
    ABILITY_BLF_MOVE_TO_PARTNER = ConvertAbilityBooleanLevelField(1668243762)
    ABILITY_BLF_CAN_BE_DISPELLED = ConvertAbilityBooleanLevelField(1668899633)
    ABILITY_BLF_IGNORE_FRIENDLY_BUFFS = ConvertAbilityBooleanLevelField(1685482806)
    ABILITY_BLF_DROP_ITEMS_ON_DEATH = ConvertAbilityBooleanLevelField(1768846898)
    ABILITY_BLF_CAN_USE_ITEMS = ConvertAbilityBooleanLevelField(1768846899)
    ABILITY_BLF_CAN_GET_ITEMS = ConvertAbilityBooleanLevelField(1768846900)
    ABILITY_BLF_CAN_DROP_ITEMS = ConvertAbilityBooleanLevelField(1768846901)
    ABILITY_BLF_REPAIRS_ALLOWED = ConvertAbilityBooleanLevelField(1818849588)
    ABILITY_BLF_CASTER_ONLY_SPLASH = ConvertAbilityBooleanLevelField(1835428918)
    ABILITY_BLF_NO_TARGET_REQUIRED_IRL4 = ConvertAbilityBooleanLevelField(1769106484)
    ABILITY_BLF_DISPEL_ON_ATTACK = ConvertAbilityBooleanLevelField(1769106485)
    ABILITY_BLF_AMOUNT_IS_RAW_VALUE = ConvertAbilityBooleanLevelField(1768977971)
    ABILITY_BLF_SHARED_SPELL_COOLDOWN = ConvertAbilityBooleanLevelField(1936745010)
    ABILITY_BLF_SLEEP_ONCE = ConvertAbilityBooleanLevelField(1936482609)
    ABILITY_BLF_ALLOW_ON_ANY_PLAYER_SLOT = ConvertAbilityBooleanLevelField(1936482610)
    ABILITY_BLF_DISABLE_OTHER_ABILITIES = ConvertAbilityBooleanLevelField(1315138613)
    ABILITY_BLF_ALLOW_BOUNTY = ConvertAbilityBooleanLevelField(1316252980)
    ABILITY_SLF_ICON_NORMAL = ConvertAbilityStringLevelField(1633776244)
    ABILITY_SLF_CASTER = ConvertAbilityStringLevelField(1633902964)
    ABILITY_SLF_TARGET = ConvertAbilityStringLevelField(1635017076)
    ABILITY_SLF_SPECIAL = ConvertAbilityStringLevelField(1634951540)
    ABILITY_SLF_EFFECT = ConvertAbilityStringLevelField(1634034036)
    ABILITY_SLF_AREA_EFFECT = ConvertAbilityStringLevelField(1633772897)
    ABILITY_SLF_LIGHTNING_EFFECTS = ConvertAbilityStringLevelField(1634494823)
    ABILITY_SLF_MISSILE_ART = ConvertAbilityStringLevelField(1634558324)
    ABILITY_SLF_TOOLTIP_LEARN = ConvertAbilityStringLevelField(1634887028)
    ABILITY_SLF_TOOLTIP_LEARN_EXTENDED = ConvertAbilityStringLevelField(1634891124)
    ABILITY_SLF_TOOLTIP_NORMAL = ConvertAbilityStringLevelField(1635020849)
    ABILITY_SLF_TOOLTIP_TURN_OFF = ConvertAbilityStringLevelField(1635087409)
    ABILITY_SLF_TOOLTIP_NORMAL_EXTENDED = ConvertAbilityStringLevelField(1635082801)
    ABILITY_SLF_TOOLTIP_TURN_OFF_EXTENDED = ConvertAbilityStringLevelField(1635087665)
    ABILITY_SLF_NORMAL_FORM_UNIT_EME1 = ConvertAbilityStringLevelField(1164797233)
    ABILITY_SLF_SPAWNED_UNITS = ConvertAbilityStringLevelField(1315205169)
    ABILITY_SLF_ABILITY_FOR_UNIT_CREATION = ConvertAbilityStringLevelField(1316119345)
    ABILITY_SLF_NORMAL_FORM_UNIT_MIL1 = ConvertAbilityStringLevelField(1298754609)
    ABILITY_SLF_ALTERNATE_FORM_UNIT_MIL2 = ConvertAbilityStringLevelField(1298754610)
    ABILITY_SLF_BASE_ORDER_ID_ANS5 = ConvertAbilityStringLevelField(1097757493)
    ABILITY_SLF_MORPH_UNITS_GROUND = ConvertAbilityStringLevelField(1349286194)
    ABILITY_SLF_MORPH_UNITS_AIR = ConvertAbilityStringLevelField(1349286195)
    ABILITY_SLF_MORPH_UNITS_AMPHIBIOUS = ConvertAbilityStringLevelField(1349286196)
    ABILITY_SLF_MORPH_UNITS_WATER = ConvertAbilityStringLevelField(1349286197)
    ABILITY_SLF_UNIT_TYPE_ONE = ConvertAbilityStringLevelField(1382115635)
    ABILITY_SLF_UNIT_TYPE_TWO = ConvertAbilityStringLevelField(1382115636)
    ABILITY_SLF_UNIT_TYPE_SOD2 = ConvertAbilityStringLevelField(1399809074)
    ABILITY_SLF_SUMMON_1_UNIT_TYPE = ConvertAbilityStringLevelField(1232303153)
    ABILITY_SLF_SUMMON_2_UNIT_TYPE = ConvertAbilityStringLevelField(1232303154)
    ABILITY_SLF_RACE_TO_CONVERT = ConvertAbilityStringLevelField(1315201841)
    ABILITY_SLF_PARTNER_UNIT_TYPE = ConvertAbilityStringLevelField(1668243761)
    ABILITY_SLF_PARTNER_UNIT_TYPE_ONE = ConvertAbilityStringLevelField(1684238385)
    ABILITY_SLF_PARTNER_UNIT_TYPE_TWO = ConvertAbilityStringLevelField(1684238386)
    ABILITY_SLF_REQUIRED_UNIT_TYPE = ConvertAbilityStringLevelField(1953524017)
    ABILITY_SLF_CONVERTED_UNIT_TYPE = ConvertAbilityStringLevelField(1953524018)
    ABILITY_SLF_SPELL_LIST = ConvertAbilityStringLevelField(1936745009)
    ABILITY_SLF_BASE_ORDER_ID_SPB5 = ConvertAbilityStringLevelField(1936745013)
    ABILITY_SLF_BASE_ORDER_ID_NCL6 = ConvertAbilityStringLevelField(1315138614)
    ABILITY_SLF_ABILITY_UPGRADE_1 = ConvertAbilityStringLevelField(1315268403)
    ABILITY_SLF_ABILITY_UPGRADE_2 = ConvertAbilityStringLevelField(1315268404)
    ABILITY_SLF_ABILITY_UPGRADE_3 = ConvertAbilityStringLevelField(1315268405)
    ABILITY_SLF_ABILITY_UPGRADE_4 = ConvertAbilityStringLevelField(1315268406)
    ABILITY_SLF_SPAWN_UNIT_ID_NSY2 = ConvertAbilityStringLevelField(1316190514)
    ITEM_IF_LEVEL = ConvertItemIntegerField(1768711542)
    ITEM_IF_NUMBER_OF_CHARGES = ConvertItemIntegerField(1769304933)
    ITEM_IF_COOLDOWN_GROUP = ConvertItemIntegerField(1768122724)
    ITEM_IF_MAX_HIT_POINTS = ConvertItemIntegerField(1768453232)
    ITEM_IF_HIT_POINTS = ConvertItemIntegerField(1768452195)
    ITEM_IF_PRIORITY = ConvertItemIntegerField(1768977001)
    ITEM_IF_ARMOR_TYPE = ConvertItemIntegerField(1767993965)
    ITEM_IF_TINTING_COLOR_RED = ConvertItemIntegerField(1768123506)
    ITEM_IF_TINTING_COLOR_GREEN = ConvertItemIntegerField(1768123495)
    ITEM_IF_TINTING_COLOR_BLUE = ConvertItemIntegerField(1768123490)
    ITEM_IF_TINTING_COLOR_ALPHA = ConvertItemIntegerField(1768120684)
    ITEM_RF_SCALING_VALUE = ConvertItemRealField(1769169761)
    ITEM_BF_DROPPED_WHEN_CARRIER_DIES = ConvertItemBooleanField(1768190576)
    ITEM_BF_CAN_BE_DROPPED = ConvertItemBooleanField(1768190575)
    ITEM_BF_PERISHABLE = ConvertItemBooleanField(1768973682)
    ITEM_BF_INCLUDE_AS_RANDOM_CHOICE = ConvertItemBooleanField(1768977006)
    ITEM_BF_USE_AUTOMATICALLY_WHEN_ACQUIRED = ConvertItemBooleanField(1768976247)
    ITEM_BF_CAN_BE_SOLD_TO_MERCHANTS = ConvertItemBooleanField(1768972663)
    ITEM_BF_ACTIVELY_USED = ConvertItemBooleanField(1769304929)
    ITEM_SF_MODEL_USED = ConvertItemStringField(1768319340)
    UNIT_IF_DEFENSE_TYPE = ConvertUnitIntegerField(1969517689)
    UNIT_IF_ARMOR_TYPE = ConvertUnitIntegerField(1969320557)
    UNIT_IF_LOOPING_FADE_IN_RATE = ConvertUnitIntegerField(1970038377)
    UNIT_IF_LOOPING_FADE_OUT_RATE = ConvertUnitIntegerField(1970038383)
    UNIT_IF_AGILITY = ConvertUnitIntegerField(1969317731)
    UNIT_IF_INTELLIGENCE = ConvertUnitIntegerField(1969843811)
    UNIT_IF_STRENGTH = ConvertUnitIntegerField(1970500707)
    UNIT_IF_AGILITY_PERMANENT = ConvertUnitIntegerField(1969317741)
    UNIT_IF_INTELLIGENCE_PERMANENT = ConvertUnitIntegerField(1969843821)
    UNIT_IF_STRENGTH_PERMANENT = ConvertUnitIntegerField(1970500717)
    UNIT_IF_AGILITY_WITH_BONUS = ConvertUnitIntegerField(1969317730)
    UNIT_IF_INTELLIGENCE_WITH_BONUS = ConvertUnitIntegerField(1969843810)
    UNIT_IF_STRENGTH_WITH_BONUS = ConvertUnitIntegerField(1970500706)
    UNIT_IF_GOLD_BOUNTY_AWARDED_NUMBER_OF_DICE = ConvertUnitIntegerField(1969382505)
    UNIT_IF_GOLD_BOUNTY_AWARDED_BASE = ConvertUnitIntegerField(1969381985)
    UNIT_IF_GOLD_BOUNTY_AWARDED_SIDES_PER_DIE = ConvertUnitIntegerField(1969386345)
    UNIT_IF_LUMBER_BOUNTY_AWARDED_NUMBER_OF_DICE = ConvertUnitIntegerField(1970037348)
    UNIT_IF_LUMBER_BOUNTY_AWARDED_BASE = ConvertUnitIntegerField(1970037345)
    UNIT_IF_LUMBER_BOUNTY_AWARDED_SIDES_PER_DIE = ConvertUnitIntegerField(1970037363)
    UNIT_IF_LEVEL = ConvertUnitIntegerField(1970038134)
    UNIT_IF_FORMATION_RANK = ConvertUnitIntegerField(1969647474)
    UNIT_IF_ORIENTATION_INTERPOLATION = ConvertUnitIntegerField(1970238057)
    UNIT_IF_ELEVATION_SAMPLE_POINTS = ConvertUnitIntegerField(1969582196)
    UNIT_IF_TINTING_COLOR_RED = ConvertUnitIntegerField(1969450098)
    UNIT_IF_TINTING_COLOR_GREEN = ConvertUnitIntegerField(1969450087)
    UNIT_IF_TINTING_COLOR_BLUE = ConvertUnitIntegerField(1969450082)
    UNIT_IF_TINTING_COLOR_ALPHA = ConvertUnitIntegerField(1969447276)
    UNIT_IF_MOVE_TYPE = ConvertUnitIntegerField(1970108020)
    UNIT_IF_TARGETED_AS = ConvertUnitIntegerField(1970561394)
    UNIT_IF_UNIT_CLASSIFICATION = ConvertUnitIntegerField(1970567536)
    UNIT_IF_HIT_POINTS_REGENERATION_TYPE = ConvertUnitIntegerField(1969779316)
    UNIT_IF_PLACEMENT_PREVENTED_BY = ConvertUnitIntegerField(1970299250)
    UNIT_IF_PRIMARY_ATTRIBUTE = ConvertUnitIntegerField(1970303585)
    UNIT_RF_STRENGTH_PER_LEVEL = ConvertUnitRealField(1970500720)
    UNIT_RF_AGILITY_PER_LEVEL = ConvertUnitRealField(1969317744)
    UNIT_RF_INTELLIGENCE_PER_LEVEL = ConvertUnitRealField(1969843824)
    UNIT_RF_HIT_POINTS_REGENERATION_RATE = ConvertUnitRealField(1969778802)
    UNIT_RF_MANA_REGENERATION = ConvertUnitRealField(1970106482)
    UNIT_RF_DEATH_TIME = ConvertUnitRealField(1969517677)
    UNIT_RF_FLY_HEIGHT = ConvertUnitRealField(1969650024)
    UNIT_RF_TURN_RATE = ConvertUnitRealField(1970108018)
    UNIT_RF_ELEVATION_SAMPLE_RADIUS = ConvertUnitRealField(1969582692)
    UNIT_RF_FOG_OF_WAR_SAMPLE_RADIUS = ConvertUnitRealField(1969648228)
    UNIT_RF_MAXIMUM_PITCH_ANGLE_DEGREES = ConvertUnitRealField(1970108528)
    UNIT_RF_MAXIMUM_ROLL_ANGLE_DEGREES = ConvertUnitRealField(1970108530)
    UNIT_RF_SCALING_VALUE = ConvertUnitRealField(1970496353)
    UNIT_RF_ANIMATION_RUN_SPEED = ConvertUnitRealField(1970435438)
    UNIT_RF_SELECTION_SCALE = ConvertUnitRealField(1970500451)
    UNIT_RF_SELECTION_CIRCLE_HEIGHT = ConvertUnitRealField(1970498682)
    UNIT_RF_SHADOW_IMAGE_HEIGHT = ConvertUnitRealField(1970497640)
    UNIT_RF_SHADOW_IMAGE_WIDTH = ConvertUnitRealField(1970497655)
    UNIT_RF_SHADOW_IMAGE_CENTER_X = ConvertUnitRealField(1970497656)
    UNIT_RF_SHADOW_IMAGE_CENTER_Y = ConvertUnitRealField(1970497657)
    UNIT_RF_ANIMATION_WALK_SPEED = ConvertUnitRealField(1970757996)
    UNIT_RF_DEFENSE = ConvertUnitRealField(1969514083)
    UNIT_RF_SIGHT_RADIUS = ConvertUnitRealField(1970497906)
    UNIT_RF_PRIORITY = ConvertUnitRealField(1970303593)
    UNIT_RF_SPEED = ConvertUnitRealField(1970108003)
    UNIT_RF_OCCLUDER_HEIGHT = ConvertUnitRealField(1970234211)
    UNIT_RF_HP = ConvertUnitRealField(1969778787)
    UNIT_RF_MANA = ConvertUnitRealField(1970106467)
    UNIT_RF_ACQUISITION_RANGE = ConvertUnitRealField(1969316721)
    UNIT_RF_CAST_BACK_SWING = ConvertUnitRealField(1969447539)
    UNIT_RF_CAST_POINT = ConvertUnitRealField(1969451124)
    UNIT_RF_MINIMUM_ATTACK_RANGE = ConvertUnitRealField(1969319278)
    UNIT_BF_RAISABLE = ConvertUnitBooleanField(1970430313)
    UNIT_BF_DECAYABLE = ConvertUnitBooleanField(1969513827)
    UNIT_BF_IS_A_BUILDING = ConvertUnitBooleanField(1969382503)
    UNIT_BF_USE_EXTENDED_LINE_OF_SIGHT = ConvertUnitBooleanField(1970040691)
    UNIT_BF_NEUTRAL_BUILDING_SHOWS_MINIMAP_ICON = ConvertUnitBooleanField(1970168429)
    UNIT_BF_HERO_HIDE_HERO_INTERFACE_ICON = ConvertUnitBooleanField(1969776738)
    UNIT_BF_HERO_HIDE_HERO_MINIMAP_DISPLAY = ConvertUnitBooleanField(1969776749)
    UNIT_BF_HERO_HIDE_HERO_DEATH_MESSAGE = ConvertUnitBooleanField(1969776740)
    UNIT_BF_HIDE_MINIMAP_DISPLAY = ConvertUnitBooleanField(1969778541)
    UNIT_BF_SCALE_PROJECTILES = ConvertUnitBooleanField(1970496354)
    UNIT_BF_SELECTION_CIRCLE_ON_WATER = ConvertUnitBooleanField(1970496887)
    UNIT_BF_HAS_WATER_SHADOW = ConvertUnitBooleanField(1970497650)
    UNIT_SF_NAME = ConvertUnitStringField(1970168173)
    UNIT_SF_PROPER_NAMES = ConvertUnitStringField(1970303599)
    UNIT_SF_GROUND_TEXTURE = ConvertUnitStringField(1970627187)
    UNIT_SF_SHADOW_IMAGE_UNIT = ConvertUnitStringField(1970497653)
    UNIT_WEAPON_IF_ATTACK_DAMAGE_NUMBER_OF_DICE = ConvertUnitWeaponIntegerField(1969303908)
    UNIT_WEAPON_IF_ATTACK_DAMAGE_BASE = ConvertUnitWeaponIntegerField(1969303906)
    UNIT_WEAPON_IF_ATTACK_DAMAGE_SIDES_PER_DIE = ConvertUnitWeaponIntegerField(1969303923)
    UNIT_WEAPON_IF_ATTACK_MAXIMUM_NUMBER_OF_TARGETS = ConvertUnitWeaponIntegerField(1970561841)
    UNIT_WEAPON_IF_ATTACK_ATTACK_TYPE = ConvertUnitWeaponIntegerField(1969303924)
    UNIT_WEAPON_IF_ATTACK_WEAPON_SOUND = ConvertUnitWeaponIntegerField(1969451825)
    UNIT_WEAPON_IF_ATTACK_AREA_OF_EFFECT_TARGETS = ConvertUnitWeaponIntegerField(1969303920)
    UNIT_WEAPON_IF_ATTACK_TARGETS_ALLOWED = ConvertUnitWeaponIntegerField(1969303911)
    UNIT_WEAPON_RF_ATTACK_BACKSWING_POINT = ConvertUnitWeaponRealField(1969386289)
    UNIT_WEAPON_RF_ATTACK_DAMAGE_POINT = ConvertUnitWeaponRealField(1969516593)
    UNIT_WEAPON_RF_ATTACK_BASE_COOLDOWN = ConvertUnitWeaponRealField(1969303907)
    UNIT_WEAPON_RF_ATTACK_DAMAGE_LOSS_FACTOR = ConvertUnitWeaponRealField(1969515569)
    UNIT_WEAPON_RF_ATTACK_DAMAGE_FACTOR_MEDIUM = ConvertUnitWeaponRealField(1969775665)
    UNIT_WEAPON_RF_ATTACK_DAMAGE_FACTOR_SMALL = ConvertUnitWeaponRealField(1970365489)
    UNIT_WEAPON_RF_ATTACK_DAMAGE_SPILL_DISTANCE = ConvertUnitWeaponRealField(1970496561)
    UNIT_WEAPON_RF_ATTACK_DAMAGE_SPILL_RADIUS = ConvertUnitWeaponRealField(1970500145)
    UNIT_WEAPON_RF_ATTACK_PROJECTILE_SPEED = ConvertUnitWeaponRealField(1969303930)
    UNIT_WEAPON_RF_ATTACK_PROJECTILE_ARC = ConvertUnitWeaponRealField(1970102577)
    UNIT_WEAPON_RF_ATTACK_AREA_OF_EFFECT_FULL_DAMAGE = ConvertUnitWeaponRealField(1969303910)
    UNIT_WEAPON_RF_ATTACK_AREA_OF_EFFECT_MEDIUM_DAMAGE = ConvertUnitWeaponRealField(1969303912)
    UNIT_WEAPON_RF_ATTACK_AREA_OF_EFFECT_SMALL_DAMAGE = ConvertUnitWeaponRealField(1969303921)
    UNIT_WEAPON_RF_ATTACK_RANGE = ConvertUnitWeaponRealField(1969303922)
    UNIT_WEAPON_BF_ATTACK_SHOW_UI = ConvertUnitWeaponBooleanField(1970763057)
    UNIT_WEAPON_BF_ATTACKS_ENABLED = ConvertUnitWeaponBooleanField(1969317230)
    UNIT_WEAPON_BF_ATTACK_PROJECTILE_HOMING_ENABLED = ConvertUnitWeaponBooleanField(1970104369)
    UNIT_WEAPON_SF_ATTACK_PROJECTILE_ART = ConvertUnitWeaponStringField(1969303917)
    MOVE_TYPE_UNKNOWN = ConvertMoveType(0)
    MOVE_TYPE_FOOT = ConvertMoveType(1)
    MOVE_TYPE_FLY = ConvertMoveType(2)
    MOVE_TYPE_HORSE = ConvertMoveType(4)
    MOVE_TYPE_HOVER = ConvertMoveType(8)
    MOVE_TYPE_FLOAT = ConvertMoveType(16)
    MOVE_TYPE_AMPHIBIOUS = ConvertMoveType(32)
    MOVE_TYPE_UNBUILDABLE = ConvertMoveType(64)
    TARGET_FLAG_NONE = ConvertTargetFlag(1)
    TARGET_FLAG_GROUND = ConvertTargetFlag(2)
    TARGET_FLAG_AIR = ConvertTargetFlag(4)
    TARGET_FLAG_STRUCTURE = ConvertTargetFlag(8)
    TARGET_FLAG_WARD = ConvertTargetFlag(16)
    TARGET_FLAG_ITEM = ConvertTargetFlag(32)
    TARGET_FLAG_TREE = ConvertTargetFlag(64)
    TARGET_FLAG_WALL = ConvertTargetFlag(128)
    TARGET_FLAG_DEBRIS = ConvertTargetFlag(256)
    TARGET_FLAG_DECORATION = ConvertTargetFlag(512)
    TARGET_FLAG_BRIDGE = ConvertTargetFlag(1024)
    DEFENSE_TYPE_LIGHT = ConvertDefenseType(0)
    DEFENSE_TYPE_MEDIUM = ConvertDefenseType(1)
    DEFENSE_TYPE_LARGE = ConvertDefenseType(2)
    DEFENSE_TYPE_FORT = ConvertDefenseType(3)
    DEFENSE_TYPE_NORMAL = ConvertDefenseType(4)
    DEFENSE_TYPE_HERO = ConvertDefenseType(5)
    DEFENSE_TYPE_DIVINE = ConvertDefenseType(6)
    DEFENSE_TYPE_NONE = ConvertDefenseType(7)
    HERO_ATTRIBUTE_STR = ConvertHeroAttribute(1)
    HERO_ATTRIBUTE_INT = ConvertHeroAttribute(2)
    HERO_ATTRIBUTE_AGI = ConvertHeroAttribute(3)
    ARMOR_TYPE_WHOKNOWS = ConvertArmorType(0)
    ARMOR_TYPE_FLESH = ConvertArmorType(1)
    ARMOR_TYPE_METAL = ConvertArmorType(2)
    ARMOR_TYPE_WOOD = ConvertArmorType(3)
    ARMOR_TYPE_ETHREAL = ConvertArmorType(4)
    ARMOR_TYPE_STONE = ConvertArmorType(5)
    REGENERATION_TYPE_NONE = ConvertRegenType(0)
    REGENERATION_TYPE_ALWAYS = ConvertRegenType(1)
    REGENERATION_TYPE_BLIGHT = ConvertRegenType(2)
    REGENERATION_TYPE_DAY = ConvertRegenType(3)
    REGENERATION_TYPE_NIGHT = ConvertRegenType(4)
    UNIT_CATEGORY_GIANT = ConvertUnitCategory(1)
    UNIT_CATEGORY_UNDEAD = ConvertUnitCategory(2)
    UNIT_CATEGORY_SUMMONED = ConvertUnitCategory(4)
    UNIT_CATEGORY_MECHANICAL = ConvertUnitCategory(8)
    UNIT_CATEGORY_PEON = ConvertUnitCategory(16)
    UNIT_CATEGORY_SAPPER = ConvertUnitCategory(32)
    UNIT_CATEGORY_TOWNHALL = ConvertUnitCategory(64)
    UNIT_CATEGORY_ANCIENT = ConvertUnitCategory(128)
    UNIT_CATEGORY_NEUTRAL = ConvertUnitCategory(256)
    UNIT_CATEGORY_WARD = ConvertUnitCategory(512)
    UNIT_CATEGORY_STANDON = ConvertUnitCategory(1024)
    UNIT_CATEGORY_TAUREN = ConvertUnitCategory(2048)
    PATHING_FLAG_UNWALKABLE = ConvertPathingFlag(2)
    PATHING_FLAG_UNFLYABLE = ConvertPathingFlag(4)
    PATHING_FLAG_UNBUILDABLE = ConvertPathingFlag(8)
    PATHING_FLAG_UNPEONHARVEST = ConvertPathingFlag(16)
    PATHING_FLAG_BLIGHTED = ConvertPathingFlag(32)
    PATHING_FLAG_UNFLOATABLE = ConvertPathingFlag(64)
    PATHING_FLAG_UNAMPHIBIOUS = ConvertPathingFlag(128)
    PATHING_FLAG_UNITEMPLACABLE = ConvertPathingFlag(256)
--End Globals
function Deg2Rad(real_degrees) return "real" end
function Rad2Deg(real_radians) return "real" end
function Sin(real_radians) return "real" end
function Cos(real_radians) return "real" end
function Tan(real_radians) return "real" end
function Asin(real_y) return "real" end
function Acos(real_x) return "real" end
function Atan(real_x) return "real" end
function Atan2(real_y, real_x) return "real" end
function SquareRoot(real_x) return "real" end
function Pow(real_x, real_power) return "real" end
function I2R(integer_i) return "real" end
function R2I(real_r) return "integer" end
function I2S(integer_i) return "string" end
function R2S(real_r) return "string" end
function R2SW(real_r, integer_width, integer_precision) return "string" end
function S2I(string_s) return "integer" end
function S2R(string_s) return "real" end
function GetHandleId(handle_h) return "integer" end
function SubString(string_source, integer_start, integer_end) return "string" end
function StringLength(string_s) return "integer" end
function StringCase(string_source, boolean_upper) return "string" end
function StringHash(string_s) return "integer" end
function GetLocalizedString(string_source) return "string" end
function GetLocalizedHotkey(string_source) return "integer" end
function SetMapName(string_name) end
function SetMapDescription(string_description) end
function SetTeams(integer_teamcount) end
function SetPlayers(integer_playercount) end
function DefineStartLocation(integer_whichStartLoc, real_x, real_y) end
function DefineStartLocationLoc(integer_whichStartLoc, location_whichLocation) end
function SetStartLocPrioCount(integer_whichStartLoc, integer_prioSlotCount) end
function SetStartLocPrio(integer_whichStartLoc, integer_prioSlotIndex, integer_otherStartLocIndex, startlocprio_priority) end
function GetStartLocPrioSlot(integer_whichStartLoc, integer_prioSlotIndex) return "integer" end
function GetStartLocPrio(integer_whichStartLoc, integer_prioSlotIndex) return "startlocprio" end
function SetGameTypeSupported(gametype_whichGameType, boolean_value) end
function SetMapFlag(mapflag_whichMapFlag, boolean_value) end
function SetGamePlacement(placement_whichPlacementType) end
function SetGameSpeed(gamespeed_whichspeed) end
function SetGameDifficulty(gamedifficulty_whichdifficulty) end
function SetResourceDensity(mapdensity_whichdensity) end
function SetCreatureDensity(mapdensity_whichdensity) end
function GetTeams() return "integer" end
function GetPlayers() return "integer" end
function IsGameTypeSupported(gametype_whichGameType) return "boolean" end
function GetGameTypeSelected() return "gametype" end
function IsMapFlagSet(mapflag_whichMapFlag) return "boolean" end
function GetGamePlacement() return "placement" end
function GetGameSpeed() return "gamespeed" end
function GetGameDifficulty() return "gamedifficulty" end
function GetResourceDensity() return "mapdensity" end
function GetCreatureDensity() return "mapdensity" end
function GetStartLocationX(integer_whichStartLocation) return "real" end
function GetStartLocationY(integer_whichStartLocation) return "real" end
function GetStartLocationLoc(integer_whichStartLocation) return "location" end
function SetPlayerTeam(player_whichPlayer, integer_whichTeam) end
function SetPlayerStartLocation(player_whichPlayer, integer_startLocIndex) end
function ForcePlayerStartLocation(player_whichPlayer, integer_startLocIndex) end
function SetPlayerColor(player_whichPlayer, playercolor_color) end
function SetPlayerAlliance(player_sourcePlayer, player_otherPlayer, alliancetype_whichAllianceSetting, boolean_value) end
function SetPlayerTaxRate(player_sourcePlayer, player_otherPlayer, playerstate_whichResource, integer_rate) end
function SetPlayerRacePreference(player_whichPlayer, racepreference_whichRacePreference) end
function SetPlayerRaceSelectable(player_whichPlayer, boolean_value) end
function SetPlayerController(player_whichPlayer, mapcontrol_controlType) end
function SetPlayerName(player_whichPlayer, string_name) end
function SetPlayerOnScoreScreen(player_whichPlayer, boolean_flag) end
function GetPlayerTeam(player_whichPlayer) return "integer" end
function GetPlayerStartLocation(player_whichPlayer) return "integer" end
function GetPlayerColor(player_whichPlayer) return "playercolor" end
function GetPlayerSelectable(player_whichPlayer) return "boolean" end
function GetPlayerController(player_whichPlayer) return "mapcontrol" end
function GetPlayerSlotState(player_whichPlayer) return "playerslotstate" end
function GetPlayerTaxRate(player_sourcePlayer, player_otherPlayer, playerstate_whichResource) return "integer" end
function IsPlayerRacePrefSet(player_whichPlayer, racepreference_pref) return "boolean" end
function GetPlayerName(player_whichPlayer) return "string" end
function CreateTimer() return "timer" end
function DestroyTimer(timer_whichTimer) end
function TimerStart(timer_whichTimer, real_timeout, boolean_periodic, code_handlerFunc) end
function TimerGetElapsed(timer_whichTimer) return "real" end
function TimerGetRemaining(timer_whichTimer) return "real" end
function TimerGetTimeout(timer_whichTimer) return "real" end
function PauseTimer(timer_whichTimer) end
function ResumeTimer(timer_whichTimer) end
function GetExpiredTimer() return "timer" end
function CreateGroup() return "group" end
function DestroyGroup(group_whichGroup) end
function GroupAddUnit(group_whichGroup, unit_whichUnit) return "boolean" end
function GroupRemoveUnit(group_whichGroup, unit_whichUnit) return "boolean" end
function BlzGroupAddGroupFast(group_whichGroup, group_addGroup) return "integer" end
function BlzGroupRemoveGroupFast(group_whichGroup, group_removeGroup) return "integer" end
function GroupClear(group_whichGroup) end
function BlzGroupGetSize(group_whichGroup) return "integer" end
function BlzGroupUnitAt(group_whichGroup, integer_index) return "unit" end
function GroupEnumUnitsOfType(group_whichGroup, string_unitname, boolexpr_filter) end
function GroupEnumUnitsOfPlayer(group_whichGroup, player_whichPlayer, boolexpr_filter) end
function GroupEnumUnitsOfTypeCounted(group_whichGroup, string_unitname, boolexpr_filter, integer_countLimit) end
function GroupEnumUnitsInRect(group_whichGroup, rect_r, boolexpr_filter) end
function GroupEnumUnitsInRectCounted(group_whichGroup, rect_r, boolexpr_filter, integer_countLimit) end
function GroupEnumUnitsInRange(group_whichGroup, real_x, real_y, real_radius, boolexpr_filter) end
function GroupEnumUnitsInRangeOfLoc(group_whichGroup, location_whichLocation, real_radius, boolexpr_filter) end
function GroupEnumUnitsInRangeCounted(group_whichGroup, real_x, real_y, real_radius, boolexpr_filter, integer_countLimit) end
function GroupEnumUnitsInRangeOfLocCounted(group_whichGroup, location_whichLocation, real_radius, boolexpr_filter, integer_countLimit) end
function GroupEnumUnitsSelected(group_whichGroup, player_whichPlayer, boolexpr_filter) end
function GroupImmediateOrder(group_whichGroup, string_order) return "boolean" end
function GroupImmediateOrderById(group_whichGroup, integer_order) return "boolean" end
function GroupPointOrder(group_whichGroup, string_order, real_x, real_y) return "boolean" end
function GroupPointOrderLoc(group_whichGroup, string_order, location_whichLocation) return "boolean" end
function GroupPointOrderById(group_whichGroup, integer_order, real_x, real_y) return "boolean" end
function GroupPointOrderByIdLoc(group_whichGroup, integer_order, location_whichLocation) return "boolean" end
function GroupTargetOrder(group_whichGroup, string_order, widget_targetWidget) return "boolean" end
function GroupTargetOrderById(group_whichGroup, integer_order, widget_targetWidget) return "boolean" end
function ForGroup(group_whichGroup, code_callback) end
function FirstOfGroup(group_whichGroup) return "unit" end
function CreateForce() return "force" end
function DestroyForce(force_whichForce) end
function ForceAddPlayer(force_whichForce, player_whichPlayer) end
function ForceRemovePlayer(force_whichForce, player_whichPlayer) end
function BlzForceHasPlayer(force_whichForce, player_whichPlayer) return "boolean" end
function ForceClear(force_whichForce) end
function ForceEnumPlayers(force_whichForce, boolexpr_filter) end
function ForceEnumPlayersCounted(force_whichForce, boolexpr_filter, integer_countLimit) end
function ForceEnumAllies(force_whichForce, player_whichPlayer, boolexpr_filter) end
function ForceEnumEnemies(force_whichForce, player_whichPlayer, boolexpr_filter) end
function ForForce(force_whichForce, code_callback) end
function Rect(real_minx, real_miny, real_maxx, real_maxy) return "rect" end
function RectFromLoc(location_min, location_max) return "rect" end
function RemoveRect(rect_whichRect) end
function SetRect(rect_whichRect, real_minx, real_miny, real_maxx, real_maxy) end
function SetRectFromLoc(rect_whichRect, location_min, location_max) end
function MoveRectTo(rect_whichRect, real_newCenterX, real_newCenterY) end
function MoveRectToLoc(rect_whichRect, location_newCenterLoc) end
function GetRectCenterX(rect_whichRect) return "real" end
function GetRectCenterY(rect_whichRect) return "real" end
function GetRectMinX(rect_whichRect) return "real" end
function GetRectMinY(rect_whichRect) return "real" end
function GetRectMaxX(rect_whichRect) return "real" end
function GetRectMaxY(rect_whichRect) return "real" end
function CreateRegion() return "region" end
function RemoveRegion(region_whichRegion) end
function RegionAddRect(region_whichRegion, rect_r) end
function RegionClearRect(region_whichRegion, rect_r) end
function RegionAddCell(region_whichRegion, real_x, real_y) end
function RegionAddCellAtLoc(region_whichRegion, location_whichLocation) end
function RegionClearCell(region_whichRegion, real_x, real_y) end
function RegionClearCellAtLoc(region_whichRegion, location_whichLocation) end
function Location(real_x, real_y) return "location" end
function RemoveLocation(location_whichLocation) end
function MoveLocation(location_whichLocation, real_newX, real_newY) end
function GetLocationX(location_whichLocation) return "real" end
function GetLocationY(location_whichLocation) return "real" end
function GetLocationZ(location_whichLocation) return "real" end
function IsUnitInRegion(region_whichRegion, unit_whichUnit) return "boolean" end
function IsPointInRegion(region_whichRegion, real_x, real_y) return "boolean" end
function IsLocationInRegion(region_whichRegion, location_whichLocation) return "boolean" end
function GetWorldBounds() return "rect" end
function CreateTrigger() return "trigger" end
function DestroyTrigger(trigger_whichTrigger) end
function ResetTrigger(trigger_whichTrigger) end
function EnableTrigger(trigger_whichTrigger) end
function DisableTrigger(trigger_whichTrigger) end
function IsTriggerEnabled(trigger_whichTrigger) return "boolean" end
function TriggerWaitOnSleeps(trigger_whichTrigger, boolean_flag) end
function IsTriggerWaitOnSleeps(trigger_whichTrigger) return "boolean" end
function GetFilterUnit() return "unit" end
function GetEnumUnit() return "unit" end
function GetFilterDestructable() return "destructable" end
function GetEnumDestructable() return "destructable" end
function GetFilterItem() return "item" end
function GetEnumItem() return "item" end
function GetFilterPlayer() return "player" end
function GetEnumPlayer() return "player" end
function GetTriggeringTrigger() return "trigger" end
function GetTriggerEventId() return "eventid" end
function GetTriggerEvalCount(trigger_whichTrigger) return "integer" end
function GetTriggerExecCount(trigger_whichTrigger) return "integer" end
function ExecuteFunc(string_funcName) end
function And(boolexpr_operandA, boolexpr_operandB) return "boolexpr" end
function Or(boolexpr_operandA, boolexpr_operandB) return "boolexpr" end
function Not(boolexpr_operand) return "boolexpr" end
function Condition(code_func) return "conditionfunc" end
function DestroyCondition(conditionfunc_c) end
function Filter(code_func) return "filterfunc" end
function DestroyFilter(filterfunc_f) end
function DestroyBoolExpr(boolexpr_e) end
function TriggerRegisterVariableEvent(trigger_whichTrigger, string_varName, limitop_opcode, real_limitval) return "event" end
function TriggerRegisterTimerEvent(trigger_whichTrigger, real_timeout, boolean_periodic) return "event" end
function TriggerRegisterTimerExpireEvent(trigger_whichTrigger, timer_t) return "event" end
function TriggerRegisterGameStateEvent(trigger_whichTrigger, gamestate_whichState, limitop_opcode, real_limitval) return "event" end
function TriggerRegisterDialogEvent(trigger_whichTrigger, dialog_whichDialog) return "event" end
function TriggerRegisterDialogButtonEvent(trigger_whichTrigger, button_whichButton) return "event" end
function GetEventGameState() return "gamestate" end
function TriggerRegisterGameEvent(trigger_whichTrigger, gameevent_whichGameEvent) return "event" end
function GetWinningPlayer() return "player" end
function TriggerRegisterEnterRegion(trigger_whichTrigger, region_whichRegion, boolexpr_filter) return "event" end
function GetTriggeringRegion() return "region" end
function GetEnteringUnit() return "unit" end
function TriggerRegisterLeaveRegion(trigger_whichTrigger, region_whichRegion, boolexpr_filter) return "event" end
function GetLeavingUnit() return "unit" end
function TriggerRegisterTrackableHitEvent(trigger_whichTrigger, trackable_t) return "event" end
function TriggerRegisterTrackableTrackEvent(trigger_whichTrigger, trackable_t) return "event" end
function GetTriggeringTrackable() return "trackable" end
function GetClickedButton() return "button" end
function GetClickedDialog() return "dialog" end
function GetTournamentFinishSoonTimeRemaining() return "real" end
function GetTournamentFinishNowRule() return "integer" end
function GetTournamentFinishNowPlayer() return "player" end
function GetTournamentScore(player_whichPlayer) return "integer" end
function GetSaveBasicFilename() return "string" end
function TriggerRegisterPlayerEvent(trigger_whichTrigger, player_whichPlayer, playerevent_whichPlayerEvent) return "event" end
function GetTriggerPlayer() return "player" end
function TriggerRegisterPlayerUnitEvent(trigger_whichTrigger, player_whichPlayer, playerunitevent_whichPlayerUnitEvent, boolexpr_filter) return "event" end
function GetLevelingUnit() return "unit" end
function GetLearningUnit() return "unit" end
function GetLearnedSkill() return "integer" end
function GetLearnedSkillLevel() return "integer" end
function GetRevivableUnit() return "unit" end
function GetRevivingUnit() return "unit" end
function GetAttacker() return "unit" end
function GetRescuer() return "unit" end
function GetDyingUnit() return "unit" end
function GetKillingUnit() return "unit" end
function GetDecayingUnit() return "unit" end
function GetConstructingStructure() return "unit" end
function GetCancelledStructure() return "unit" end
function GetConstructedStructure() return "unit" end
function GetResearchingUnit() return "unit" end
function GetResearched() return "integer" end
function GetTrainedUnitType() return "integer" end
function GetTrainedUnit() return "unit" end
function GetDetectedUnit() return "unit" end
function GetSummoningUnit() return "unit" end
function GetSummonedUnit() return "unit" end
function GetTransportUnit() return "unit" end
function GetLoadedUnit() return "unit" end
function GetSellingUnit() return "unit" end
function GetSoldUnit() return "unit" end
function GetBuyingUnit() return "unit" end
function GetSoldItem() return "item" end
function GetChangingUnit() return "unit" end
function GetChangingUnitPrevOwner() return "player" end
function GetManipulatingUnit() return "unit" end
function GetManipulatedItem() return "item" end
function GetOrderedUnit() return "unit" end
function GetIssuedOrderId() return "integer" end
function GetOrderPointX() return "real" end
function GetOrderPointY() return "real" end
function GetOrderPointLoc() return "location" end
function GetOrderTarget() return "widget" end
function GetOrderTargetDestructable() return "destructable" end
function GetOrderTargetItem() return "item" end
function GetOrderTargetUnit() return "unit" end
function GetSpellAbilityUnit() return "unit" end
function GetSpellAbilityId() return "integer" end
function GetSpellAbility() return "ability" end
function GetSpellTargetLoc() return "location" end
function GetSpellTargetX() return "real" end
function GetSpellTargetY() return "real" end
function GetSpellTargetDestructable() return "destructable" end
function GetSpellTargetItem() return "item" end
function GetSpellTargetUnit() return "unit" end
function TriggerRegisterPlayerAllianceChange(trigger_whichTrigger, player_whichPlayer, alliancetype_whichAlliance) return "event" end
function TriggerRegisterPlayerStateEvent(trigger_whichTrigger, player_whichPlayer, playerstate_whichState, limitop_opcode, real_limitval) return "event" end
function GetEventPlayerState() return "playerstate" end
function TriggerRegisterPlayerChatEvent(trigger_whichTrigger, player_whichPlayer, string_chatMessageToDetect, boolean_exactMatchOnly) return "event" end
function GetEventPlayerChatString() return "string" end
function GetEventPlayerChatStringMatched() return "string" end
function TriggerRegisterDeathEvent(trigger_whichTrigger, widget_whichWidget) return "event" end
function GetTriggerUnit() return "unit" end
function TriggerRegisterUnitStateEvent(trigger_whichTrigger, unit_whichUnit, unitstate_whichState, limitop_opcode, real_limitval) return "event" end
function GetEventUnitState() return "unitstate" end
function TriggerRegisterUnitEvent(trigger_whichTrigger, unit_whichUnit, unitevent_whichEvent) return "event" end
function GetEventDamage() return "real" end
function GetEventDamageSource() return "unit" end
function GetEventDetectingPlayer() return "player" end
function TriggerRegisterFilterUnitEvent(trigger_whichTrigger, unit_whichUnit, unitevent_whichEvent, boolexpr_filter) return "event" end
function GetEventTargetUnit() return "unit" end
function TriggerRegisterUnitInRange(trigger_whichTrigger, unit_whichUnit, real_range, boolexpr_filter) return "event" end
function TriggerAddCondition(trigger_whichTrigger, boolexpr_condition) return "triggercondition" end
function TriggerRemoveCondition(trigger_whichTrigger, triggercondition_whichCondition) end
function TriggerClearConditions(trigger_whichTrigger) end
function TriggerAddAction(trigger_whichTrigger, code_actionFunc) return "triggeraction" end
function TriggerRemoveAction(trigger_whichTrigger, triggeraction_whichAction) end
function TriggerClearActions(trigger_whichTrigger) end
function TriggerSleepAction(real_timeout) end
function TriggerWaitForSound(sound_s, real_offset) end
function TriggerEvaluate(trigger_whichTrigger) return "boolean" end
function TriggerExecute(trigger_whichTrigger) end
function TriggerExecuteWait(trigger_whichTrigger) end
function TriggerSyncStart() end
function TriggerSyncReady() end
function GetWidgetLife(widget_whichWidget) return "real" end
function SetWidgetLife(widget_whichWidget, real_newLife) end
function GetWidgetX(widget_whichWidget) return "real" end
function GetWidgetY(widget_whichWidget) return "real" end
function GetTriggerWidget() return "widget" end
function CreateDestructable(integer_objectid, real_x, real_y, real_face, real_scale, integer_variation) return "destructable" end
function CreateDestructableZ(integer_objectid, real_x, real_y, real_z, real_face, real_scale, integer_variation) return "destructable" end
function CreateDeadDestructable(integer_objectid, real_x, real_y, real_face, real_scale, integer_variation) return "destructable" end
function CreateDeadDestructableZ(integer_objectid, real_x, real_y, real_z, real_face, real_scale, integer_variation) return "destructable" end
function RemoveDestructable(destructable_d) end
function KillDestructable(destructable_d) end
function SetDestructableInvulnerable(destructable_d, boolean_flag) end
function IsDestructableInvulnerable(destructable_d) return "boolean" end
function EnumDestructablesInRect(rect_r, boolexpr_filter, code_actionFunc) end
function GetDestructableTypeId(destructable_d) return "integer" end
function GetDestructableX(destructable_d) return "real" end
function GetDestructableY(destructable_d) return "real" end
function SetDestructableLife(destructable_d, real_life) end
function GetDestructableLife(destructable_d) return "real" end
function SetDestructableMaxLife(destructable_d, real_max) end
function GetDestructableMaxLife(destructable_d) return "real" end
function DestructableRestoreLife(destructable_d, real_life, boolean_birth) end
function QueueDestructableAnimation(destructable_d, string_whichAnimation) end
function SetDestructableAnimation(destructable_d, string_whichAnimation) end
function SetDestructableAnimationSpeed(destructable_d, real_speedFactor) end
function ShowDestructable(destructable_d, boolean_flag) end
function GetDestructableOccluderHeight(destructable_d) return "real" end
function SetDestructableOccluderHeight(destructable_d, real_height) end
function GetDestructableName(destructable_d) return "string" end
function GetTriggerDestructable() return "destructable" end
function CreateItem(integer_itemid, real_x, real_y) return "item" end
function RemoveItem(item_whichItem) end
function GetItemPlayer(item_whichItem) return "player" end
function GetItemTypeId(item_i) return "integer" end
function GetItemX(item_i) return "real" end
function GetItemY(item_i) return "real" end
function SetItemPosition(item_i, real_x, real_y) end
function SetItemDropOnDeath(item_whichItem, boolean_flag) end
function SetItemDroppable(item_i, boolean_flag) end
function SetItemPawnable(item_i, boolean_flag) end
function SetItemPlayer(item_whichItem, player_whichPlayer, boolean_changeColor) end
function SetItemInvulnerable(item_whichItem, boolean_flag) end
function IsItemInvulnerable(item_whichItem) return "boolean" end
function SetItemVisible(item_whichItem, boolean_show) end
function IsItemVisible(item_whichItem) return "boolean" end
function IsItemOwned(item_whichItem) return "boolean" end
function IsItemPowerup(item_whichItem) return "boolean" end
function IsItemSellable(item_whichItem) return "boolean" end
function IsItemPawnable(item_whichItem) return "boolean" end
function IsItemIdPowerup(integer_itemId) return "boolean" end
function IsItemIdSellable(integer_itemId) return "boolean" end
function IsItemIdPawnable(integer_itemId) return "boolean" end
function EnumItemsInRect(rect_r, boolexpr_filter, code_actionFunc) end
function GetItemLevel(item_whichItem) return "integer" end
function GetItemType(item_whichItem) return "itemtype" end
function SetItemDropID(item_whichItem, integer_unitId) end
function GetItemName(item_whichItem) return "string" end
function GetItemCharges(item_whichItem) return "integer" end
function SetItemCharges(item_whichItem, integer_charges) end
function GetItemUserData(item_whichItem) return "integer" end
function SetItemUserData(item_whichItem, integer_data) end
function CreateUnit(player_id, integer_unitid, real_x, real_y, real_face) return "unit" end
function CreateUnitByName(player_whichPlayer, string_unitname, real_x, real_y, real_face) return "unit" end
function CreateUnitAtLoc(player_id, integer_unitid, location_whichLocation, real_face) return "unit" end
function CreateUnitAtLocByName(player_id, string_unitname, location_whichLocation, real_face) return "unit" end
function CreateCorpse(player_whichPlayer, integer_unitid, real_x, real_y, real_face) return "unit" end
function KillUnit(unit_whichUnit) end
function RemoveUnit(unit_whichUnit) end
function ShowUnit(unit_whichUnit, boolean_show) end
function SetUnitState(unit_whichUnit, unitstate_whichUnitState, real_newVal) end
function SetUnitX(unit_whichUnit, real_newX) end
function SetUnitY(unit_whichUnit, real_newY) end
function SetUnitPosition(unit_whichUnit, real_newX, real_newY) end
function SetUnitPositionLoc(unit_whichUnit, location_whichLocation) end
function SetUnitFacing(unit_whichUnit, real_facingAngle) end
function SetUnitFacingTimed(unit_whichUnit, real_facingAngle, real_duration) end
function SetUnitMoveSpeed(unit_whichUnit, real_newSpeed) end
function SetUnitFlyHeight(unit_whichUnit, real_newHeight, real_rate) end
function SetUnitTurnSpeed(unit_whichUnit, real_newTurnSpeed) end
function SetUnitPropWindow(unit_whichUnit, real_newPropWindowAngle) end
function SetUnitAcquireRange(unit_whichUnit, real_newAcquireRange) end
function SetUnitCreepGuard(unit_whichUnit, boolean_creepGuard) end
function GetUnitAcquireRange(unit_whichUnit) return "real" end
function GetUnitTurnSpeed(unit_whichUnit) return "real" end
function GetUnitPropWindow(unit_whichUnit) return "real" end
function GetUnitFlyHeight(unit_whichUnit) return "real" end
function GetUnitDefaultAcquireRange(unit_whichUnit) return "real" end
function GetUnitDefaultTurnSpeed(unit_whichUnit) return "real" end
function GetUnitDefaultPropWindow(unit_whichUnit) return "real" end
function GetUnitDefaultFlyHeight(unit_whichUnit) return "real" end
function SetUnitOwner(unit_whichUnit, player_whichPlayer, boolean_changeColor) end
function SetUnitColor(unit_whichUnit, playercolor_whichColor) end
function SetUnitScale(unit_whichUnit, real_scaleX, real_scaleY, real_scaleZ) end
function SetUnitTimeScale(unit_whichUnit, real_timeScale) end
function SetUnitBlendTime(unit_whichUnit, real_blendTime) end
function SetUnitVertexColor(unit_whichUnit, integer_red, integer_green, integer_blue, integer_alpha) end
function QueueUnitAnimation(unit_whichUnit, string_whichAnimation) end
function SetUnitAnimation(unit_whichUnit, string_whichAnimation) end
function SetUnitAnimationByIndex(unit_whichUnit, integer_whichAnimation) end
function SetUnitAnimationWithRarity(unit_whichUnit, string_whichAnimation, raritycontrol_rarity) end
function AddUnitAnimationProperties(unit_whichUnit, string_animProperties, boolean_add) end
function SetUnitLookAt(unit_whichUnit, string_whichBone, unit_lookAtTarget, real_offsetX, real_offsetY, real_offsetZ) end
function ResetUnitLookAt(unit_whichUnit) end
function SetUnitRescuable(unit_whichUnit, player_byWhichPlayer, boolean_flag) end
function SetUnitRescueRange(unit_whichUnit, real_range) end
function SetHeroStr(unit_whichHero, integer_newStr, boolean_permanent) end
function SetHeroAgi(unit_whichHero, integer_newAgi, boolean_permanent) end
function SetHeroInt(unit_whichHero, integer_newInt, boolean_permanent) end
function GetHeroStr(unit_whichHero, boolean_includeBonuses) return "integer" end
function GetHeroAgi(unit_whichHero, boolean_includeBonuses) return "integer" end
function GetHeroInt(unit_whichHero, boolean_includeBonuses) return "integer" end
function UnitStripHeroLevel(unit_whichHero, integer_howManyLevels) return "boolean" end
function GetHeroXP(unit_whichHero) return "integer" end
function SetHeroXP(unit_whichHero, integer_newXpVal, boolean_showEyeCandy) end
function GetHeroSkillPoints(unit_whichHero) return "integer" end
function UnitModifySkillPoints(unit_whichHero, integer_skillPointDelta) return "boolean" end
function AddHeroXP(unit_whichHero, integer_xpToAdd, boolean_showEyeCandy) end
function SetHeroLevel(unit_whichHero, integer_level, boolean_showEyeCandy) end
function GetHeroLevel(unit_whichHero) return "integer" end
function GetUnitLevel(unit_whichUnit) return "integer" end
function GetHeroProperName(unit_whichHero) return "string" end
function SuspendHeroXP(unit_whichHero, boolean_flag) end
function IsSuspendedXP(unit_whichHero) return "boolean" end
function SelectHeroSkill(unit_whichHero, integer_abilcode) end
function GetUnitAbilityLevel(unit_whichUnit, integer_abilcode) return "integer" end
function DecUnitAbilityLevel(unit_whichUnit, integer_abilcode) return "integer" end
function IncUnitAbilityLevel(unit_whichUnit, integer_abilcode) return "integer" end
function SetUnitAbilityLevel(unit_whichUnit, integer_abilcode, integer_level) return "integer" end
function ReviveHero(unit_whichHero, real_x, real_y, boolean_doEyecandy) return "boolean" end
function ReviveHeroLoc(unit_whichHero, location_loc, boolean_doEyecandy) return "boolean" end
function SetUnitExploded(unit_whichUnit, boolean_exploded) end
function SetUnitInvulnerable(unit_whichUnit, boolean_flag) end
function PauseUnit(unit_whichUnit, boolean_flag) end
function IsUnitPaused(unit_whichHero) return "boolean" end
function SetUnitPathing(unit_whichUnit, boolean_flag) end
function ClearSelection() end
function SelectUnit(unit_whichUnit, boolean_flag) end
function GetUnitPointValue(unit_whichUnit) return "integer" end
function GetUnitPointValueByType(integer_unitType) return "integer" end
function UnitAddItem(unit_whichUnit, item_whichItem) return "boolean" end
function UnitAddItemById(unit_whichUnit, integer_itemId) return "item" end
function UnitAddItemToSlotById(unit_whichUnit, integer_itemId, integer_itemSlot) return "boolean" end
function UnitRemoveItem(unit_whichUnit, item_whichItem) end
function UnitRemoveItemFromSlot(unit_whichUnit, integer_itemSlot) return "item" end
function UnitHasItem(unit_whichUnit, item_whichItem) return "boolean" end
function UnitItemInSlot(unit_whichUnit, integer_itemSlot) return "item" end
function UnitInventorySize(unit_whichUnit) return "integer" end
function UnitDropItemPoint(unit_whichUnit, item_whichItem, real_x, real_y) return "boolean" end
function UnitDropItemSlot(unit_whichUnit, item_whichItem, integer_slot) return "boolean" end
function UnitDropItemTarget(unit_whichUnit, item_whichItem, widget_target) return "boolean" end
function UnitUseItem(unit_whichUnit, item_whichItem) return "boolean" end
function UnitUseItemPoint(unit_whichUnit, item_whichItem, real_x, real_y) return "boolean" end
function UnitUseItemTarget(unit_whichUnit, item_whichItem, widget_target) return "boolean" end
function GetUnitX(unit_whichUnit) return "real" end
function GetUnitY(unit_whichUnit) return "real" end
function GetUnitLoc(unit_whichUnit) return "location" end
function GetUnitFacing(unit_whichUnit) return "real" end
function GetUnitMoveSpeed(unit_whichUnit) return "real" end
function GetUnitDefaultMoveSpeed(unit_whichUnit) return "real" end
function GetUnitState(unit_whichUnit, unitstate_whichUnitState) return "real" end
function GetOwningPlayer(unit_whichUnit) return "player" end
function GetUnitTypeId(unit_whichUnit) return "integer" end
function GetUnitRace(unit_whichUnit) return "race" end
function GetUnitName(unit_whichUnit) return "string" end
function GetUnitFoodUsed(unit_whichUnit) return "integer" end
function GetUnitFoodMade(unit_whichUnit) return "integer" end
function GetFoodMade(integer_unitId) return "integer" end
function GetFoodUsed(integer_unitId) return "integer" end
function SetUnitUseFood(unit_whichUnit, boolean_useFood) end
function GetUnitRallyPoint(unit_whichUnit) return "location" end
function GetUnitRallyUnit(unit_whichUnit) return "unit" end
function GetUnitRallyDestructable(unit_whichUnit) return "destructable" end
function IsUnitInGroup(unit_whichUnit, group_whichGroup) return "boolean" end
function IsUnitInForce(unit_whichUnit, force_whichForce) return "boolean" end
function IsUnitOwnedByPlayer(unit_whichUnit, player_whichPlayer) return "boolean" end
function IsUnitAlly(unit_whichUnit, player_whichPlayer) return "boolean" end
function IsUnitEnemy(unit_whichUnit, player_whichPlayer) return "boolean" end
function IsUnitVisible(unit_whichUnit, player_whichPlayer) return "boolean" end
function IsUnitDetected(unit_whichUnit, player_whichPlayer) return "boolean" end
function IsUnitInvisible(unit_whichUnit, player_whichPlayer) return "boolean" end
function IsUnitFogged(unit_whichUnit, player_whichPlayer) return "boolean" end
function IsUnitMasked(unit_whichUnit, player_whichPlayer) return "boolean" end
function IsUnitSelected(unit_whichUnit, player_whichPlayer) return "boolean" end
function IsUnitRace(unit_whichUnit, race_whichRace) return "boolean" end
function IsUnitType(unit_whichUnit, unittype_whichUnitType) return "boolean" end
function IsUnit(unit_whichUnit, unit_whichSpecifiedUnit) return "boolean" end
function IsUnitInRange(unit_whichUnit, unit_otherUnit, real_distance) return "boolean" end
function IsUnitInRangeXY(unit_whichUnit, real_x, real_y, real_distance) return "boolean" end
function IsUnitInRangeLoc(unit_whichUnit, location_whichLocation, real_distance) return "boolean" end
function IsUnitHidden(unit_whichUnit) return "boolean" end
function IsUnitIllusion(unit_whichUnit) return "boolean" end
function IsUnitInTransport(unit_whichUnit, unit_whichTransport) return "boolean" end
function IsUnitLoaded(unit_whichUnit) return "boolean" end
function IsHeroUnitId(integer_unitId) return "boolean" end
function IsUnitIdType(integer_unitId, unittype_whichUnitType) return "boolean" end
function UnitShareVision(unit_whichUnit, player_whichPlayer, boolean_share) end
function UnitSuspendDecay(unit_whichUnit, boolean_suspend) end
function UnitAddType(unit_whichUnit, unittype_whichUnitType) return "boolean" end
function UnitRemoveType(unit_whichUnit, unittype_whichUnitType) return "boolean" end
function UnitAddAbility(unit_whichUnit, integer_abilityId) return "boolean" end
function UnitRemoveAbility(unit_whichUnit, integer_abilityId) return "boolean" end
function UnitMakeAbilityPermanent(unit_whichUnit, boolean_permanent, integer_abilityId) return "boolean" end
function UnitRemoveBuffs(unit_whichUnit, boolean_removePositive, boolean_removeNegative) end
function UnitRemoveBuffsEx(unit_whichUnit, boolean_removePositive, boolean_removeNegative, boolean_magic, boolean_physical, boolean_timedLife, boolean_aura, boolean_autoDispel) end
function UnitHasBuffsEx(unit_whichUnit, boolean_removePositive, boolean_removeNegative, boolean_magic, boolean_physical, boolean_timedLife, boolean_aura, boolean_autoDispel) return "boolean" end
function UnitCountBuffsEx(unit_whichUnit, boolean_removePositive, boolean_removeNegative, boolean_magic, boolean_physical, boolean_timedLife, boolean_aura, boolean_autoDispel) return "integer" end
function UnitAddSleep(unit_whichUnit, boolean_add) end
function UnitCanSleep(unit_whichUnit) return "boolean" end
function UnitAddSleepPerm(unit_whichUnit, boolean_add) end
function UnitCanSleepPerm(unit_whichUnit) return "boolean" end
function UnitIsSleeping(unit_whichUnit) return "boolean" end
function UnitWakeUp(unit_whichUnit) end
function UnitApplyTimedLife(unit_whichUnit, integer_buffId, real_duration) end
function UnitIgnoreAlarm(unit_whichUnit, boolean_flag) return "boolean" end
function UnitIgnoreAlarmToggled(unit_whichUnit) return "boolean" end
function UnitResetCooldown(unit_whichUnit) end
function UnitSetConstructionProgress(unit_whichUnit, integer_constructionPercentage) end
function UnitSetUpgradeProgress(unit_whichUnit, integer_upgradePercentage) end
function UnitPauseTimedLife(unit_whichUnit, boolean_flag) end
function UnitSetUsesAltIcon(unit_whichUnit, boolean_flag) end
function UnitDamagePoint(unit_whichUnit, real_delay, real_radius, real_x, real_y, real_amount, boolean_attack, boolean_ranged, attacktype_attackType, damagetype_damageType, weapontype_weaponType) return "boolean" end
function UnitDamageTarget(unit_whichUnit, widget_target, real_amount, boolean_attack, boolean_ranged, attacktype_attackType, damagetype_damageType, weapontype_weaponType) return "boolean" end
function IssueImmediateOrder(unit_whichUnit, string_order) return "boolean" end
function IssueImmediateOrderById(unit_whichUnit, integer_order) return "boolean" end
function IssuePointOrder(unit_whichUnit, string_order, real_x, real_y) return "boolean" end
function IssuePointOrderLoc(unit_whichUnit, string_order, location_whichLocation) return "boolean" end
function IssuePointOrderById(unit_whichUnit, integer_order, real_x, real_y) return "boolean" end
function IssuePointOrderByIdLoc(unit_whichUnit, integer_order, location_whichLocation) return "boolean" end
function IssueTargetOrder(unit_whichUnit, string_order, widget_targetWidget) return "boolean" end
function IssueTargetOrderById(unit_whichUnit, integer_order, widget_targetWidget) return "boolean" end
function IssueInstantPointOrder(unit_whichUnit, string_order, real_x, real_y, widget_instantTargetWidget) return "boolean" end
function IssueInstantPointOrderById(unit_whichUnit, integer_order, real_x, real_y, widget_instantTargetWidget) return "boolean" end
function IssueInstantTargetOrder(unit_whichUnit, string_order, widget_targetWidget, widget_instantTargetWidget) return "boolean" end
function IssueInstantTargetOrderById(unit_whichUnit, integer_order, widget_targetWidget, widget_instantTargetWidget) return "boolean" end
function IssueBuildOrder(unit_whichPeon, string_unitToBuild, real_x, real_y) return "boolean" end
function IssueBuildOrderById(unit_whichPeon, integer_unitId, real_x, real_y) return "boolean" end
function IssueNeutralImmediateOrder(player_forWhichPlayer, unit_neutralStructure, string_unitToBuild) return "boolean" end
function IssueNeutralImmediateOrderById(player_forWhichPlayer, unit_neutralStructure, integer_unitId) return "boolean" end
function IssueNeutralPointOrder(player_forWhichPlayer, unit_neutralStructure, string_unitToBuild, real_x, real_y) return "boolean" end
function IssueNeutralPointOrderById(player_forWhichPlayer, unit_neutralStructure, integer_unitId, real_x, real_y) return "boolean" end
function IssueNeutralTargetOrder(player_forWhichPlayer, unit_neutralStructure, string_unitToBuild, widget_target) return "boolean" end
function IssueNeutralTargetOrderById(player_forWhichPlayer, unit_neutralStructure, integer_unitId, widget_target) return "boolean" end
function GetUnitCurrentOrder(unit_whichUnit) return "integer" end
function SetResourceAmount(unit_whichUnit, integer_amount) end
function AddResourceAmount(unit_whichUnit, integer_amount) end
function GetResourceAmount(unit_whichUnit) return "integer" end
function WaygateGetDestinationX(unit_waygate) return "real" end
function WaygateGetDestinationY(unit_waygate) return "real" end
function WaygateSetDestination(unit_waygate, real_x, real_y) end
function WaygateActivate(unit_waygate, boolean_activate) end
function WaygateIsActive(unit_waygate) return "boolean" end
function AddItemToAllStock(integer_itemId, integer_currentStock, integer_stockMax) end
function AddItemToStock(unit_whichUnit, integer_itemId, integer_currentStock, integer_stockMax) end
function AddUnitToAllStock(integer_unitId, integer_currentStock, integer_stockMax) end
function AddUnitToStock(unit_whichUnit, integer_unitId, integer_currentStock, integer_stockMax) end
function RemoveItemFromAllStock(integer_itemId) end
function RemoveItemFromStock(unit_whichUnit, integer_itemId) end
function RemoveUnitFromAllStock(integer_unitId) end
function RemoveUnitFromStock(unit_whichUnit, integer_unitId) end
function SetAllItemTypeSlots(integer_slots) end
function SetAllUnitTypeSlots(integer_slots) end
function SetItemTypeSlots(unit_whichUnit, integer_slots) end
function SetUnitTypeSlots(unit_whichUnit, integer_slots) end
function GetUnitUserData(unit_whichUnit) return "integer" end
function SetUnitUserData(unit_whichUnit, integer_data) end
function Player(integer_number) return "player" end
function GetLocalPlayer() return "player" end
function IsPlayerAlly(player_whichPlayer, player_otherPlayer) return "boolean" end
function IsPlayerEnemy(player_whichPlayer, player_otherPlayer) return "boolean" end
function IsPlayerInForce(player_whichPlayer, force_whichForce) return "boolean" end
function IsPlayerObserver(player_whichPlayer) return "boolean" end
function IsVisibleToPlayer(real_x, real_y, player_whichPlayer) return "boolean" end
function IsLocationVisibleToPlayer(location_whichLocation, player_whichPlayer) return "boolean" end
function IsFoggedToPlayer(real_x, real_y, player_whichPlayer) return "boolean" end
function IsLocationFoggedToPlayer(location_whichLocation, player_whichPlayer) return "boolean" end
function IsMaskedToPlayer(real_x, real_y, player_whichPlayer) return "boolean" end
function IsLocationMaskedToPlayer(location_whichLocation, player_whichPlayer) return "boolean" end
function GetPlayerRace(player_whichPlayer) return "race" end
function GetPlayerId(player_whichPlayer) return "integer" end
function GetPlayerUnitCount(player_whichPlayer, boolean_includeIncomplete) return "integer" end
function GetPlayerTypedUnitCount(player_whichPlayer, string_unitName, boolean_includeIncomplete, boolean_includeUpgrades) return "integer" end
function GetPlayerStructureCount(player_whichPlayer, boolean_includeIncomplete) return "integer" end
function GetPlayerState(player_whichPlayer, playerstate_whichPlayerState) return "integer" end
function GetPlayerScore(player_whichPlayer, playerscore_whichPlayerScore) return "integer" end
function GetPlayerAlliance(player_sourcePlayer, player_otherPlayer, alliancetype_whichAllianceSetting) return "boolean" end
function GetPlayerHandicap(player_whichPlayer) return "real" end
function GetPlayerHandicapXP(player_whichPlayer) return "real" end
function SetPlayerHandicap(player_whichPlayer, real_handicap) end
function SetPlayerHandicapXP(player_whichPlayer, real_handicap) end
function SetPlayerTechMaxAllowed(player_whichPlayer, integer_techid, integer_maximum) end
function GetPlayerTechMaxAllowed(player_whichPlayer, integer_techid) return "integer" end
function AddPlayerTechResearched(player_whichPlayer, integer_techid, integer_levels) end
function SetPlayerTechResearched(player_whichPlayer, integer_techid, integer_setToLevel) end
function GetPlayerTechResearched(player_whichPlayer, integer_techid, boolean_specificonly) return "boolean" end
function GetPlayerTechCount(player_whichPlayer, integer_techid, boolean_specificonly) return "integer" end
function SetPlayerUnitsOwner(player_whichPlayer, integer_newOwner) end
function CripplePlayer(player_whichPlayer, force_toWhichPlayers, boolean_flag) end
function SetPlayerAbilityAvailable(player_whichPlayer, integer_abilid, boolean_avail) end
function SetPlayerState(player_whichPlayer, playerstate_whichPlayerState, integer_value) end
function RemovePlayer(player_whichPlayer, playergameresult_gameResult) end
function CachePlayerHeroData(player_whichPlayer) end
function SetFogStateRect(player_forWhichPlayer, fogstate_whichState, rect_where, boolean_useSharedVision) end
function SetFogStateRadius(player_forWhichPlayer, fogstate_whichState, real_centerx, real_centerY, real_radius, boolean_useSharedVision) end
function SetFogStateRadiusLoc(player_forWhichPlayer, fogstate_whichState, location_center, real_radius, boolean_useSharedVision) end
function FogMaskEnable(boolean_enable) end
function IsFogMaskEnabled() return "boolean" end
function FogEnable(boolean_enable) end
function IsFogEnabled() return "boolean" end
function CreateFogModifierRect(player_forWhichPlayer, fogstate_whichState, rect_where, boolean_useSharedVision, boolean_afterUnits) return "fogmodifier" end
function CreateFogModifierRadius(player_forWhichPlayer, fogstate_whichState, real_centerx, real_centerY, real_radius, boolean_useSharedVision, boolean_afterUnits) return "fogmodifier" end
function CreateFogModifierRadiusLoc(player_forWhichPlayer, fogstate_whichState, location_center, real_radius, boolean_useSharedVision, boolean_afterUnits) return "fogmodifier" end
function DestroyFogModifier(fogmodifier_whichFogModifier) end
function FogModifierStart(fogmodifier_whichFogModifier) end
function FogModifierStop(fogmodifier_whichFogModifier) end
function VersionGet() return "version" end
function VersionCompatible(version_whichVersion) return "boolean" end
function VersionSupported(version_whichVersion) return "boolean" end
function EndGame(boolean_doScoreScreen) end
function ChangeLevel(string_newLevel, boolean_doScoreScreen) end
function RestartGame(boolean_doScoreScreen) end
function ReloadGame() end
function SetCampaignMenuRace(race_r) end
function SetCampaignMenuRaceEx(integer_campaignIndex) end
function ForceCampaignSelectScreen() end
function LoadGame(string_saveFileName, boolean_doScoreScreen) end
function SaveGame(string_saveFileName) end
function RenameSaveDirectory(string_sourceDirName, string_destDirName) return "boolean" end
function RemoveSaveDirectory(string_sourceDirName) return "boolean" end
function CopySaveGame(string_sourceSaveName, string_destSaveName) return "boolean" end
function SaveGameExists(string_saveName) return "boolean" end
function SyncSelections() end
function SetFloatGameState(fgamestate_whichFloatGameState, real_value) end
function GetFloatGameState(fgamestate_whichFloatGameState) return "real" end
function SetIntegerGameState(igamestate_whichIntegerGameState, integer_value) end
function GetIntegerGameState(igamestate_whichIntegerGameState) return "integer" end
function SetTutorialCleared(boolean_cleared) end
function SetMissionAvailable(integer_campaignNumber, integer_missionNumber, boolean_available) end
function SetCampaignAvailable(integer_campaignNumber, boolean_available) end
function SetOpCinematicAvailable(integer_campaignNumber, boolean_available) end
function SetEdCinematicAvailable(integer_campaignNumber, boolean_available) end
function GetDefaultDifficulty() return "gamedifficulty" end
function SetDefaultDifficulty(gamedifficulty_g) end
function SetCustomCampaignButtonVisible(integer_whichButton, boolean_visible) end
function GetCustomCampaignButtonVisible(integer_whichButton) return "boolean" end
function DoNotSaveReplay() end
function DialogCreate() return "dialog" end
function DialogDestroy(dialog_whichDialog) end
function DialogClear(dialog_whichDialog) end
function DialogSetMessage(dialog_whichDialog, string_messageText) end
function DialogAddButton(dialog_whichDialog, string_buttonText, integer_hotkey) return "button" end
function DialogAddQuitButton(dialog_whichDialog, boolean_doScoreScreen, string_buttonText, integer_hotkey) return "button" end
function DialogDisplay(player_whichPlayer, dialog_whichDialog, boolean_flag) end
function ReloadGameCachesFromDisk() return "boolean" end
function InitGameCache(string_campaignFile) return "gamecache" end
function SaveGameCache(gamecache_whichCache) return "boolean" end
function StoreInteger(gamecache_cache, string_missionKey, string_key, integer_value) end
function StoreReal(gamecache_cache, string_missionKey, string_key, real_value) end
function StoreBoolean(gamecache_cache, string_missionKey, string_key, boolean_value) end
function StoreUnit(gamecache_cache, string_missionKey, string_key, unit_whichUnit) return "boolean" end
function StoreString(gamecache_cache, string_missionKey, string_key, string_value) return "boolean" end
function SyncStoredInteger(gamecache_cache, string_missionKey, string_key) end
function SyncStoredReal(gamecache_cache, string_missionKey, string_key) end
function SyncStoredBoolean(gamecache_cache, string_missionKey, string_key) end
function SyncStoredUnit(gamecache_cache, string_missionKey, string_key) end
function SyncStoredString(gamecache_cache, string_missionKey, string_key) end
function HaveStoredInteger(gamecache_cache, string_missionKey, string_key) return "boolean" end
function HaveStoredReal(gamecache_cache, string_missionKey, string_key) return "boolean" end
function HaveStoredBoolean(gamecache_cache, string_missionKey, string_key) return "boolean" end
function HaveStoredUnit(gamecache_cache, string_missionKey, string_key) return "boolean" end
function HaveStoredString(gamecache_cache, string_missionKey, string_key) return "boolean" end
function FlushGameCache(gamecache_cache) end
function FlushStoredMission(gamecache_cache, string_missionKey) end
function FlushStoredInteger(gamecache_cache, string_missionKey, string_key) end
function FlushStoredReal(gamecache_cache, string_missionKey, string_key) end
function FlushStoredBoolean(gamecache_cache, string_missionKey, string_key) end
function FlushStoredUnit(gamecache_cache, string_missionKey, string_key) end
function FlushStoredString(gamecache_cache, string_missionKey, string_key) end
function GetStoredInteger(gamecache_cache, string_missionKey, string_key) return "integer" end
function GetStoredReal(gamecache_cache, string_missionKey, string_key) return "real" end
function GetStoredBoolean(gamecache_cache, string_missionKey, string_key) return "boolean" end
function GetStoredString(gamecache_cache, string_missionKey, string_key) return "string" end
function RestoreUnit(gamecache_cache, string_missionKey, string_key, player_forWhichPlayer, real_x, real_y, real_facing) return "unit" end
function InitHashtable() return "hashtable" end
function SaveInteger(hashtable_table, integer_parentKey, integer_childKey, integer_value) end
function SaveReal(hashtable_table, integer_parentKey, integer_childKey, real_value) end
function SaveBoolean(hashtable_table, integer_parentKey, integer_childKey, boolean_value) end
function SaveStr(hashtable_table, integer_parentKey, integer_childKey, string_value) return "boolean" end
function SavePlayerHandle(hashtable_table, integer_parentKey, integer_childKey, player_whichPlayer) return "boolean" end
function SaveWidgetHandle(hashtable_table, integer_parentKey, integer_childKey, widget_whichWidget) return "boolean" end
function SaveDestructableHandle(hashtable_table, integer_parentKey, integer_childKey, destructable_whichDestructable) return "boolean" end
function SaveItemHandle(hashtable_table, integer_parentKey, integer_childKey, item_whichItem) return "boolean" end
function SaveUnitHandle(hashtable_table, integer_parentKey, integer_childKey, unit_whichUnit) return "boolean" end
function SaveAbilityHandle(hashtable_table, integer_parentKey, integer_childKey, ability_whichAbility) return "boolean" end
function SaveTimerHandle(hashtable_table, integer_parentKey, integer_childKey, timer_whichTimer) return "boolean" end
function SaveTriggerHandle(hashtable_table, integer_parentKey, integer_childKey, trigger_whichTrigger) return "boolean" end
function SaveTriggerConditionHandle(hashtable_table, integer_parentKey, integer_childKey, triggercondition_whichTriggercondition) return "boolean" end
function SaveTriggerActionHandle(hashtable_table, integer_parentKey, integer_childKey, triggeraction_whichTriggeraction) return "boolean" end
function SaveTriggerEventHandle(hashtable_table, integer_parentKey, integer_childKey, event_whichEvent) return "boolean" end
function SaveForceHandle(hashtable_table, integer_parentKey, integer_childKey, force_whichForce) return "boolean" end
function SaveGroupHandle(hashtable_table, integer_parentKey, integer_childKey, group_whichGroup) return "boolean" end
function SaveLocationHandle(hashtable_table, integer_parentKey, integer_childKey, location_whichLocation) return "boolean" end
function SaveRectHandle(hashtable_table, integer_parentKey, integer_childKey, rect_whichRect) return "boolean" end
function SaveBooleanExprHandle(hashtable_table, integer_parentKey, integer_childKey, boolexpr_whichBoolexpr) return "boolean" end
function SaveSoundHandle(hashtable_table, integer_parentKey, integer_childKey, sound_whichSound) return "boolean" end
function SaveEffectHandle(hashtable_table, integer_parentKey, integer_childKey, effect_whichEffect) return "boolean" end
function SaveUnitPoolHandle(hashtable_table, integer_parentKey, integer_childKey, unitpool_whichUnitpool) return "boolean" end
function SaveItemPoolHandle(hashtable_table, integer_parentKey, integer_childKey, itempool_whichItempool) return "boolean" end
function SaveQuestHandle(hashtable_table, integer_parentKey, integer_childKey, quest_whichQuest) return "boolean" end
function SaveQuestItemHandle(hashtable_table, integer_parentKey, integer_childKey, questitem_whichQuestitem) return "boolean" end
function SaveDefeatConditionHandle(hashtable_table, integer_parentKey, integer_childKey, defeatcondition_whichDefeatcondition) return "boolean" end
function SaveTimerDialogHandle(hashtable_table, integer_parentKey, integer_childKey, timerdialog_whichTimerdialog) return "boolean" end
function SaveLeaderboardHandle(hashtable_table, integer_parentKey, integer_childKey, leaderboard_whichLeaderboard) return "boolean" end
function SaveMultiboardHandle(hashtable_table, integer_parentKey, integer_childKey, multiboard_whichMultiboard) return "boolean" end
function SaveMultiboardItemHandle(hashtable_table, integer_parentKey, integer_childKey, multiboarditem_whichMultiboarditem) return "boolean" end
function SaveTrackableHandle(hashtable_table, integer_parentKey, integer_childKey, trackable_whichTrackable) return "boolean" end
function SaveDialogHandle(hashtable_table, integer_parentKey, integer_childKey, dialog_whichDialog) return "boolean" end
function SaveButtonHandle(hashtable_table, integer_parentKey, integer_childKey, button_whichButton) return "boolean" end
function SaveTextTagHandle(hashtable_table, integer_parentKey, integer_childKey, texttag_whichTexttag) return "boolean" end
function SaveLightningHandle(hashtable_table, integer_parentKey, integer_childKey, lightning_whichLightning) return "boolean" end
function SaveImageHandle(hashtable_table, integer_parentKey, integer_childKey, image_whichImage) return "boolean" end
function SaveUbersplatHandle(hashtable_table, integer_parentKey, integer_childKey, ubersplat_whichUbersplat) return "boolean" end
function SaveRegionHandle(hashtable_table, integer_parentKey, integer_childKey, region_whichRegion) return "boolean" end
function SaveFogStateHandle(hashtable_table, integer_parentKey, integer_childKey, fogstate_whichFogState) return "boolean" end
function SaveFogModifierHandle(hashtable_table, integer_parentKey, integer_childKey, fogmodifier_whichFogModifier) return "boolean" end
function SaveAgentHandle(hashtable_table, integer_parentKey, integer_childKey, agent_whichAgent) return "boolean" end
function SaveHashtableHandle(hashtable_table, integer_parentKey, integer_childKey, hashtable_whichHashtable) return "boolean" end
function SaveFrameHandle(hashtable_table, integer_parentKey, integer_childKey, framehandle_whichFrameHandle) return "boolean" end
function LoadInteger(hashtable_table, integer_parentKey, integer_childKey) return "integer" end
function LoadReal(hashtable_table, integer_parentKey, integer_childKey) return "real" end
function LoadBoolean(hashtable_table, integer_parentKey, integer_childKey) return "boolean" end
function LoadStr(hashtable_table, integer_parentKey, integer_childKey) return "string" end
function LoadPlayerHandle(hashtable_table, integer_parentKey, integer_childKey) return "player" end
function LoadWidgetHandle(hashtable_table, integer_parentKey, integer_childKey) return "widget" end
function LoadDestructableHandle(hashtable_table, integer_parentKey, integer_childKey) return "destructable" end
function LoadItemHandle(hashtable_table, integer_parentKey, integer_childKey) return "item" end
function LoadUnitHandle(hashtable_table, integer_parentKey, integer_childKey) return "unit" end
function LoadAbilityHandle(hashtable_table, integer_parentKey, integer_childKey) return "ability" end
function LoadTimerHandle(hashtable_table, integer_parentKey, integer_childKey) return "timer" end
function LoadTriggerHandle(hashtable_table, integer_parentKey, integer_childKey) return "trigger" end
function LoadTriggerConditionHandle(hashtable_table, integer_parentKey, integer_childKey) return "triggercondition" end
function LoadTriggerActionHandle(hashtable_table, integer_parentKey, integer_childKey) return "triggeraction" end
function LoadTriggerEventHandle(hashtable_table, integer_parentKey, integer_childKey) return "event" end
function LoadForceHandle(hashtable_table, integer_parentKey, integer_childKey) return "force" end
function LoadGroupHandle(hashtable_table, integer_parentKey, integer_childKey) return "group" end
function LoadLocationHandle(hashtable_table, integer_parentKey, integer_childKey) return "location" end
function LoadRectHandle(hashtable_table, integer_parentKey, integer_childKey) return "rect" end
function LoadBooleanExprHandle(hashtable_table, integer_parentKey, integer_childKey) return "boolexpr" end
function LoadSoundHandle(hashtable_table, integer_parentKey, integer_childKey) return "sound" end
function LoadEffectHandle(hashtable_table, integer_parentKey, integer_childKey) return "effect" end
function LoadUnitPoolHandle(hashtable_table, integer_parentKey, integer_childKey) return "unitpool" end
function LoadItemPoolHandle(hashtable_table, integer_parentKey, integer_childKey) return "itempool" end
function LoadQuestHandle(hashtable_table, integer_parentKey, integer_childKey) return "quest" end
function LoadQuestItemHandle(hashtable_table, integer_parentKey, integer_childKey) return "questitem" end
function LoadDefeatConditionHandle(hashtable_table, integer_parentKey, integer_childKey) return "defeatcondition" end
function LoadTimerDialogHandle(hashtable_table, integer_parentKey, integer_childKey) return "timerdialog" end
function LoadLeaderboardHandle(hashtable_table, integer_parentKey, integer_childKey) return "leaderboard" end
function LoadMultiboardHandle(hashtable_table, integer_parentKey, integer_childKey) return "multiboard" end
function LoadMultiboardItemHandle(hashtable_table, integer_parentKey, integer_childKey) return "multiboarditem" end
function LoadTrackableHandle(hashtable_table, integer_parentKey, integer_childKey) return "trackable" end
function LoadDialogHandle(hashtable_table, integer_parentKey, integer_childKey) return "dialog" end
function LoadButtonHandle(hashtable_table, integer_parentKey, integer_childKey) return "button" end
function LoadTextTagHandle(hashtable_table, integer_parentKey, integer_childKey) return "texttag" end
function LoadLightningHandle(hashtable_table, integer_parentKey, integer_childKey) return "lightning" end
function LoadImageHandle(hashtable_table, integer_parentKey, integer_childKey) return "image" end
function LoadUbersplatHandle(hashtable_table, integer_parentKey, integer_childKey) return "ubersplat" end
function LoadRegionHandle(hashtable_table, integer_parentKey, integer_childKey) return "region" end
function LoadFogStateHandle(hashtable_table, integer_parentKey, integer_childKey) return "fogstate" end
function LoadFogModifierHandle(hashtable_table, integer_parentKey, integer_childKey) return "fogmodifier" end
function LoadHashtableHandle(hashtable_table, integer_parentKey, integer_childKey) return "hashtable" end
function LoadFrameHandle(hashtable_table, integer_parentKey, integer_childKey) return "framehandle" end
function HaveSavedInteger(hashtable_table, integer_parentKey, integer_childKey) return "boolean" end
function HaveSavedReal(hashtable_table, integer_parentKey, integer_childKey) return "boolean" end
function HaveSavedBoolean(hashtable_table, integer_parentKey, integer_childKey) return "boolean" end
function HaveSavedString(hashtable_table, integer_parentKey, integer_childKey) return "boolean" end
function HaveSavedHandle(hashtable_table, integer_parentKey, integer_childKey) return "boolean" end
function RemoveSavedInteger(hashtable_table, integer_parentKey, integer_childKey) end
function RemoveSavedReal(hashtable_table, integer_parentKey, integer_childKey) end
function RemoveSavedBoolean(hashtable_table, integer_parentKey, integer_childKey) end
function RemoveSavedString(hashtable_table, integer_parentKey, integer_childKey) end
function RemoveSavedHandle(hashtable_table, integer_parentKey, integer_childKey) end
function FlushParentHashtable(hashtable_table) end
function FlushChildHashtable(hashtable_table, integer_parentKey) end
function GetRandomInt(integer_lowBound, integer_highBound) return "integer" end
function GetRandomReal(real_lowBound, real_highBound) return "real" end
function CreateUnitPool() return "unitpool" end
function DestroyUnitPool(unitpool_whichPool) end
function UnitPoolAddUnitType(unitpool_whichPool, integer_unitId, real_weight) end
function UnitPoolRemoveUnitType(unitpool_whichPool, integer_unitId) end
function PlaceRandomUnit(unitpool_whichPool, player_forWhichPlayer, real_x, real_y, real_facing) return "unit" end
function CreateItemPool() return "itempool" end
function DestroyItemPool(itempool_whichItemPool) end
function ItemPoolAddItemType(itempool_whichItemPool, integer_itemId, real_weight) end
function ItemPoolRemoveItemType(itempool_whichItemPool, integer_itemId) end
function PlaceRandomItem(itempool_whichItemPool, real_x, real_y) return "item" end
function ChooseRandomCreep(integer_level) return "integer" end
function ChooseRandomNPBuilding() return "integer" end
function ChooseRandomItem(integer_level) return "integer" end
function ChooseRandomItemEx(itemtype_whichType, integer_level) return "integer" end
function SetRandomSeed(integer_seed) end
function SetTerrainFog(real_a, real_b, real_c, real_d, real_e) end
function ResetTerrainFog() end
function SetUnitFog(real_a, real_b, real_c, real_d, real_e) end
function SetTerrainFogEx(integer_style, real_zstart, real_zend, real_density, real_red, real_green, real_blue) end
function DisplayTextToPlayer(player_toPlayer, real_x, real_y, string_message) end
function DisplayTimedTextToPlayer(player_toPlayer, real_x, real_y, real_duration, string_message) end
function DisplayTimedTextFromPlayer(player_toPlayer, real_x, real_y, real_duration, string_message) end
function ClearTextMessages() end
function SetDayNightModels(string_terrainDNCFile, string_unitDNCFile) end
function SetSkyModel(string_skyModelFile) end
function EnableUserControl(boolean_b) end
function EnableUserUI(boolean_b) end
function SuspendTimeOfDay(boolean_b) end
function SetTimeOfDayScale(real_r) end
function GetTimeOfDayScale() return "real" end
function ShowInterface(boolean_flag, real_fadeDuration) end
function PauseGame(boolean_flag) end
function UnitAddIndicator(unit_whichUnit, integer_red, integer_green, integer_blue, integer_alpha) end
function AddIndicator(widget_whichWidget, integer_red, integer_green, integer_blue, integer_alpha) end
function PingMinimap(real_x, real_y, real_duration) end
function PingMinimapEx(real_x, real_y, real_duration, integer_red, integer_green, integer_blue, boolean_extraEffects) end
function EnableOcclusion(boolean_flag) end
function SetIntroShotText(string_introText) end
function SetIntroShotModel(string_introModelPath) end
function EnableWorldFogBoundary(boolean_b) end
function PlayModelCinematic(string_modelName) end
function PlayCinematic(string_movieName) end
function ForceUIKey(string_key) end
function ForceUICancel() end
function DisplayLoadDialog() end
function SetAltMinimapIcon(string_iconPath) end
function DisableRestartMission(boolean_flag) end
function CreateTextTag() return "texttag" end
function DestroyTextTag(texttag_t) end
function SetTextTagText(texttag_t, string_s, real_height) end
function SetTextTagPos(texttag_t, real_x, real_y, real_heightOffset) end
function SetTextTagPosUnit(texttag_t, unit_whichUnit, real_heightOffset) end
function SetTextTagColor(texttag_t, integer_red, integer_green, integer_blue, integer_alpha) end
function SetTextTagVelocity(texttag_t, real_xvel, real_yvel) end
function SetTextTagVisibility(texttag_t, boolean_flag) end
function SetTextTagSuspended(texttag_t, boolean_flag) end
function SetTextTagPermanent(texttag_t, boolean_flag) end
function SetTextTagAge(texttag_t, real_age) end
function SetTextTagLifespan(texttag_t, real_lifespan) end
function SetTextTagFadepoint(texttag_t, real_fadepoint) end
function SetReservedLocalHeroButtons(integer_reserved) end
function GetAllyColorFilterState() return "integer" end
function SetAllyColorFilterState(integer_state) end
function GetCreepCampFilterState() return "boolean" end
function SetCreepCampFilterState(boolean_state) end
function EnableMinimapFilterButtons(boolean_enableAlly, boolean_enableCreep) end
function EnableDragSelect(boolean_state, boolean_ui) end
function EnablePreSelect(boolean_state, boolean_ui) end
function EnableSelect(boolean_state, boolean_ui) end
function CreateTrackable(string_trackableModelPath, real_x, real_y, real_facing) return "trackable" end
function CreateQuest() return "quest" end
function DestroyQuest(quest_whichQuest) end
function QuestSetTitle(quest_whichQuest, string_title) end
function QuestSetDescription(quest_whichQuest, string_description) end
function QuestSetIconPath(quest_whichQuest, string_iconPath) end
function QuestSetRequired(quest_whichQuest, boolean_required) end
function QuestSetCompleted(quest_whichQuest, boolean_completed) end
function QuestSetDiscovered(quest_whichQuest, boolean_discovered) end
function QuestSetFailed(quest_whichQuest, boolean_failed) end
function QuestSetEnabled(quest_whichQuest, boolean_enabled) end
function IsQuestRequired(quest_whichQuest) return "boolean" end
function IsQuestCompleted(quest_whichQuest) return "boolean" end
function IsQuestDiscovered(quest_whichQuest) return "boolean" end
function IsQuestFailed(quest_whichQuest) return "boolean" end
function IsQuestEnabled(quest_whichQuest) return "boolean" end
function QuestCreateItem(quest_whichQuest) return "questitem" end
function QuestItemSetDescription(questitem_whichQuestItem, string_description) end
function QuestItemSetCompleted(questitem_whichQuestItem, boolean_completed) end
function IsQuestItemCompleted(questitem_whichQuestItem) return "boolean" end
function CreateDefeatCondition() return "defeatcondition" end
function DestroyDefeatCondition(defeatcondition_whichCondition) end
function DefeatConditionSetDescription(defeatcondition_whichCondition, string_description) end
function FlashQuestDialogButton() end
function ForceQuestDialogUpdate() end
function CreateTimerDialog(timer_t) return "timerdialog" end
function DestroyTimerDialog(timerdialog_whichDialog) end
function TimerDialogSetTitle(timerdialog_whichDialog, string_title) end
function TimerDialogSetTitleColor(timerdialog_whichDialog, integer_red, integer_green, integer_blue, integer_alpha) end
function TimerDialogSetTimeColor(timerdialog_whichDialog, integer_red, integer_green, integer_blue, integer_alpha) end
function TimerDialogSetSpeed(timerdialog_whichDialog, real_speedMultFactor) end
function TimerDialogDisplay(timerdialog_whichDialog, boolean_display) end
function IsTimerDialogDisplayed(timerdialog_whichDialog) return "boolean" end
function TimerDialogSetRealTimeRemaining(timerdialog_whichDialog, real_timeRemaining) end
function CreateLeaderboard() return "leaderboard" end
function DestroyLeaderboard(leaderboard_lb) end
function LeaderboardDisplay(leaderboard_lb, boolean_show) end
function IsLeaderboardDisplayed(leaderboard_lb) return "boolean" end
function LeaderboardGetItemCount(leaderboard_lb) return "integer" end
function LeaderboardSetSizeByItemCount(leaderboard_lb, integer_count) end
function LeaderboardAddItem(leaderboard_lb, string_label, integer_value, player_p) end
function LeaderboardRemoveItem(leaderboard_lb, integer_index) end
function LeaderboardRemovePlayerItem(leaderboard_lb, player_p) end
function LeaderboardClear(leaderboard_lb) end
function LeaderboardSortItemsByValue(leaderboard_lb, boolean_ascending) end
function LeaderboardSortItemsByPlayer(leaderboard_lb, boolean_ascending) end
function LeaderboardSortItemsByLabel(leaderboard_lb, boolean_ascending) end
function LeaderboardHasPlayerItem(leaderboard_lb, player_p) return "boolean" end
function LeaderboardGetPlayerIndex(leaderboard_lb, player_p) return "integer" end
function LeaderboardSetLabel(leaderboard_lb, string_label) end
function LeaderboardGetLabelText(leaderboard_lb) return "string" end
function PlayerSetLeaderboard(player_toPlayer, leaderboard_lb) end
function PlayerGetLeaderboard(player_toPlayer) return "leaderboard" end
function LeaderboardSetLabelColor(leaderboard_lb, integer_red, integer_green, integer_blue, integer_alpha) end
function LeaderboardSetValueColor(leaderboard_lb, integer_red, integer_green, integer_blue, integer_alpha) end
function LeaderboardSetStyle(leaderboard_lb, boolean_showLabel, boolean_showNames, boolean_showValues, boolean_showIcons) end
function LeaderboardSetItemValue(leaderboard_lb, integer_whichItem, integer_val) end
function LeaderboardSetItemLabel(leaderboard_lb, integer_whichItem, string_val) end
function LeaderboardSetItemStyle(leaderboard_lb, integer_whichItem, boolean_showLabel, boolean_showValue, boolean_showIcon) end
function LeaderboardSetItemLabelColor(leaderboard_lb, integer_whichItem, integer_red, integer_green, integer_blue, integer_alpha) end
function LeaderboardSetItemValueColor(leaderboard_lb, integer_whichItem, integer_red, integer_green, integer_blue, integer_alpha) end
function CreateMultiboard() return "multiboard" end
function DestroyMultiboard(multiboard_lb) end
function MultiboardDisplay(multiboard_lb, boolean_show) end
function IsMultiboardDisplayed(multiboard_lb) return "boolean" end
function MultiboardMinimize(multiboard_lb, boolean_minimize) end
function IsMultiboardMinimized(multiboard_lb) return "boolean" end
function MultiboardClear(multiboard_lb) end
function MultiboardSetTitleText(multiboard_lb, string_label) end
function MultiboardGetTitleText(multiboard_lb) return "string" end
function MultiboardSetTitleTextColor(multiboard_lb, integer_red, integer_green, integer_blue, integer_alpha) end
function MultiboardGetRowCount(multiboard_lb) return "integer" end
function MultiboardGetColumnCount(multiboard_lb) return "integer" end
function MultiboardSetColumnCount(multiboard_lb, integer_count) end
function MultiboardSetRowCount(multiboard_lb, integer_count) end
function MultiboardSetItemsStyle(multiboard_lb, boolean_showValues, boolean_showIcons) end
function MultiboardSetItemsValue(multiboard_lb, string_value) end
function MultiboardSetItemsValueColor(multiboard_lb, integer_red, integer_green, integer_blue, integer_alpha) end
function MultiboardSetItemsWidth(multiboard_lb, real_width) end
function MultiboardSetItemsIcon(multiboard_lb, string_iconPath) end
function MultiboardGetItem(multiboard_lb, integer_row, integer_column) return "multiboarditem" end
function MultiboardReleaseItem(multiboarditem_mbi) end
function MultiboardSetItemStyle(multiboarditem_mbi, boolean_showValue, boolean_showIcon) end
function MultiboardSetItemValue(multiboarditem_mbi, string_val) end
function MultiboardSetItemValueColor(multiboarditem_mbi, integer_red, integer_green, integer_blue, integer_alpha) end
function MultiboardSetItemWidth(multiboarditem_mbi, real_width) end
function MultiboardSetItemIcon(multiboarditem_mbi, string_iconFileName) end
function MultiboardSuppressDisplay(boolean_flag) end
function SetCameraPosition(real_x, real_y) end
function SetCameraQuickPosition(real_x, real_y) end
function SetCameraBounds(real_x1, real_y1, real_x2, real_y2, real_x3, real_y3, real_x4, real_y4) end
function StopCamera() end
function ResetToGameCamera(real_duration) end
function PanCameraTo(real_x, real_y) end
function PanCameraToTimed(real_x, real_y, real_duration) end
function PanCameraToWithZ(real_x, real_y, real_zOffsetDest) end
function PanCameraToTimedWithZ(real_x, real_y, real_zOffsetDest, real_duration) end
function SetCinematicCamera(string_cameraModelFile) end
function SetCameraRotateMode(real_x, real_y, real_radiansToSweep, real_duration) end
function SetCameraField(camerafield_whichField, real_value, real_duration) end
function AdjustCameraField(camerafield_whichField, real_offset, real_duration) end
function SetCameraTargetController(unit_whichUnit, real_xoffset, real_yoffset, boolean_inheritOrientation) end
function SetCameraOrientController(unit_whichUnit, real_xoffset, real_yoffset) end
function CreateCameraSetup() return "camerasetup" end
function CameraSetupSetField(camerasetup_whichSetup, camerafield_whichField, real_value, real_duration) end
function CameraSetupGetField(camerasetup_whichSetup, camerafield_whichField) return "real" end
function CameraSetupSetDestPosition(camerasetup_whichSetup, real_x, real_y, real_duration) end
function CameraSetupGetDestPositionLoc(camerasetup_whichSetup) return "location" end
function CameraSetupGetDestPositionX(camerasetup_whichSetup) return "real" end
function CameraSetupGetDestPositionY(camerasetup_whichSetup) return "real" end
function CameraSetupApply(camerasetup_whichSetup, boolean_doPan, boolean_panTimed) end
function CameraSetupApplyWithZ(camerasetup_whichSetup, real_zDestOffset) end
function CameraSetupApplyForceDuration(camerasetup_whichSetup, boolean_doPan, real_forceDuration) end
function CameraSetupApplyForceDurationWithZ(camerasetup_whichSetup, real_zDestOffset, real_forceDuration) end
function CameraSetTargetNoise(real_mag, real_velocity) end
function CameraSetSourceNoise(real_mag, real_velocity) end
function CameraSetTargetNoiseEx(real_mag, real_velocity, boolean_vertOnly) end
function CameraSetSourceNoiseEx(real_mag, real_velocity, boolean_vertOnly) end
function CameraSetSmoothingFactor(real_factor) end
function SetCineFilterTexture(string_filename) end
function SetCineFilterBlendMode(blendmode_whichMode) end
function SetCineFilterTexMapFlags(texmapflags_whichFlags) end
function SetCineFilterStartUV(real_minu, real_minv, real_maxu, real_maxv) end
function SetCineFilterEndUV(real_minu, real_minv, real_maxu, real_maxv) end
function SetCineFilterStartColor(integer_red, integer_green, integer_blue, integer_alpha) end
function SetCineFilterEndColor(integer_red, integer_green, integer_blue, integer_alpha) end
function SetCineFilterDuration(real_duration) end
function DisplayCineFilter(boolean_flag) end
function IsCineFilterDisplayed() return "boolean" end
function SetCinematicScene(integer_portraitUnitId, playercolor_color, string_speakerTitle, string_text, real_sceneDuration, real_voiceoverDuration) end
function EndCinematicScene() end
function ForceCinematicSubtitles(boolean_flag) end
function GetCameraMargin(integer_whichMargin) return "real" end
function GetCameraBoundMinX() return "real" end
function GetCameraBoundMinY() return "real" end
function GetCameraBoundMaxX() return "real" end
function GetCameraBoundMaxY() return "real" end
function GetCameraField(camerafield_whichField) return "real" end
function GetCameraTargetPositionX() return "real" end
function GetCameraTargetPositionY() return "real" end
function GetCameraTargetPositionZ() return "real" end
function GetCameraTargetPositionLoc() return "location" end
function GetCameraEyePositionX() return "real" end
function GetCameraEyePositionY() return "real" end
function GetCameraEyePositionZ() return "real" end
function GetCameraEyePositionLoc() return "location" end
function NewSoundEnvironment(string_environmentName) end
function CreateSound(string_fileName, boolean_looping, boolean_is3D, boolean_stopwhenoutofrange, integer_fadeInRate, integer_fadeOutRate, string_eaxSetting) return "sound" end
function CreateSoundFilenameWithLabel(string_fileName, boolean_looping, boolean_is3D, boolean_stopwhenoutofrange, integer_fadeInRate, integer_fadeOutRate, string_SLKEntryName) return "sound" end
function CreateSoundFromLabel(string_soundLabel, boolean_looping, boolean_is3D, boolean_stopwhenoutofrange, integer_fadeInRate, integer_fadeOutRate) return "sound" end
function CreateMIDISound(string_soundLabel, integer_fadeInRate, integer_fadeOutRate) return "sound" end
function SetSoundParamsFromLabel(sound_soundHandle, string_soundLabel) end
function SetSoundDistanceCutoff(sound_soundHandle, real_cutoff) end
function SetSoundChannel(sound_soundHandle, integer_channel) end
function SetSoundVolume(sound_soundHandle, integer_volume) end
function SetSoundPitch(sound_soundHandle, real_pitch) end
function SetSoundPlayPosition(sound_soundHandle, integer_millisecs) end
function SetSoundDistances(sound_soundHandle, real_minDist, real_maxDist) end
function SetSoundConeAngles(sound_soundHandle, real_inside, real_outside, integer_outsideVolume) end
function SetSoundConeOrientation(sound_soundHandle, real_x, real_y, real_z) end
function SetSoundPosition(sound_soundHandle, real_x, real_y, real_z) end
function SetSoundVelocity(sound_soundHandle, real_x, real_y, real_z) end
function AttachSoundToUnit(sound_soundHandle, unit_whichUnit) end
function StartSound(sound_soundHandle) end
function StopSound(sound_soundHandle, boolean_killWhenDone, boolean_fadeOut) end
function KillSoundWhenDone(sound_soundHandle) end
function SetMapMusic(string_musicName, boolean_random, integer_index) end
function ClearMapMusic() end
function PlayMusic(string_musicName) end
function PlayMusicEx(string_musicName, integer_frommsecs, integer_fadeinmsecs) end
function StopMusic(boolean_fadeOut) end
function ResumeMusic() end
function PlayThematicMusic(string_musicFileName) end
function PlayThematicMusicEx(string_musicFileName, integer_frommsecs) end
function EndThematicMusic() end
function SetMusicVolume(integer_volume) end
function SetMusicPlayPosition(integer_millisecs) end
function SetThematicMusicPlayPosition(integer_millisecs) end
function SetSoundDuration(sound_soundHandle, integer_duration) end
function GetSoundDuration(sound_soundHandle) return "integer" end
function GetSoundFileDuration(string_musicFileName) return "integer" end
function VolumeGroupSetVolume(volumegroup_vgroup, real_scale) end
function VolumeGroupReset() end
function GetSoundIsPlaying(sound_soundHandle) return "boolean" end
function GetSoundIsLoading(sound_soundHandle) return "boolean" end
function RegisterStackedSound(sound_soundHandle, boolean_byPosition, real_rectwidth, real_rectheight) end
function UnregisterStackedSound(sound_soundHandle, boolean_byPosition, real_rectwidth, real_rectheight) end
function AddWeatherEffect(rect_where, integer_effectID) return "weathereffect" end
function RemoveWeatherEffect(weathereffect_whichEffect) end
function EnableWeatherEffect(weathereffect_whichEffect, boolean_enable) end
function TerrainDeformCrater(real_x, real_y, real_radius, real_depth, integer_duration, boolean_permanent) return "terraindeformation" end
function TerrainDeformRipple(real_x, real_y, real_radius, real_depth, integer_duration, integer_count, real_spaceWaves, real_timeWaves, real_radiusStartPct, boolean_limitNeg) return "terraindeformation" end
function TerrainDeformWave(real_x, real_y, real_dirX, real_dirY, real_distance, real_speed, real_radius, real_depth, integer_trailTime, integer_count) return "terraindeformation" end
function TerrainDeformRandom(real_x, real_y, real_radius, real_minDelta, real_maxDelta, integer_duration, integer_updateInterval) return "terraindeformation" end
function TerrainDeformStop(terraindeformation_deformation, integer_duration) end
function TerrainDeformStopAll() end
function AddSpecialEffect(string_modelName, real_x, real_y) return "effect" end
function AddSpecialEffectLoc(string_modelName, location_where) return "effect" end
function AddSpecialEffectTarget(string_modelName, widget_targetWidget, string_attachPointName) return "effect" end
function DestroyEffect(effect_whichEffect) end
function AddSpellEffect(string_abilityString, effecttype_t, real_x, real_y) return "effect" end
function AddSpellEffectLoc(string_abilityString, effecttype_t, location_where) return "effect" end
function AddSpellEffectById(integer_abilityId, effecttype_t, real_x, real_y) return "effect" end
function AddSpellEffectByIdLoc(integer_abilityId, effecttype_t, location_where) return "effect" end
function AddSpellEffectTarget(string_modelName, effecttype_t, widget_targetWidget, string_attachPoint) return "effect" end
function AddSpellEffectTargetById(integer_abilityId, effecttype_t, widget_targetWidget, string_attachPoint) return "effect" end
function AddLightning(string_codeName, boolean_checkVisibility, real_x1, real_y1, real_x2, real_y2) return "lightning" end
function AddLightningEx(string_codeName, boolean_checkVisibility, real_x1, real_y1, real_z1, real_x2, real_y2, real_z2) return "lightning" end
function DestroyLightning(lightning_whichBolt) return "boolean" end
function MoveLightning(lightning_whichBolt, boolean_checkVisibility, real_x1, real_y1, real_x2, real_y2) return "boolean" end
function MoveLightningEx(lightning_whichBolt, boolean_checkVisibility, real_x1, real_y1, real_z1, real_x2, real_y2, real_z2) return "boolean" end
function GetLightningColorA(lightning_whichBolt) return "real" end
function GetLightningColorR(lightning_whichBolt) return "real" end
function GetLightningColorG(lightning_whichBolt) return "real" end
function GetLightningColorB(lightning_whichBolt) return "real" end
function SetLightningColor(lightning_whichBolt, real_r, real_g, real_b, real_a) return "boolean" end
function GetAbilityEffect(string_abilityString, effecttype_t, integer_index) return "string" end
function GetAbilityEffectById(integer_abilityId, effecttype_t, integer_index) return "string" end
function GetAbilitySound(string_abilityString, soundtype_t) return "string" end
function GetAbilitySoundById(integer_abilityId, soundtype_t) return "string" end
function GetTerrainCliffLevel(real_x, real_y) return "integer" end
function SetWaterBaseColor(integer_red, integer_green, integer_blue, integer_alpha) end
function SetWaterDeforms(boolean_val) end
function GetTerrainType(real_x, real_y) return "integer" end
function GetTerrainVariance(real_x, real_y) return "integer" end
function SetTerrainType(real_x, real_y, integer_terrainType, integer_variation, integer_area, integer_shape) end
function IsTerrainPathable(real_x, real_y, pathingtype_t) return "boolean" end
function SetTerrainPathable(real_x, real_y, pathingtype_t, boolean_flag) end
function CreateImage(string_file, real_sizeX, real_sizeY, real_sizeZ, real_posX, real_posY, real_posZ, real_originX, real_originY, real_originZ, integer_imageType) return "image" end
function DestroyImage(image_whichImage) end
function ShowImage(image_whichImage, boolean_flag) end
function SetImageConstantHeight(image_whichImage, boolean_flag, real_height) end
function SetImagePosition(image_whichImage, real_x, real_y, real_z) end
function SetImageColor(image_whichImage, integer_red, integer_green, integer_blue, integer_alpha) end
function SetImageRender(image_whichImage, boolean_flag) end
function SetImageRenderAlways(image_whichImage, boolean_flag) end
function SetImageAboveWater(image_whichImage, boolean_flag, boolean_useWaterAlpha) end
function SetImageType(image_whichImage, integer_imageType) end
function CreateUbersplat(real_x, real_y, string_name, integer_red, integer_green, integer_blue, integer_alpha, boolean_forcePaused, boolean_noBirthTime) return "ubersplat" end
function DestroyUbersplat(ubersplat_whichSplat) end
function ResetUbersplat(ubersplat_whichSplat) end
function FinishUbersplat(ubersplat_whichSplat) end
function ShowUbersplat(ubersplat_whichSplat, boolean_flag) end
function SetUbersplatRender(ubersplat_whichSplat, boolean_flag) end
function SetUbersplatRenderAlways(ubersplat_whichSplat, boolean_flag) end
function SetBlight(player_whichPlayer, real_x, real_y, real_radius, boolean_addBlight) end
function SetBlightRect(player_whichPlayer, rect_r, boolean_addBlight) end
function SetBlightPoint(player_whichPlayer, real_x, real_y, boolean_addBlight) end
function SetBlightLoc(player_whichPlayer, location_whichLocation, real_radius, boolean_addBlight) end
function CreateBlightedGoldmine(player_id, real_x, real_y, real_face) return "unit" end
function IsPointBlighted(real_x, real_y) return "boolean" end
function SetDoodadAnimation(real_x, real_y, real_radius, integer_doodadID, boolean_nearestOnly, string_animName, boolean_animRandom) end
function SetDoodadAnimationRect(rect_r, integer_doodadID, string_animName, boolean_animRandom) end
function StartMeleeAI(player_num, string_script) end
function StartCampaignAI(player_num, string_script) end
function CommandAI(player_num, integer_command, integer_data) end
function PauseCompAI(player_p, boolean_pause) end
function GetAIDifficulty(player_num) return "aidifficulty" end
function RemoveGuardPosition(unit_hUnit) end
function RecycleGuardPosition(unit_hUnit) end
function RemoveAllGuardPositions(player_num) end
function Cheat(string_cheatStr) end
function IsNoVictoryCheat() return "boolean" end
function IsNoDefeatCheat() return "boolean" end
function Preload(string_filename) end
function PreloadEnd(real_timeout) end
function PreloadStart() end
function PreloadRefresh() end
function PreloadEndEx() end
function PreloadGenClear() end
function PreloadGenStart() end
function PreloadGenEnd(string_filename) end
function Preloader(string_filename) end
function AutomationSetTestType(string_testType) end
function AutomationTestStart(string_testName) end
function AutomationTestEnd() end
function AutomationTestingFinished() end
function BlzGetTriggerPlayerMouseX() return "real" end
function BlzGetTriggerPlayerMouseY() return "real" end
function BlzGetTriggerPlayerMousePosition() return "location" end
function BlzGetTriggerPlayerMouseButton() return "mousebuttontype" end
function BlzSetAbilityTooltip(integer_abilCode, string_tooltip, integer_level) end
function BlzSetAbilityActivatedTooltip(integer_abilCode, string_tooltip, integer_level) end
function BlzSetAbilityExtendedTooltip(integer_abilCode, string_extendedTooltip, integer_level) end
function BlzSetAbilityActivatedExtendedTooltip(integer_abilCode, string_extendedTooltip, integer_level) end
function BlzSetAbilityResearchTooltip(integer_abilCode, string_researchTooltip, integer_level) end
function BlzSetAbilityResearchExtendedTooltip(integer_abilCode, string_researchExtendedTooltip, integer_level) end
function BlzGetAbilityTooltip(integer_abilCode, integer_level) return "string" end
function BlzGetAbilityActivatedTooltip(integer_abilCode, integer_level) return "string" end
function BlzGetAbilityExtendedTooltip(integer_abilCode, integer_level) return "string" end
function BlzGetAbilityActivatedExtendedTooltip(integer_abilCode, integer_level) return "string" end
function BlzGetAbilityResearchTooltip(integer_abilCode, integer_level) return "string" end
function BlzGetAbilityResearchExtendedTooltip(integer_abilCode, integer_level) return "string" end
function BlzSetAbilityIcon(integer_abilCode, string_iconPath) end
function BlzGetAbilityIcon(integer_abilCode) return "string" end
function BlzSetAbilityActivatedIcon(integer_abilCode, string_iconPath) end
function BlzGetAbilityActivatedIcon(integer_abilCode) return "string" end
function BlzGetAbilityPosX(integer_abilCode) return "integer" end
function BlzGetAbilityPosY(integer_abilCode) return "integer" end
function BlzSetAbilityPosX(integer_abilCode, integer_x) end
function BlzSetAbilityPosY(integer_abilCode, integer_y) end
function BlzGetAbilityActivatedPosX(integer_abilCode) return "integer" end
function BlzGetAbilityActivatedPosY(integer_abilCode) return "integer" end
function BlzSetAbilityActivatedPosX(integer_abilCode, integer_x) end
function BlzSetAbilityActivatedPosY(integer_abilCode, integer_y) end
function BlzGetUnitMaxHP(unit_whichUnit) return "integer" end
function BlzSetUnitMaxHP(unit_whichUnit, integer_hp) end
function BlzGetUnitMaxMana(unit_whichUnit) return "integer" end
function BlzSetUnitMaxMana(unit_whichUnit, integer_mana) end
function BlzSetItemName(item_whichItem, string_name) end
function BlzSetItemDescription(item_whichItem, string_description) end
function BlzGetItemDescription(item_whichItem) return "string" end
function BlzSetItemTooltip(item_whichItem, string_tooltip) end
function BlzGetItemTooltip(item_whichItem) return "string" end
function BlzSetItemExtendedTooltip(item_whichItem, string_extendedTooltip) end
function BlzGetItemExtendedTooltip(item_whichItem) return "string" end
function BlzSetItemIconPath(item_whichItem, string_iconPath) end
function BlzGetItemIconPath(item_whichItem) return "string" end
function BlzSetUnitName(unit_whichUnit, string_name) end
function BlzSetHeroProperName(unit_whichUnit, string_heroProperName) end
function BlzGetUnitBaseDamage(unit_whichUnit, integer_weaponIndex) return "integer" end
function BlzSetUnitBaseDamage(unit_whichUnit, integer_baseDamage, integer_weaponIndex) end
function BlzGetUnitDiceNumber(unit_whichUnit, integer_weaponIndex) return "integer" end
function BlzSetUnitDiceNumber(unit_whichUnit, integer_diceNumber, integer_weaponIndex) end
function BlzGetUnitDiceSides(unit_whichUnit, integer_weaponIndex) return "integer" end
function BlzSetUnitDiceSides(unit_whichUnit, integer_diceSides, integer_weaponIndex) end
function BlzGetUnitAttackCooldown(unit_whichUnit, integer_weaponIndex) return "real" end
function BlzSetUnitAttackCooldown(unit_whichUnit, real_cooldown, integer_weaponIndex) end
function BlzSetSpecialEffectColorByPlayer(effect_whichEffect, player_whichPlayer) end
function BlzSetSpecialEffectColor(effect_whichEffect, integer_r, integer_g, integer_b) end
function BlzSetSpecialEffectAlpha(effect_whichEffect, integer_alpha) end
function BlzSetSpecialEffectScale(effect_whichEffect, real_scale) end
function BlzSetSpecialEffectPosition(effect_whichEffect, real_x, real_y, real_z) end
function BlzSetSpecialEffectHeight(effect_whichEffect, real_height) end
function BlzSetSpecialEffectTimeScale(effect_whichEffect, real_timeScale) end
function BlzSetSpecialEffectTime(effect_whichEffect, real_time) end
function BlzSetSpecialEffectOrientation(effect_whichEffect, real_yaw, real_pitch, real_roll) end
function BlzSetSpecialEffectYaw(effect_whichEffect, real_yaw) end
function BlzSetSpecialEffectPitch(effect_whichEffect, real_pitch) end
function BlzSetSpecialEffectRoll(effect_whichEffect, real_roll) end
function BlzSetSpecialEffectX(effect_whichEffect, real_x) end
function BlzSetSpecialEffectY(effect_whichEffect, real_y) end
function BlzSetSpecialEffectZ(effect_whichEffect, real_z) end
function BlzSetSpecialEffectPositionLoc(effect_whichEffect, location_loc) end
function BlzGetLocalSpecialEffectX(effect_whichEffect) return "real" end
function BlzGetLocalSpecialEffectY(effect_whichEffect) return "real" end
function BlzGetLocalSpecialEffectZ(effect_whichEffect) return "real" end
function BlzSpecialEffectClearSubAnimations(effect_whichEffect) end
function BlzSpecialEffectRemoveSubAnimation(effect_whichEffect, subanimtype_whichSubAnim) end
function BlzSpecialEffectAddSubAnimation(effect_whichEffect, subanimtype_whichSubAnim) end
function BlzPlaySpecialEffect(effect_whichEffect, animtype_whichAnim) end
function BlzPlaySpecialEffectWithTimeScale(effect_whichEffect, animtype_whichAnim, real_timeScale) end
function BlzGetAnimName(animtype_whichAnim) return "string" end
function BlzGetUnitArmor(unit_whichUnit) return "real" end
function BlzSetUnitArmor(unit_whichUnit, real_armorAmount) end
function BlzUnitHideAbility(unit_whichUnit, integer_abilId, boolean_flag) end
function BlzUnitDisableAbility(unit_whichUnit, integer_abilId, boolean_flag, boolean_hideUI) end
function BlzUnitCancelTimedLife(unit_whichUnit) end
function BlzIsUnitSelectable(unit_whichUnit) return "boolean" end
function BlzIsUnitInvulnerable(unit_whichUnit) return "boolean" end
function BlzUnitInterruptAttack(unit_whichUnit) end
function BlzGetUnitCollisionSize(unit_whichUnit) return "real" end
function BlzGetAbilityManaCost(integer_abilId, integer_level) return "integer" end
function BlzGetAbilityCooldown(integer_abilId, integer_level) return "real" end
function BlzSetUnitAbilityCooldown(unit_whichUnit, integer_abilId, integer_level, real_cooldown) end
function BlzGetUnitAbilityCooldown(unit_whichUnit, integer_abilId, integer_level) return "real" end
function BlzGetUnitAbilityCooldownRemaining(unit_whichUnit, integer_abilId) return "real" end
function BlzEndUnitAbilityCooldown(unit_whichUnit, integer_abilCode) end
function BlzGetUnitAbilityManaCost(unit_whichUnit, integer_abilId, integer_level) return "integer" end
function BlzSetUnitAbilityManaCost(unit_whichUnit, integer_abilId, integer_level, integer_manaCost) end
function BlzGetLocalUnitZ(unit_whichUnit) return "real" end
function BlzDecPlayerTechResearched(player_whichPlayer, integer_techid, integer_levels) end
function BlzSetEventDamage(real_damage) end
function BlzGetEventDamageTarget() return "unit" end
function BlzGetEventAttackType() return "attacktype" end
function BlzGetEventDamageType() return "damagetype" end
function BlzGetEventWeaponType() return "weapontype" end
function BlzSetEventAttackType(attacktype_attackType) return "boolean" end
function BlzSetEventDamageType(damagetype_damageType) return "boolean" end
function BlzSetEventWeaponType(weapontype_weaponType) return "boolean" end
function RequestExtraIntegerData(integer_dataType, player_whichPlayer, string_param1, string_param2, boolean_param3, integer_param4, integer_param5, integer_param6) return "integer" end
function RequestExtraBooleanData(integer_dataType, player_whichPlayer, string_param1, string_param2, boolean_param3, integer_param4, integer_param5, integer_param6) return "boolean" end
function RequestExtraStringData(integer_dataType, player_whichPlayer, string_param1, string_param2, boolean_param3, integer_param4, integer_param5, integer_param6) return "string" end
function RequestExtraRealData(integer_dataType, player_whichPlayer, string_param1, string_param2, boolean_param3, integer_param4, integer_param5, integer_param6) return "real" end
function BlzGetUnitZ(unit_whichUnit) return "real" end
function BlzEnableSelections(boolean_enableSelection, boolean_enableSelectionCircle) end
function BlzIsSelectionEnabled() return "boolean" end
function BlzIsSelectionCircleEnabled() return "boolean" end
function BlzCameraSetupApplyForceDurationSmooth(camerasetup_whichSetup, boolean_doPan, real_forcedDuration, real_easeInDuration, real_easeOutDuration, real_smoothFactor) end
function BlzEnableTargetIndicator(boolean_enable) end
function BlzIsTargetIndicatorEnabled() return "boolean" end
function BlzGetOriginFrame(originframetype_frameType, integer_index) return "framehandle" end
function BlzEnableUIAutoPosition(boolean_enable) end
function BlzHideOriginFrames(boolean_enable) end
function BlzConvertColor(integer_a, integer_r, integer_g, integer_b) return "integer" end
function BlzLoadTOCFile(string_TOCFile) return "boolean" end
function BlzCreateFrame(string_name, framehandle_owner, integer_priority, integer_createContext) return "framehandle" end
function BlzCreateSimpleFrame(string_name, framehandle_owner, integer_createContext) return "framehandle" end
function BlzCreateFrameByType(string_typeName, string_name, framehandle_owner, string_inherits, integer_createContext) return "framehandle" end
function BlzDestroyFrame(framehandle_frame) end
function BlzFrameSetPoint(framehandle_frame, framepointtype_point, framehandle_relative, framepointtype_relativePoint, real_x, real_y) end
function BlzFrameSetAbsPoint(framehandle_frame, framepointtype_point, real_x, real_y) end
function BlzFrameClearAllPoints(framehandle_frame) end
function BlzFrameSetAllPoints(framehandle_frame, framehandle_relative) end
function BlzFrameSetVisible(framehandle_frame, boolean_visible) end
function BlzFrameIsVisible(framehandle_frame) return "boolean" end
function BlzGetFrameByName(string_name, integer_createContext) return "framehandle" end
function BlzFrameGetName(framehandle_frame) return "string" end
function BlzFrameClick(framehandle_frame) end
function BlzFrameSetText(framehandle_frame, string_text) end
function BlzFrameGetText(framehandle_frame) return "string" end
function BlzFrameSetTextSizeLimit(framehandle_frame, integer_size) end
function BlzFrameGetTextSizeLimit(framehandle_frame) return "integer" end
function BlzFrameSetTextColor(framehandle_frame, integer_color) end
function BlzFrameSetFocus(framehandle_frame, boolean_flag) end
function BlzFrameSetModel(framehandle_frame, string_modelFile, integer_cameraIndex) end
function BlzFrameSetEnable(framehandle_frame, boolean_enabled) end
function BlzFrameGetEnable(framehandle_frame) return "boolean" end
function BlzFrameSetAlpha(framehandle_frame, integer_alpha) end
function BlzFrameGetAlpha(framehandle_frame) return "integer" end
function BlzFrameSetSpriteAnimate(framehandle_frame, integer_primaryProp, integer_flags) end
function BlzFrameSetTexture(framehandle_frame, string_texFile, integer_flag, boolean_blend) end
function BlzFrameSetScale(framehandle_frame, real_scale) end
function BlzFrameSetTooltip(framehandle_frame, framehandle_tooltip) end
function BlzFrameCageMouse(framehandle_frame, boolean_enable) end
function BlzFrameSetValue(framehandle_frame, real_value) end
function BlzFrameGetValue(framehandle_frame) return "real" end
function BlzFrameSetMinMaxValue(framehandle_frame, real_minValue, real_maxValue) end
function BlzFrameSetStepSize(framehandle_frame, real_stepSize) end
function BlzFrameSetSize(framehandle_frame, real_width, real_height) end
function BlzFrameSetVertexColor(framehandle_frame, integer_color) end
function BlzFrameSetLevel(framehandle_frame, integer_level) end
function BlzFrameSetParent(framehandle_frame, framehandle_parent) end
function BlzFrameGetParent(framehandle_frame) return "framehandle" end
function BlzFrameGetHeight(framehandle_frame) return "real" end
function BlzFrameGetWidth(framehandle_frame) return "real" end
function BlzFrameSetFont(framehandle_frame, string_fileName, real_height, integer_flags) end
function BlzFrameSetTextAlignment(framehandle_frame, textaligntype_vert, textaligntype_horz) end
function BlzTriggerRegisterFrameEvent(trigger_whichTrigger, framehandle_frame, frameeventtype_eventId) return "event" end
function BlzGetTriggerFrame() return "framehandle" end
function BlzGetTriggerFrameEvent() return "frameeventtype" end
function BlzTriggerRegisterPlayerSyncEvent(trigger_whichTrigger, player_whichPlayer, string_prefix, boolean_fromServer) return "event" end
function BlzSendSyncData(string_prefix, string_data) return "boolean" end
function BlzGetTriggerSyncPrefix() return "string" end
function BlzGetTriggerSyncData() return "string" end
function BlzTriggerRegisterPlayerKeyEvent(trigger_whichTrigger, player_whichPlayer, oskeytype_key, integer_metaKey, boolean_keyDown) return "event" end
function BlzGetTriggerPlayerKey() return "oskeytype" end
function BlzGetTriggerPlayerMetaKey() return "integer" end
function BlzGetTriggerPlayerIsKeyDown() return "boolean" end
function BlzEnableCursor(boolean_enable) end
function BlzSetMousePos(integer_x, integer_y) end
function BlzGetLocalClientWidth() return "integer" end
function BlzGetLocalClientHeight() return "integer" end
function BlzIsLocalClientActive() return "boolean" end
function BlzGetMouseFocusUnit() return "unit" end
function BlzChangeMinimapTerrainTex(string_texFile) return "boolean" end
function BlzGetLocale() return "string" end
function BlzGetSpecialEffectScale(effect_whichEffect) return "real" end
function BlzSetSpecialEffectMatrixScale(effect_whichEffect, real_x, real_y, real_z) end
function BlzResetSpecialEffectMatrix(effect_whichEffect) end
function BlzGetUnitAbility(unit_whichUnit, integer_abilId) return "ability" end
function BlzGetUnitAbilityByIndex(unit_whichUnit, integer_index) return "ability" end
function BlzDisplayChatMessage(player_whichPlayer, integer_recipient, string_message) end
function BlzPauseUnitEx(unit_whichUnit, boolean_flag) end
function BlzBitOr(integer_x, integer_y) return "integer" end
function BlzBitAnd(integer_x, integer_y) return "integer" end
function BlzBitXor(integer_x, integer_y) return "integer" end
function BlzGetAbilityBooleanField(ability_whichAbility, abilitybooleanfield_whichField) return "boolean" end
function BlzGetAbilityIntegerField(ability_whichAbility, abilityintegerfield_whichField) return "integer" end
function BlzGetAbilityRealField(ability_whichAbility, abilityrealfield_whichField) return "real" end
function BlzGetAbilityStringField(ability_whichAbility, abilitystringfield_whichField) return "string" end
function BlzGetAbilityBooleanLevelField(ability_whichAbility, abilitybooleanlevelfield_whichField, integer_level) return "boolean" end
function BlzGetAbilityIntegerLevelField(ability_whichAbility, abilityintegerlevelfield_whichField, integer_level) return "integer" end
function BlzGetAbilityRealLevelField(ability_whichAbility, abilityreallevelfield_whichField, integer_level) return "real" end
function BlzGetAbilityStringLevelField(ability_whichAbility, abilitystringlevelfield_whichField, integer_level) return "string" end
function BlzGetAbilityBooleanLevelArrayField(ability_whichAbility, abilitybooleanlevelarrayfield_whichField, integer_level, integer_index) return "boolean" end
function BlzGetAbilityIntegerLevelArrayField(ability_whichAbility, abilityintegerlevelarrayfield_whichField, integer_level, integer_index) return "integer" end
function BlzGetAbilityRealLevelArrayField(ability_whichAbility, abilityreallevelarrayfield_whichField, integer_level, integer_index) return "real" end
function BlzGetAbilityStringLevelArrayField(ability_whichAbility, abilitystringlevelarrayfield_whichField, integer_level, integer_index) return "string" end
function BlzSetAbilityBooleanField(ability_whichAbility, abilitybooleanfield_whichField, boolean_value) return "boolean" end
function BlzSetAbilityIntegerField(ability_whichAbility, abilityintegerfield_whichField, integer_value) return "boolean" end
function BlzSetAbilityRealField(ability_whichAbility, abilityrealfield_whichField, real_value) return "boolean" end
function BlzSetAbilityStringField(ability_whichAbility, abilitystringfield_whichField, string_value) return "boolean" end
function BlzSetAbilityBooleanLevelField(ability_whichAbility, abilitybooleanlevelfield_whichField, integer_level, boolean_value) return "boolean" end
function BlzSetAbilityIntegerLevelField(ability_whichAbility, abilityintegerlevelfield_whichField, integer_level, integer_value) return "boolean" end
function BlzSetAbilityRealLevelField(ability_whichAbility, abilityreallevelfield_whichField, integer_level, real_value) return "boolean" end
function BlzSetAbilityStringLevelField(ability_whichAbility, abilitystringlevelfield_whichField, integer_level, string_value) return "boolean" end
function BlzSetAbilityBooleanLevelArrayField(ability_whichAbility, abilitybooleanlevelarrayfield_whichField, integer_level, integer_index, boolean_value) return "boolean" end
function BlzSetAbilityIntegerLevelArrayField(ability_whichAbility, abilityintegerlevelarrayfield_whichField, integer_level, integer_index, integer_value) return "boolean" end
function BlzSetAbilityRealLevelArrayField(ability_whichAbility, abilityreallevelarrayfield_whichField, integer_level, integer_index, real_value) return "boolean" end
function BlzSetAbilityStringLevelArrayField(ability_whichAbility, abilitystringlevelarrayfield_whichField, integer_level, integer_index, string_value) return "boolean" end
function BlzAddAbilityBooleanLevelArrayField(ability_whichAbility, abilitybooleanlevelarrayfield_whichField, integer_level, boolean_value) return "boolean" end
function BlzAddAbilityIntegerLevelArrayField(ability_whichAbility, abilityintegerlevelarrayfield_whichField, integer_level, integer_value) return "boolean" end
function BlzAddAbilityRealLevelArrayField(ability_whichAbility, abilityreallevelarrayfield_whichField, integer_level, real_value) return "boolean" end
function BlzAddAbilityStringLevelArrayField(ability_whichAbility, abilitystringlevelarrayfield_whichField, integer_level, string_value) return "boolean" end
function BlzRemoveAbilityBooleanLevelArrayField(ability_whichAbility, abilitybooleanlevelarrayfield_whichField, integer_level, boolean_value) return "boolean" end
function BlzRemoveAbilityIntegerLevelArrayField(ability_whichAbility, abilityintegerlevelarrayfield_whichField, integer_level, integer_value) return "boolean" end
function BlzRemoveAbilityRealLevelArrayField(ability_whichAbility, abilityreallevelarrayfield_whichField, integer_level, real_value) return "boolean" end
function BlzRemoveAbilityStringLevelArrayField(ability_whichAbility, abilitystringlevelarrayfield_whichField, integer_level, string_value) return "boolean" end
function BlzGetItemAbilityByIndex(item_whichItem, integer_index) return "ability" end
function BlzGetItemAbility(item_whichItem, integer_abilCode) return "ability" end
function BlzItemAddAbility(item_whichItem, integer_abilCode) return "boolean" end
function BlzGetItemBooleanField(item_whichItem, itembooleanfield_whichField) return "boolean" end
function BlzGetItemIntegerField(item_whichItem, itemintegerfield_whichField) return "integer" end
function BlzGetItemRealField(item_whichItem, itemrealfield_whichField) return "real" end
function BlzGetItemStringField(item_whichItem, itemstringfield_whichField) return "string" end
function BlzSetItemBooleanField(item_whichItem, itembooleanfield_whichField, boolean_value) return "boolean" end
function BlzSetItemIntegerField(item_whichItem, itemintegerfield_whichField, integer_value) return "boolean" end
function BlzSetItemRealField(item_whichItem, itemrealfield_whichField, real_value) return "boolean" end
function BlzSetItemStringField(item_whichItem, itemstringfield_whichField, string_value) return "boolean" end
function BlzItemRemoveAbility(item_whichItem, integer_abilCode) return "boolean" end
function BlzGetUnitBooleanField(unit_whichUnit, unitbooleanfield_whichField) return "boolean" end
function BlzGetUnitIntegerField(unit_whichUnit, unitintegerfield_whichField) return "integer" end
function BlzGetUnitRealField(unit_whichUnit, unitrealfield_whichField) return "real" end
function BlzGetUnitStringField(unit_whichUnit, unitstringfield_whichField) return "string" end
function BlzSetUnitBooleanField(unit_whichUnit, unitbooleanfield_whichField, boolean_value) return "boolean" end
function BlzSetUnitIntegerField(unit_whichUnit, unitintegerfield_whichField, integer_value) return "boolean" end
function BlzSetUnitRealField(unit_whichUnit, unitrealfield_whichField, real_value) return "boolean" end
function BlzSetUnitStringField(unit_whichUnit, unitstringfield_whichField, string_value) return "boolean" end
function BlzGetUnitWeaponBooleanField(unit_whichUnit, unitweaponbooleanfield_whichField, integer_index) return "boolean" end
function BlzGetUnitWeaponIntegerField(unit_whichUnit, unitweaponintegerfield_whichField, integer_index) return "integer" end
function BlzGetUnitWeaponRealField(unit_whichUnit, unitweaponrealfield_whichField, integer_index) return "real" end
function BlzGetUnitWeaponStringField(unit_whichUnit, unitweaponstringfield_whichField, integer_index) return "string" end
function BlzSetUnitWeaponBooleanField(unit_whichUnit, unitweaponbooleanfield_whichField, integer_index, boolean_value) return "boolean" end
function BlzSetUnitWeaponIntegerField(unit_whichUnit, unitweaponintegerfield_whichField, integer_index, integer_value) return "boolean" end
function BlzSetUnitWeaponRealField(unit_whichUnit, unitweaponrealfield_whichField, integer_index, real_value) return "boolean" end
function BlzSetUnitWeaponStringField(unit_whichUnit, unitweaponstringfield_whichField, integer_index, string_value) return "boolean" end
