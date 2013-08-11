module UnrealScript.TribesGame.TrVGSCommandList;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrVGSCommandList : UObject
{
	enum EVGSContextLocation : ubyte
	{
		VGSContext_None = 0,
		VGSContext_InsideBase = 1,
		VGSContext_AroundBase = 2,
		VGSContext_BehindBase = 3,
		VGSContext_Midfield = 4,
		VGSContext_NearGenerator = 5,
		VGSContext_NearFlag = 6,
		VGSContext_NearBaseTurret = 7,
		VGSContext_NearVehiclePad = 8,
		VGSContext_MAX = 9,
	}
	enum EVGSScope : ubyte
	{
		VGSScope_Team = 0,
		VGSScope_Global = 1,
		VGSScope_MAX = 2,
	}
	enum VGSCommandType : ubyte
	{
		VGSCommandType_GlobalYes = 0,
		VGSCommandType_GlobalNo = 1,
		VGSCommandType_GlobalHi = 2,
		VGSCommandType_GlobalBye = 3,
		VGSCommandType_GlobalOoops = 4,
		VGSCommandType_GlobalQuiet = 5,
		VGSCommandType_GlobalShazbot = 6,
		VGSCommandType_GlobalWoohoo = 7,
		VGSCommandType_GlobalComplimentAwesome = 8,
		VGSCommandType_GlobalComplimentGoodGame = 9,
		VGSCommandType_GlobalComplimentNiceMove = 10,
		VGSCommandType_GlobalComplimentYouRock = 11,
		VGSCommandType_GlobalComplimentGreatShot = 12,
		VGSCommandType_GlobalRespondAnyTime = 13,
		VGSCommandType_GlobalRespondDontKnow = 14,
		VGSCommandType_GlobalRespondThanks = 15,
		VGSCommandType_GlobalRespondWait = 16,
		VGSCommandType_GlobalTauntAww = 17,
		VGSCommandType_GlobalTauntObnoxious = 18,
		VGSCommandType_GlobalTauntBrag = 19,
		VGSCommandType_GlobalTauntSarcasm = 20,
		VGSCommandType_GlobalTauntLearn = 21,
		VGSCommandType_Attack = 22,
		VGSCommandType_AttackBase = 23,
		VGSCommandType_AttackChase = 24,
		VGSCommandType_AttackDisrupt = 25,
		VGSCommandType_AttackFlag = 26,
		VGSCommandType_AttackGenerator = 27,
		VGSCommandType_AttackReinforce = 28,
		VGSCommandType_AttackSensors = 29,
		VGSCommandType_AttackTurrets = 30,
		VGSCommandType_AttackVehicle = 31,
		VGSCommandType_AttackWait = 32,
		VGSCommandType_AttackPointA = 33,
		VGSCommandType_AttackPointB = 34,
		VGSCommandType_AttackPointC = 35,
		VGSCommandType_AttackPointD = 36,
		VGSCommandType_AttackPointE = 37,
		VGSCommandType_DefendBase = 38,
		VGSCommandType_DefendFlagCarrier = 39,
		VGSCommandType_DefendEntrances = 40,
		VGSCommandType_DefendFlag = 41,
		VGSCommandType_DefendGenerator = 42,
		VGSCommandType_DefendMe = 43,
		VGSCommandType_DefendReinforce = 44,
		VGSCommandType_DefendSensors = 45,
		VGSCommandType_DefendTurrets = 46,
		VGSCommandType_DefendVehicle = 47,
		VGSCommandType_DefendPointA = 48,
		VGSCommandType_DefendPointB = 49,
		VGSCommandType_DefendPointC = 50,
		VGSCommandType_DefendPointD = 51,
		VGSCommandType_DefendPointE = 52,
		VGSCommandType_RepairGenerator = 53,
		VGSCommandType_RepairSensors = 54,
		VGSCommandType_RepairTurrets = 55,
		VGSCommandType_RepairVehicle = 56,
		VGSCommandType_BaseClear = 57,
		VGSCommandType_EnemyInBase = 58,
		VGSCommandType_BaseRetake = 59,
		VGSCommandType_BaseSecure = 60,
		VGSCommandType_CommandAcknowledged = 61,
		VGSCommandType_CommandCompleted = 62,
		VGSCommandType_CommandDeclined = 63,
		VGSCommandType_CommandAssignment = 64,
		VGSCommandType_EnemyDisarray = 65,
		VGSCommandType_EnemyGeneratorDestroyed = 66,
		VGSCommandType_EnemySensorsDestroyed = 67,
		VGSCommandType_EnemyTurretsDestroyed = 68,
		VGSCommandType_EnemyVehicleDestroyed = 69,
		VGSCommandType_FlagDefend = 70,
		VGSCommandType_FlagIHave = 71,
		VGSCommandType_FlagGiveMe = 72,
		VGSCommandType_FlagSecure = 73,
		VGSCommandType_FlagRetrieve = 74,
		VGSCommandType_FlagSelfRetrieve = 75,
		VGSCommandType_FlagTake = 76,
		VGSCommandType_NeedCover = 77,
		VGSCommandType_NeedDriver = 78,
		VGSCommandType_NeedEscort = 79,
		VGSCommandType_NeedHoldVehicle = 80,
		VGSCommandType_NeedRide = 81,
		VGSCommandType_NeedSupport = 82,
		VGSCommandType_NeedVehicleReady = 83,
		VGSCommandType_NeedWhereTo = 84,
		VGSCommandType_SelfAttack = 85,
		VGSCommandType_SelfAttackBase = 86,
		VGSCommandType_SelfAttackFlag = 87,
		VGSCommandType_SelfAttackGenerator = 88,
		VGSCommandType_SelfAttackSensors = 89,
		VGSCommandType_SelfAttackTurrets = 90,
		VGSCommandType_SelfAttackVehicle = 91,
		VGSCommandType_SelfAttackPointA = 92,
		VGSCommandType_SelfAttackPointB = 93,
		VGSCommandType_SelfAttackPointC = 94,
		VGSCommandType_SelfAttackPointD = 95,
		VGSCommandType_SelfAttackPointE = 96,
		VGSCommandType_SelfDefendBase = 97,
		VGSCommandType_SelfDefend = 98,
		VGSCommandType_SelfDefendFlag = 99,
		VGSCommandType_SelfDefendGenerator = 100,
		VGSCommandType_SelfDefendSensors = 101,
		VGSCommandType_SelfDefendTurrets = 102,
		VGSCommandType_SelfDefendVehicle = 103,
		VGSCommandType_SelfDefendPointA = 104,
		VGSCommandType_SelfDefendPointB = 105,
		VGSCommandType_SelfDefendPointC = 106,
		VGSCommandType_SelfDefendPointD = 107,
		VGSCommandType_SelfDefendPointE = 108,
		VGSCommandType_SelfRepairBase = 109,
		VGSCommandType_SelfRepairGenerator = 110,
		VGSCommandType_SelfRepairSensors = 111,
		VGSCommandType_SelfRepairTurrets = 112,
		VGSCommandType_SelfRepairVehicle = 113,
		VGSCommandType_SelfTaskCover = 114,
		VGSCommandType_SelfTaskDefenses = 115,
		VGSCommandType_SelfTaskForcefield = 116,
		VGSCommandType_SelfTaskOnIt = 117,
		VGSCommandType_SelfTaskDeploySensors = 118,
		VGSCommandType_SelfTaskDeployTurrets = 119,
		VGSCommandType_SelfTaskVehicle = 120,
		VGSCommandType_SelfUpgradeGenerator = 121,
		VGSCommandType_SelfUpgradeSensors = 122,
		VGSCommandType_SelfUpgradeTurrets = 123,
		VGSCommandType_TargetAcquired = 124,
		VGSCommandType_TargetBase = 125,
		VGSCommandType_TargetDestroyed = 126,
		VGSCommandType_TargetFlag = 127,
		VGSCommandType_TargetFireOnMy = 128,
		VGSCommandType_TargetNeed = 129,
		VGSCommandType_TargetSensors = 130,
		VGSCommandType_TargetTurret = 131,
		VGSCommandType_TargetVehicle = 132,
		VGSCommandType_TargetWait = 133,
		VGSCommandType_UpgradeGenerator = 134,
		VGSCommandType_UpgradeSensors = 135,
		VGSCommandType_UpgradeTurrets = 136,
		VGSCommandType_WarnEnemies = 137,
		VGSCommandType_WarnVehicle = 138,
		VGSCommandType_TeamYes = 139,
		VGSCommandType_TeamNo = 140,
		VGSCommandType_TeamAnytime = 141,
		VGSCommandType_TeamBaseSecure = 142,
		VGSCommandType_TeamCeaseFire = 143,
		VGSCommandType_TeamDontKnow = 144,
		VGSCommandType_TeamHelp = 145,
		VGSCommandType_TeamMove = 146,
		VGSCommandType_TeamSorry = 147,
		VGSCommandType_TeamThanks = 148,
		VGSCommandType_TeamWait = 149,
		VGSCommandType_MAX = 150,
	}
	enum EVGSContextActor : ubyte
	{
		VGSContextActors_None = 0,
		VGSContextActors_ActorLightPawn = 1,
		VGSContextActors_ActorMediumPawn = 2,
		VGSContextActors_ActorHeavyPawn = 3,
		VGSContextActors_ActorTurret = 4,
		VGSContextActors_ActorSensor = 5,
		VGSContextActors_ActorVehicle = 6,
		VGSContextActors_ActorDeployable = 7,
		VGSContextActors_MAX = 8,
	}
	struct TrVGSCommand
	{
		public @property final bool bIsContext() { return (*cast(uint*)(cast(size_t)&this + 48) & 0x1) != 0; }
		public @property final bool bIsContext(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 48) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 48) &= ~0x1; } return val; }
		private ubyte __bIsContext[4];
		public @property final auto ref ScriptString MenuString() { return *cast(ScriptString*)(cast(size_t)&this + 36); }
		private ubyte __MenuString[12];
		public @property final auto ref ScriptString ChatString() { return *cast(ScriptString*)(cast(size_t)&this + 24); }
		private ubyte __ChatString[12];
		public @property final auto ref ScriptString KeyBindPath() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
		private ubyte __KeyBindPath[12];
		// WARNING: Property 'KeyBind' has the same name as a defined type!
		public @property final auto ref TrVGSCommandList.EVGSScope VGSScope() { return *cast(TrVGSCommandList.EVGSScope*)(cast(size_t)&this + 0); }
		private ubyte __VGSScope[1];
	}
	public @property final auto ref ScriptString MenuString_TeamWait() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11724); }
	public @property final auto ref ScriptString MenuString_TeamThanks() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11712); }
	public @property final auto ref ScriptString MenuString_TeamSorry() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11700); }
	public @property final auto ref ScriptString MenuString_TeamMove() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11688); }
	public @property final auto ref ScriptString MenuString_TeamHelp() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11676); }
	public @property final auto ref ScriptString MenuString_TeamDontKnow() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11664); }
	public @property final auto ref ScriptString MenuString_TeamCeaseFire() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11652); }
	public @property final auto ref ScriptString MenuString_TeamBaseSecure() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11640); }
	public @property final auto ref ScriptString MenuString_TeamAnytime() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11628); }
	public @property final auto ref ScriptString MenuString_TeamNo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11616); }
	public @property final auto ref ScriptString MenuString_TeamYes() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11604); }
	public @property final auto ref ScriptString MenuString_WarnVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11592); }
	public @property final auto ref ScriptString MenuString_WarnEnemies() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11580); }
	public @property final auto ref ScriptString MenuString_UpgradeTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11568); }
	public @property final auto ref ScriptString MenuString_UpgradeSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11556); }
	public @property final auto ref ScriptString MenuString_UpgradeGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11544); }
	public @property final auto ref ScriptString MenuString_TargetWait() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11532); }
	public @property final auto ref ScriptString MenuString_TargetVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11520); }
	public @property final auto ref ScriptString MenuString_TargetTurret() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11508); }
	public @property final auto ref ScriptString MenuString_TargetSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11496); }
	public @property final auto ref ScriptString MenuString_TargetNeed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11484); }
	public @property final auto ref ScriptString MenuString_TargetFireOnMy() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11472); }
	public @property final auto ref ScriptString MenuString_TargetFlag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11460); }
	public @property final auto ref ScriptString MenuString_TargetDestroyed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11448); }
	public @property final auto ref ScriptString MenuString_TargetBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11436); }
	public @property final auto ref ScriptString MenuString_TargetAcquired() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11424); }
	public @property final auto ref ScriptString MenuString_SelfUpgradeTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11412); }
	public @property final auto ref ScriptString MenuString_SelfUpgradeSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11400); }
	public @property final auto ref ScriptString MenuString_SelfUpgradeGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11388); }
	public @property final auto ref ScriptString MenuString_SelfTaskVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11376); }
	public @property final auto ref ScriptString MenuString_SelfTaskDeployTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11364); }
	public @property final auto ref ScriptString MenuString_SelfTaskDeploySensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11352); }
	public @property final auto ref ScriptString MenuString_SelfTaskOnIt() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11340); }
	public @property final auto ref ScriptString MenuString_SelfTaskForcefield() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11328); }
	public @property final auto ref ScriptString MenuString_SelfTaskDefenses() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11316); }
	public @property final auto ref ScriptString MenuString_SelfTaskCover() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11304); }
	public @property final auto ref ScriptString MenuString_SelfRepairVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11292); }
	public @property final auto ref ScriptString MenuString_SelfRepairTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11280); }
	public @property final auto ref ScriptString MenuString_SelfRepairSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11268); }
	public @property final auto ref ScriptString MenuString_SelfRepairGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11256); }
	public @property final auto ref ScriptString MenuString_SelfRepairBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11244); }
	public @property final auto ref ScriptString MenuString_SelfDefendPointE() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11232); }
	public @property final auto ref ScriptString MenuString_SelfDefendPointD() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11220); }
	public @property final auto ref ScriptString MenuString_SelfDefendPointC() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11208); }
	public @property final auto ref ScriptString MenuString_SelfDefendPointB() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11196); }
	public @property final auto ref ScriptString MenuString_SelfDefendPointA() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11184); }
	public @property final auto ref ScriptString MenuString_SelfDefendVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11172); }
	public @property final auto ref ScriptString MenuString_SelfDefendTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11160); }
	public @property final auto ref ScriptString MenuString_SelfDefendSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11148); }
	public @property final auto ref ScriptString MenuString_SelfDefendGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11136); }
	public @property final auto ref ScriptString MenuString_SelfDefendFlag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11124); }
	public @property final auto ref ScriptString MenuString_SelfDefend() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11112); }
	public @property final auto ref ScriptString MenuString_SelfDefendBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11100); }
	public @property final auto ref ScriptString MenuString_SelfAttackPointE() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11088); }
	public @property final auto ref ScriptString MenuString_SelfAttackPointD() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11076); }
	public @property final auto ref ScriptString MenuString_SelfAttackPointC() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11064); }
	public @property final auto ref ScriptString MenuString_SelfAttackPointB() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11052); }
	public @property final auto ref ScriptString MenuString_SelfAttackPointA() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11040); }
	public @property final auto ref ScriptString MenuString_SelfAttackVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11028); }
	public @property final auto ref ScriptString MenuString_SelfAttackTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11016); }
	public @property final auto ref ScriptString MenuString_SelfAttackSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11004); }
	public @property final auto ref ScriptString MenuString_SelfAttackGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10992); }
	public @property final auto ref ScriptString MenuString_SelfAttackFlag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10980); }
	public @property final auto ref ScriptString MenuString_SelfAttackBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10968); }
	public @property final auto ref ScriptString MenuString_SelfAttack() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10956); }
	public @property final auto ref ScriptString MenuString_NeedWhereTo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10944); }
	public @property final auto ref ScriptString MenuString_NeedVehicleReady() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10932); }
	public @property final auto ref ScriptString MenuString_NeedSupport() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10920); }
	public @property final auto ref ScriptString MenuString_NeedRide() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10908); }
	public @property final auto ref ScriptString MenuString_NeedHoldVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10896); }
	public @property final auto ref ScriptString MenuString_NeedEscort() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10884); }
	public @property final auto ref ScriptString MenuString_NeedDriver() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10872); }
	public @property final auto ref ScriptString MenuString_NeedCover() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10860); }
	public @property final auto ref ScriptString MenuString_FlagTake() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10848); }
	public @property final auto ref ScriptString MenuString_FlagSecure() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10836); }
	public @property final auto ref ScriptString MenuString_FlagSelfRetrieve() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10824); }
	public @property final auto ref ScriptString MenuString_FlagRetrieve() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10812); }
	public @property final auto ref ScriptString MenuString_FlagGiveMe() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10800); }
	public @property final auto ref ScriptString MenuString_FlagIHave() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10788); }
	public @property final auto ref ScriptString MenuString_FlagDefend() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10776); }
	public @property final auto ref ScriptString MenuString_EnemyVehicleDestroyed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10764); }
	public @property final auto ref ScriptString MenuString_EnemyTurretsDestroyed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10752); }
	public @property final auto ref ScriptString MenuString_EnemySensorsDestroyed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10740); }
	public @property final auto ref ScriptString MenuString_EnemyGeneratorDestroyed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10728); }
	public @property final auto ref ScriptString MenuString_EnemyDisarray() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10716); }
	public @property final auto ref ScriptString MenuString_CommandAssignment() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10704); }
	public @property final auto ref ScriptString MenuString_CommandDeclined() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10692); }
	public @property final auto ref ScriptString MenuString_CommandCompleted() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10680); }
	public @property final auto ref ScriptString MenuString_CommandAcknowledged() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10668); }
	public @property final auto ref ScriptString MenuString_BaseSecure() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10656); }
	public @property final auto ref ScriptString MenuString_BaseRetake() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10644); }
	public @property final auto ref ScriptString MenuString_EnemyInBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10632); }
	public @property final auto ref ScriptString MenuString_BaseClear() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10620); }
	public @property final auto ref ScriptString MenuString_RepairVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10608); }
	public @property final auto ref ScriptString MenuString_RepairTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10596); }
	public @property final auto ref ScriptString MenuString_RepairSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10584); }
	public @property final auto ref ScriptString MenuString_RepairGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10572); }
	public @property final auto ref ScriptString MenuString_DefendPointE() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10560); }
	public @property final auto ref ScriptString MenuString_DefendPointD() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10548); }
	public @property final auto ref ScriptString MenuString_DefendPointC() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10536); }
	public @property final auto ref ScriptString MenuString_DefendPointB() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10524); }
	public @property final auto ref ScriptString MenuString_DefendPointA() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10512); }
	public @property final auto ref ScriptString MenuString_DefendVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10500); }
	public @property final auto ref ScriptString MenuString_DefendTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10488); }
	public @property final auto ref ScriptString MenuString_DefendSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10476); }
	public @property final auto ref ScriptString MenuString_DefendReinforce() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10464); }
	public @property final auto ref ScriptString MenuString_DefendMe() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10452); }
	public @property final auto ref ScriptString MenuString_DefendGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10440); }
	public @property final auto ref ScriptString MenuString_DefendFlag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10428); }
	public @property final auto ref ScriptString MenuString_DefendEntrances() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10416); }
	public @property final auto ref ScriptString MenuString_DefendFlagCarrier() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10404); }
	public @property final auto ref ScriptString MenuString_DefendBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10392); }
	public @property final auto ref ScriptString MenuString_AttackPointE() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10380); }
	public @property final auto ref ScriptString MenuString_AttackPointD() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10368); }
	public @property final auto ref ScriptString MenuString_AttackPointC() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10356); }
	public @property final auto ref ScriptString MenuString_AttackPointB() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10344); }
	public @property final auto ref ScriptString MenuString_AttackPointA() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10332); }
	public @property final auto ref ScriptString MenuString_AttackWait() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10320); }
	public @property final auto ref ScriptString MenuString_AttackVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10308); }
	public @property final auto ref ScriptString MenuString_AttackTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10296); }
	public @property final auto ref ScriptString MenuString_AttackSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10284); }
	public @property final auto ref ScriptString MenuString_AttackReinforce() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10272); }
	public @property final auto ref ScriptString MenuString_AttackGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10260); }
	public @property final auto ref ScriptString MenuString_AttackFlag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10248); }
	public @property final auto ref ScriptString MenuString_AttackDisrupt() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10236); }
	public @property final auto ref ScriptString MenuString_AttackChase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10224); }
	public @property final auto ref ScriptString MenuString_AttackBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10212); }
	public @property final auto ref ScriptString MenuString_Attack() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10200); }
	public @property final auto ref ScriptString MenuString_GlobalTauntLearn() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10188); }
	public @property final auto ref ScriptString MenuString_GlobalTauntSarcasm() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10176); }
	public @property final auto ref ScriptString MenuString_GlobalTauntBrag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10164); }
	public @property final auto ref ScriptString MenuString_GlobalTauntObnoxious() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10152); }
	public @property final auto ref ScriptString MenuString_GlobalTauntAww() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10140); }
	public @property final auto ref ScriptString MenuString_GlobalRespondWait() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10128); }
	public @property final auto ref ScriptString MenuString_GlobalRespondThanks() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10116); }
	public @property final auto ref ScriptString MenuString_GlobalRespondDontKnow() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10104); }
	public @property final auto ref ScriptString MenuString_GlobalRespondAnyTime() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10092); }
	public @property final auto ref ScriptString MenuString_GlobalComplimentGreatShot() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10080); }
	public @property final auto ref ScriptString MenuString_GlobalComplimentYouRock() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10068); }
	public @property final auto ref ScriptString MenuString_GlobalComplimentNiceMove() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10056); }
	public @property final auto ref ScriptString MenuString_GlobalComplimentGoodGame() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10044); }
	public @property final auto ref ScriptString MenuString_GlobalComplimentAwesome() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10032); }
	public @property final auto ref ScriptString MenuString_GlobalWoohoo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10020); }
	public @property final auto ref ScriptString MenuString_GlobalShazbot() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10008); }
	public @property final auto ref ScriptString MenuString_GlobalQuiet() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9996); }
	public @property final auto ref ScriptString MenuString_GlobalOoops() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9984); }
	public @property final auto ref ScriptString MenuString_GlobalBye() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9972); }
	public @property final auto ref ScriptString MenuString_GlobalHi() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9960); }
	public @property final auto ref ScriptString MenuString_GlobalNo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9948); }
	public @property final auto ref ScriptString MenuString_GlobalYes() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9936); }
	public @property final auto ref ScriptString ChatString_TeamWait() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9924); }
	public @property final auto ref ScriptString ChatString_TeamThanks() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9912); }
	public @property final auto ref ScriptString ChatString_TeamSorry() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9900); }
	public @property final auto ref ScriptString ChatString_TeamMove() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9888); }
	public @property final auto ref ScriptString ChatString_TeamHelp() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9876); }
	public @property final auto ref ScriptString ChatString_TeamDontKnow() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9864); }
	public @property final auto ref ScriptString ChatString_TeamCeaseFire() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9852); }
	public @property final auto ref ScriptString ChatString_TeamBaseSecure() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9840); }
	public @property final auto ref ScriptString ChatString_TeamAnytime() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9828); }
	public @property final auto ref ScriptString ChatString_TeamNo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9816); }
	public @property final auto ref ScriptString ChatString_TeamYes() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9804); }
	public @property final auto ref ScriptString ChatString_WarnContext_ActorDeployable() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9792); }
	public @property final auto ref ScriptString ChatString_WarnContext_ActorVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9780); }
	public @property final auto ref ScriptString ChatString_WarnContext_ActorSensor() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9768); }
	public @property final auto ref ScriptString ChatString_WarnContext_ActorTurret() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9756); }
	public @property final auto ref ScriptString ChatString_WarnContext_ActorHeavyPawn() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9744); }
	public @property final auto ref ScriptString ChatString_WarnContext_ActorMediumPawn() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9732); }
	public @property final auto ref ScriptString ChatString_WarnContext_ActorLightPawn() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9720); }
	public @property final auto ref ScriptString ChatString_WarnContext_EnemyNearby() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9708); }
	public @property final auto ref ScriptString ChatString_WarnContext_EnemyNearEnemyVehiclePad() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9696); }
	public @property final auto ref ScriptString ChatString_WarnContext_EnemyNearOurVehiclePad() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9684); }
	public @property final auto ref ScriptString ChatString_WarnContext_EnemyNearEnemyBaseTurret() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9672); }
	public @property final auto ref ScriptString ChatString_WarnContext_EnemyNearOurBaseTurret() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9660); }
	public @property final auto ref ScriptString ChatString_WarnContext_EnemyNearEnemyFlag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9648); }
	public @property final auto ref ScriptString ChatString_WarnContext_EnemyNearOurFlag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9636); }
	public @property final auto ref ScriptString ChatString_WarnContext_EnemyNearEnemyGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9624); }
	public @property final auto ref ScriptString ChatString_WarnContext_EnemyNearOurGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9612); }
	public @property final auto ref ScriptString ChatString_WarnContext_EnemyInMidfield() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9600); }
	public @property final auto ref ScriptString ChatString_WarnContext_EnemyBehindEnemyBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9588); }
	public @property final auto ref ScriptString ChatString_WarnContext_EnemyBehindOurBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9576); }
	public @property final auto ref ScriptString ChatString_WarnContext_EnemyAroundEnemyBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9564); }
	public @property final auto ref ScriptString ChatString_WarnContext_EnemyAroundOurBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9552); }
	public @property final auto ref ScriptString ChatString_WarnContext_EnemyInsideEnemyBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9540); }
	public @property final auto ref ScriptString ChatString_WarnContext_EnemyInsideOurBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9528); }
	public @property final auto ref ScriptString ChatString_WarnVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9516); }
	public @property final auto ref ScriptString ChatString_WarnEnemies() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9504); }
	public @property final auto ref ScriptString ChatString_UpgradeTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9492); }
	public @property final auto ref ScriptString ChatString_UpgradeSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9480); }
	public @property final auto ref ScriptString ChatString_UpgradeGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9468); }
	public @property final auto ref ScriptString ChatString_TargetWait() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9456); }
	public @property final auto ref ScriptString ChatString_TargetVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9444); }
	public @property final auto ref ScriptString ChatString_TargetTurret() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9432); }
	public @property final auto ref ScriptString ChatString_TargetSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9420); }
	public @property final auto ref ScriptString ChatString_TargetNeed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9408); }
	public @property final auto ref ScriptString ChatString_TargetFireOnMy() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9396); }
	public @property final auto ref ScriptString ChatString_TargetFlag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9384); }
	public @property final auto ref ScriptString ChatString_TargetDestroyed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9372); }
	public @property final auto ref ScriptString ChatString_TargetBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9360); }
	public @property final auto ref ScriptString ChatString_TargetAcquired() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9348); }
	public @property final auto ref ScriptString ChatString_SelfUpgradeTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9336); }
	public @property final auto ref ScriptString ChatString_SelfUpgradeSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9324); }
	public @property final auto ref ScriptString ChatString_SelfUpgradeGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9312); }
	public @property final auto ref ScriptString ChatString_SelfTaskVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9300); }
	public @property final auto ref ScriptString ChatString_SelfTaskDeployTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9288); }
	public @property final auto ref ScriptString ChatString_SelfTaskDeploySensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9276); }
	public @property final auto ref ScriptString ChatString_SelfTaskOnIt() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9264); }
	public @property final auto ref ScriptString ChatString_SelfTaskForcefield() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9252); }
	public @property final auto ref ScriptString ChatString_SelfTaskDefenses() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9240); }
	public @property final auto ref ScriptString ChatString_SelfTaskCover() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9228); }
	public @property final auto ref ScriptString ChatString_SelfRepairVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9216); }
	public @property final auto ref ScriptString ChatString_SelfRepairTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9204); }
	public @property final auto ref ScriptString ChatString_SelfRepairSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9192); }
	public @property final auto ref ScriptString ChatString_SelfRepairGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9180); }
	public @property final auto ref ScriptString ChatString_SelfRepairBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9168); }
	public @property final auto ref ScriptString ChatString_SelfDefendPointE() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9156); }
	public @property final auto ref ScriptString ChatString_SelfDefendPointD() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9144); }
	public @property final auto ref ScriptString ChatString_SelfDefendPointC() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9132); }
	public @property final auto ref ScriptString ChatString_SelfDefendPointB() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9120); }
	public @property final auto ref ScriptString ChatString_SelfDefendPointA() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9108); }
	public @property final auto ref ScriptString ChatString_SelfDefendVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9096); }
	public @property final auto ref ScriptString ChatString_SelfDefendTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9084); }
	public @property final auto ref ScriptString ChatString_SelfDefendSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9072); }
	public @property final auto ref ScriptString ChatString_SelfDefendGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9060); }
	public @property final auto ref ScriptString ChatString_SelfDefendFlag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9048); }
	public @property final auto ref ScriptString ChatString_SelfDefend() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9036); }
	public @property final auto ref ScriptString ChatString_SelfDefendBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9024); }
	public @property final auto ref ScriptString ChatString_SelfAttackPointE() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9012); }
	public @property final auto ref ScriptString ChatString_SelfAttackPointD() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9000); }
	public @property final auto ref ScriptString ChatString_SelfAttackPointC() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8988); }
	public @property final auto ref ScriptString ChatString_SelfAttackPointB() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8976); }
	public @property final auto ref ScriptString ChatString_SelfAttackPointA() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8964); }
	public @property final auto ref ScriptString ChatString_SelfAttackVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8952); }
	public @property final auto ref ScriptString ChatString_SelfAttackTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8940); }
	public @property final auto ref ScriptString ChatString_SelfAttackSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8928); }
	public @property final auto ref ScriptString ChatString_SelfAttackGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8916); }
	public @property final auto ref ScriptString ChatString_SelfAttackFlag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8904); }
	public @property final auto ref ScriptString ChatString_SelfAttackBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8892); }
	public @property final auto ref ScriptString ChatString_SelfAttack() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8880); }
	public @property final auto ref ScriptString ChatString_NeedWhereTo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8868); }
	public @property final auto ref ScriptString ChatString_NeedVehicleReady() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8856); }
	public @property final auto ref ScriptString ChatString_NeedSupport() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8844); }
	public @property final auto ref ScriptString ChatString_NeedRide() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8832); }
	public @property final auto ref ScriptString ChatString_NeedHoldVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8820); }
	public @property final auto ref ScriptString ChatString_NeedEscort() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8808); }
	public @property final auto ref ScriptString ChatString_NeedDriver() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8796); }
	public @property final auto ref ScriptString ChatString_NeedCover() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8784); }
	public @property final auto ref ScriptString ChatString_FlagTake() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8772); }
	public @property final auto ref ScriptString ChatString_FlagSecure() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8760); }
	public @property final auto ref ScriptString ChatString_FlagSelfRetrieve() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8748); }
	public @property final auto ref ScriptString ChatString_FlagRetrieve() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8736); }
	public @property final auto ref ScriptString ChatString_FlagGiveMe() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8724); }
	public @property final auto ref ScriptString ChatString_FlagIHave() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8712); }
	public @property final auto ref ScriptString ChatString_FlagDefend() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8700); }
	public @property final auto ref ScriptString ChatString_EnemyVehicleDestroyed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8688); }
	public @property final auto ref ScriptString ChatString_EnemyTurretsDestroyed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8676); }
	public @property final auto ref ScriptString ChatString_EnemySensorsDestroyed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8664); }
	public @property final auto ref ScriptString ChatString_EnemyGeneratorDestroyed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8652); }
	public @property final auto ref ScriptString ChatString_EnemyDisarray() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8640); }
	public @property final auto ref ScriptString ChatString_CommandAssignment() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8628); }
	public @property final auto ref ScriptString ChatString_CommandDeclined() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8616); }
	public @property final auto ref ScriptString ChatString_CommandCompleted() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8604); }
	public @property final auto ref ScriptString ChatString_CommandAcknowledged() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8592); }
	public @property final auto ref ScriptString ChatString_BaseSecure() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8580); }
	public @property final auto ref ScriptString ChatString_BaseRetake() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8568); }
	public @property final auto ref ScriptString ChatString_EnemyInBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8556); }
	public @property final auto ref ScriptString ChatString_BaseClear() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8544); }
	public @property final auto ref ScriptString ChatString_RepairVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8532); }
	public @property final auto ref ScriptString ChatString_RepairTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8520); }
	public @property final auto ref ScriptString ChatString_RepairSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8508); }
	public @property final auto ref ScriptString ChatString_RepairGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8496); }
	public @property final auto ref ScriptString ChatString_DefendPointE() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8484); }
	public @property final auto ref ScriptString ChatString_DefendPointD() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8472); }
	public @property final auto ref ScriptString ChatString_DefendPointC() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8460); }
	public @property final auto ref ScriptString ChatString_DefendPointB() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8448); }
	public @property final auto ref ScriptString ChatString_DefendPointA() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8436); }
	public @property final auto ref ScriptString ChatString_DefendVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8424); }
	public @property final auto ref ScriptString ChatString_DefendTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8412); }
	public @property final auto ref ScriptString ChatString_DefendSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8400); }
	public @property final auto ref ScriptString ChatString_DefendReinforce() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8388); }
	public @property final auto ref ScriptString ChatString_DefendMe() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8376); }
	public @property final auto ref ScriptString ChatString_DefendGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8364); }
	public @property final auto ref ScriptString ChatString_DefendFlag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8352); }
	public @property final auto ref ScriptString ChatString_DefendEntrances() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8340); }
	public @property final auto ref ScriptString ChatString_DefendFlagCarrier() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8328); }
	public @property final auto ref ScriptString ChatString_DefendBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8316); }
	public @property final auto ref ScriptString ChatString_AttackPointE() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8304); }
	public @property final auto ref ScriptString ChatString_AttackPointD() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8292); }
	public @property final auto ref ScriptString ChatString_AttackPointC() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8280); }
	public @property final auto ref ScriptString ChatString_AttackPointB() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8268); }
	public @property final auto ref ScriptString ChatString_AttackPointA() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8256); }
	public @property final auto ref ScriptString ChatString_AttackWait() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8244); }
	public @property final auto ref ScriptString ChatString_AttackVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8232); }
	public @property final auto ref ScriptString ChatString_AttackTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8220); }
	public @property final auto ref ScriptString ChatString_AttackSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8208); }
	public @property final auto ref ScriptString ChatString_AttackReinforce() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8196); }
	public @property final auto ref ScriptString ChatString_AttackGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8184); }
	public @property final auto ref ScriptString ChatString_AttackFlag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8172); }
	public @property final auto ref ScriptString ChatString_AttackDisrupt() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8160); }
	public @property final auto ref ScriptString ChatString_AttackChase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8148); }
	public @property final auto ref ScriptString ChatString_AttackBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8136); }
	public @property final auto ref ScriptString ChatString_Attack() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8124); }
	public @property final auto ref ScriptString ChatString_GlobalTauntLearn() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8112); }
	public @property final auto ref ScriptString ChatString_GlobalTauntSarcasm() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8100); }
	public @property final auto ref ScriptString ChatString_GlobalTauntBrag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8088); }
	public @property final auto ref ScriptString ChatString_GlobalTauntObnoxious() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8076); }
	public @property final auto ref ScriptString ChatString_GlobalTauntAww() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8064); }
	public @property final auto ref ScriptString ChatString_GlobalRespondWait() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8052); }
	public @property final auto ref ScriptString ChatString_GlobalRespondThanks() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8040); }
	public @property final auto ref ScriptString ChatString_GlobalRespondDontKnow() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8028); }
	public @property final auto ref ScriptString ChatString_GlobalRespondAnyTime() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8016); }
	public @property final auto ref ScriptString ChatString_GlobalComplimentGreatShot() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8004); }
	public @property final auto ref ScriptString ChatString_GlobalComplimentYouRock() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 7992); }
	public @property final auto ref ScriptString ChatString_GlobalComplimentNiceMove() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 7980); }
	public @property final auto ref ScriptString ChatString_GlobalComplimentGoodGame() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 7968); }
	public @property final auto ref ScriptString ChatString_GlobalComplimentAwesome() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 7956); }
	public @property final auto ref ScriptString ChatString_GlobalWoohoo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 7944); }
	public @property final auto ref ScriptString ChatString_GlobalShazbot() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 7932); }
	public @property final auto ref ScriptString ChatString_GlobalQuiet() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 7920); }
	public @property final auto ref ScriptString ChatString_GlobalOoops() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 7908); }
	public @property final auto ref ScriptString ChatString_GlobalBye() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 7896); }
	public @property final auto ref ScriptString ChatString_GlobalHi() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 7884); }
	public @property final auto ref ScriptString ChatString_GlobalNo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 7872); }
	public @property final auto ref ScriptString ChatString_GlobalYes() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 7860); }
	public @property final auto ref TrVGSCommandList.TrVGSCommand m_CommandList() { return *cast(TrVGSCommandList.TrVGSCommand*)(cast(size_t)cast(void*)this + 60); }
	final void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[51398], cast(void*)0, cast(void*)0);
	}
	final ScriptString GetContextLocationString(TrVGSCommandList.EVGSContextLocation Loc, bool bEnemyLocation)
	{
		ubyte params[17];
		params[] = 0;
		*cast(TrVGSCommandList.EVGSContextLocation*)params.ptr = Loc;
		*cast(bool*)&params[4] = bEnemyLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[51399], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
}
