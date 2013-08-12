module UnrealScript.TribesGame.TrVGSCommandList;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrVGSCommandList : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVGSCommandList")); }
	private static __gshared TrVGSCommandList mDefaultProperties;
	@property final static TrVGSCommandList DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVGSCommandList)("TrVGSCommandList TribesGame.Default__TrVGSCommandList")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInit;
			ScriptFunction mGetContextLocationString;
		}
		public @property static final
		{
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVGSCommandList.Init")); }
			ScriptFunction GetContextLocationString() { return mGetContextLocationString ? mGetContextLocationString : (mGetContextLocationString = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVGSCommandList.GetContextLocationString")); }
		}
	}
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
		private ubyte __buffer__[52];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrVGSCommandList.TrVGSCommand")); }
		@property final
		{
			auto ref
			{
				ScriptString MenuString() { return *cast(ScriptString*)(cast(size_t)&this + 36); }
				ScriptString ChatString() { return *cast(ScriptString*)(cast(size_t)&this + 24); }
				ScriptString KeyBindPath() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
				// WARNING: Property 'KeyBind' has the same name as a defined type!
				TrVGSCommandList.EVGSScope VGSScope() { return *cast(TrVGSCommandList.EVGSScope*)(cast(size_t)&this + 0); }
			}
			bool bIsContext() { return (*cast(uint*)(cast(size_t)&this + 48) & 0x1) != 0; }
			bool bIsContext(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 48) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 48) &= ~0x1; } return val; }
		}
	}
	@property final auto ref
	{
		ScriptString MenuString_TeamWait() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11724); }
		ScriptString MenuString_TeamThanks() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11712); }
		ScriptString MenuString_TeamSorry() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11700); }
		ScriptString MenuString_TeamMove() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11688); }
		ScriptString MenuString_TeamHelp() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11676); }
		ScriptString MenuString_TeamDontKnow() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11664); }
		ScriptString MenuString_TeamCeaseFire() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11652); }
		ScriptString MenuString_TeamBaseSecure() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11640); }
		ScriptString MenuString_TeamAnytime() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11628); }
		ScriptString MenuString_TeamNo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11616); }
		ScriptString MenuString_TeamYes() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11604); }
		ScriptString MenuString_WarnVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11592); }
		ScriptString MenuString_WarnEnemies() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11580); }
		ScriptString MenuString_UpgradeTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11568); }
		ScriptString MenuString_UpgradeSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11556); }
		ScriptString MenuString_UpgradeGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11544); }
		ScriptString MenuString_TargetWait() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11532); }
		ScriptString MenuString_TargetVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11520); }
		ScriptString MenuString_TargetTurret() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11508); }
		ScriptString MenuString_TargetSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11496); }
		ScriptString MenuString_TargetNeed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11484); }
		ScriptString MenuString_TargetFireOnMy() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11472); }
		ScriptString MenuString_TargetFlag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11460); }
		ScriptString MenuString_TargetDestroyed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11448); }
		ScriptString MenuString_TargetBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11436); }
		ScriptString MenuString_TargetAcquired() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11424); }
		ScriptString MenuString_SelfUpgradeTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11412); }
		ScriptString MenuString_SelfUpgradeSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11400); }
		ScriptString MenuString_SelfUpgradeGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11388); }
		ScriptString MenuString_SelfTaskVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11376); }
		ScriptString MenuString_SelfTaskDeployTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11364); }
		ScriptString MenuString_SelfTaskDeploySensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11352); }
		ScriptString MenuString_SelfTaskOnIt() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11340); }
		ScriptString MenuString_SelfTaskForcefield() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11328); }
		ScriptString MenuString_SelfTaskDefenses() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11316); }
		ScriptString MenuString_SelfTaskCover() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11304); }
		ScriptString MenuString_SelfRepairVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11292); }
		ScriptString MenuString_SelfRepairTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11280); }
		ScriptString MenuString_SelfRepairSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11268); }
		ScriptString MenuString_SelfRepairGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11256); }
		ScriptString MenuString_SelfRepairBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11244); }
		ScriptString MenuString_SelfDefendPointE() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11232); }
		ScriptString MenuString_SelfDefendPointD() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11220); }
		ScriptString MenuString_SelfDefendPointC() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11208); }
		ScriptString MenuString_SelfDefendPointB() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11196); }
		ScriptString MenuString_SelfDefendPointA() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11184); }
		ScriptString MenuString_SelfDefendVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11172); }
		ScriptString MenuString_SelfDefendTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11160); }
		ScriptString MenuString_SelfDefendSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11148); }
		ScriptString MenuString_SelfDefendGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11136); }
		ScriptString MenuString_SelfDefendFlag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11124); }
		ScriptString MenuString_SelfDefend() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11112); }
		ScriptString MenuString_SelfDefendBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11100); }
		ScriptString MenuString_SelfAttackPointE() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11088); }
		ScriptString MenuString_SelfAttackPointD() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11076); }
		ScriptString MenuString_SelfAttackPointC() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11064); }
		ScriptString MenuString_SelfAttackPointB() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11052); }
		ScriptString MenuString_SelfAttackPointA() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11040); }
		ScriptString MenuString_SelfAttackVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11028); }
		ScriptString MenuString_SelfAttackTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11016); }
		ScriptString MenuString_SelfAttackSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 11004); }
		ScriptString MenuString_SelfAttackGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10992); }
		ScriptString MenuString_SelfAttackFlag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10980); }
		ScriptString MenuString_SelfAttackBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10968); }
		ScriptString MenuString_SelfAttack() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10956); }
		ScriptString MenuString_NeedWhereTo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10944); }
		ScriptString MenuString_NeedVehicleReady() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10932); }
		ScriptString MenuString_NeedSupport() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10920); }
		ScriptString MenuString_NeedRide() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10908); }
		ScriptString MenuString_NeedHoldVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10896); }
		ScriptString MenuString_NeedEscort() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10884); }
		ScriptString MenuString_NeedDriver() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10872); }
		ScriptString MenuString_NeedCover() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10860); }
		ScriptString MenuString_FlagTake() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10848); }
		ScriptString MenuString_FlagSecure() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10836); }
		ScriptString MenuString_FlagSelfRetrieve() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10824); }
		ScriptString MenuString_FlagRetrieve() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10812); }
		ScriptString MenuString_FlagGiveMe() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10800); }
		ScriptString MenuString_FlagIHave() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10788); }
		ScriptString MenuString_FlagDefend() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10776); }
		ScriptString MenuString_EnemyVehicleDestroyed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10764); }
		ScriptString MenuString_EnemyTurretsDestroyed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10752); }
		ScriptString MenuString_EnemySensorsDestroyed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10740); }
		ScriptString MenuString_EnemyGeneratorDestroyed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10728); }
		ScriptString MenuString_EnemyDisarray() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10716); }
		ScriptString MenuString_CommandAssignment() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10704); }
		ScriptString MenuString_CommandDeclined() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10692); }
		ScriptString MenuString_CommandCompleted() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10680); }
		ScriptString MenuString_CommandAcknowledged() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10668); }
		ScriptString MenuString_BaseSecure() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10656); }
		ScriptString MenuString_BaseRetake() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10644); }
		ScriptString MenuString_EnemyInBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10632); }
		ScriptString MenuString_BaseClear() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10620); }
		ScriptString MenuString_RepairVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10608); }
		ScriptString MenuString_RepairTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10596); }
		ScriptString MenuString_RepairSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10584); }
		ScriptString MenuString_RepairGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10572); }
		ScriptString MenuString_DefendPointE() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10560); }
		ScriptString MenuString_DefendPointD() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10548); }
		ScriptString MenuString_DefendPointC() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10536); }
		ScriptString MenuString_DefendPointB() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10524); }
		ScriptString MenuString_DefendPointA() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10512); }
		ScriptString MenuString_DefendVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10500); }
		ScriptString MenuString_DefendTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10488); }
		ScriptString MenuString_DefendSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10476); }
		ScriptString MenuString_DefendReinforce() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10464); }
		ScriptString MenuString_DefendMe() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10452); }
		ScriptString MenuString_DefendGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10440); }
		ScriptString MenuString_DefendFlag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10428); }
		ScriptString MenuString_DefendEntrances() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10416); }
		ScriptString MenuString_DefendFlagCarrier() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10404); }
		ScriptString MenuString_DefendBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10392); }
		ScriptString MenuString_AttackPointE() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10380); }
		ScriptString MenuString_AttackPointD() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10368); }
		ScriptString MenuString_AttackPointC() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10356); }
		ScriptString MenuString_AttackPointB() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10344); }
		ScriptString MenuString_AttackPointA() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10332); }
		ScriptString MenuString_AttackWait() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10320); }
		ScriptString MenuString_AttackVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10308); }
		ScriptString MenuString_AttackTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10296); }
		ScriptString MenuString_AttackSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10284); }
		ScriptString MenuString_AttackReinforce() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10272); }
		ScriptString MenuString_AttackGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10260); }
		ScriptString MenuString_AttackFlag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10248); }
		ScriptString MenuString_AttackDisrupt() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10236); }
		ScriptString MenuString_AttackChase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10224); }
		ScriptString MenuString_AttackBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10212); }
		ScriptString MenuString_Attack() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10200); }
		ScriptString MenuString_GlobalTauntLearn() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10188); }
		ScriptString MenuString_GlobalTauntSarcasm() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10176); }
		ScriptString MenuString_GlobalTauntBrag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10164); }
		ScriptString MenuString_GlobalTauntObnoxious() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10152); }
		ScriptString MenuString_GlobalTauntAww() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10140); }
		ScriptString MenuString_GlobalRespondWait() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10128); }
		ScriptString MenuString_GlobalRespondThanks() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10116); }
		ScriptString MenuString_GlobalRespondDontKnow() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10104); }
		ScriptString MenuString_GlobalRespondAnyTime() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10092); }
		ScriptString MenuString_GlobalComplimentGreatShot() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10080); }
		ScriptString MenuString_GlobalComplimentYouRock() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10068); }
		ScriptString MenuString_GlobalComplimentNiceMove() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10056); }
		ScriptString MenuString_GlobalComplimentGoodGame() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10044); }
		ScriptString MenuString_GlobalComplimentAwesome() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10032); }
		ScriptString MenuString_GlobalWoohoo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10020); }
		ScriptString MenuString_GlobalShazbot() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 10008); }
		ScriptString MenuString_GlobalQuiet() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9996); }
		ScriptString MenuString_GlobalOoops() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9984); }
		ScriptString MenuString_GlobalBye() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9972); }
		ScriptString MenuString_GlobalHi() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9960); }
		ScriptString MenuString_GlobalNo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9948); }
		ScriptString MenuString_GlobalYes() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9936); }
		ScriptString ChatString_TeamWait() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9924); }
		ScriptString ChatString_TeamThanks() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9912); }
		ScriptString ChatString_TeamSorry() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9900); }
		ScriptString ChatString_TeamMove() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9888); }
		ScriptString ChatString_TeamHelp() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9876); }
		ScriptString ChatString_TeamDontKnow() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9864); }
		ScriptString ChatString_TeamCeaseFire() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9852); }
		ScriptString ChatString_TeamBaseSecure() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9840); }
		ScriptString ChatString_TeamAnytime() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9828); }
		ScriptString ChatString_TeamNo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9816); }
		ScriptString ChatString_TeamYes() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9804); }
		ScriptString ChatString_WarnContext_ActorDeployable() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9792); }
		ScriptString ChatString_WarnContext_ActorVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9780); }
		ScriptString ChatString_WarnContext_ActorSensor() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9768); }
		ScriptString ChatString_WarnContext_ActorTurret() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9756); }
		ScriptString ChatString_WarnContext_ActorHeavyPawn() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9744); }
		ScriptString ChatString_WarnContext_ActorMediumPawn() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9732); }
		ScriptString ChatString_WarnContext_ActorLightPawn() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9720); }
		ScriptString ChatString_WarnContext_EnemyNearby() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9708); }
		ScriptString ChatString_WarnContext_EnemyNearEnemyVehiclePad() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9696); }
		ScriptString ChatString_WarnContext_EnemyNearOurVehiclePad() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9684); }
		ScriptString ChatString_WarnContext_EnemyNearEnemyBaseTurret() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9672); }
		ScriptString ChatString_WarnContext_EnemyNearOurBaseTurret() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9660); }
		ScriptString ChatString_WarnContext_EnemyNearEnemyFlag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9648); }
		ScriptString ChatString_WarnContext_EnemyNearOurFlag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9636); }
		ScriptString ChatString_WarnContext_EnemyNearEnemyGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9624); }
		ScriptString ChatString_WarnContext_EnemyNearOurGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9612); }
		ScriptString ChatString_WarnContext_EnemyInMidfield() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9600); }
		ScriptString ChatString_WarnContext_EnemyBehindEnemyBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9588); }
		ScriptString ChatString_WarnContext_EnemyBehindOurBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9576); }
		ScriptString ChatString_WarnContext_EnemyAroundEnemyBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9564); }
		ScriptString ChatString_WarnContext_EnemyAroundOurBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9552); }
		ScriptString ChatString_WarnContext_EnemyInsideEnemyBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9540); }
		ScriptString ChatString_WarnContext_EnemyInsideOurBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9528); }
		ScriptString ChatString_WarnVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9516); }
		ScriptString ChatString_WarnEnemies() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9504); }
		ScriptString ChatString_UpgradeTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9492); }
		ScriptString ChatString_UpgradeSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9480); }
		ScriptString ChatString_UpgradeGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9468); }
		ScriptString ChatString_TargetWait() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9456); }
		ScriptString ChatString_TargetVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9444); }
		ScriptString ChatString_TargetTurret() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9432); }
		ScriptString ChatString_TargetSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9420); }
		ScriptString ChatString_TargetNeed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9408); }
		ScriptString ChatString_TargetFireOnMy() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9396); }
		ScriptString ChatString_TargetFlag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9384); }
		ScriptString ChatString_TargetDestroyed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9372); }
		ScriptString ChatString_TargetBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9360); }
		ScriptString ChatString_TargetAcquired() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9348); }
		ScriptString ChatString_SelfUpgradeTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9336); }
		ScriptString ChatString_SelfUpgradeSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9324); }
		ScriptString ChatString_SelfUpgradeGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9312); }
		ScriptString ChatString_SelfTaskVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9300); }
		ScriptString ChatString_SelfTaskDeployTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9288); }
		ScriptString ChatString_SelfTaskDeploySensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9276); }
		ScriptString ChatString_SelfTaskOnIt() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9264); }
		ScriptString ChatString_SelfTaskForcefield() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9252); }
		ScriptString ChatString_SelfTaskDefenses() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9240); }
		ScriptString ChatString_SelfTaskCover() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9228); }
		ScriptString ChatString_SelfRepairVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9216); }
		ScriptString ChatString_SelfRepairTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9204); }
		ScriptString ChatString_SelfRepairSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9192); }
		ScriptString ChatString_SelfRepairGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9180); }
		ScriptString ChatString_SelfRepairBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9168); }
		ScriptString ChatString_SelfDefendPointE() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9156); }
		ScriptString ChatString_SelfDefendPointD() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9144); }
		ScriptString ChatString_SelfDefendPointC() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9132); }
		ScriptString ChatString_SelfDefendPointB() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9120); }
		ScriptString ChatString_SelfDefendPointA() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9108); }
		ScriptString ChatString_SelfDefendVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9096); }
		ScriptString ChatString_SelfDefendTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9084); }
		ScriptString ChatString_SelfDefendSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9072); }
		ScriptString ChatString_SelfDefendGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9060); }
		ScriptString ChatString_SelfDefendFlag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9048); }
		ScriptString ChatString_SelfDefend() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9036); }
		ScriptString ChatString_SelfDefendBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9024); }
		ScriptString ChatString_SelfAttackPointE() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9012); }
		ScriptString ChatString_SelfAttackPointD() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 9000); }
		ScriptString ChatString_SelfAttackPointC() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8988); }
		ScriptString ChatString_SelfAttackPointB() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8976); }
		ScriptString ChatString_SelfAttackPointA() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8964); }
		ScriptString ChatString_SelfAttackVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8952); }
		ScriptString ChatString_SelfAttackTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8940); }
		ScriptString ChatString_SelfAttackSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8928); }
		ScriptString ChatString_SelfAttackGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8916); }
		ScriptString ChatString_SelfAttackFlag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8904); }
		ScriptString ChatString_SelfAttackBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8892); }
		ScriptString ChatString_SelfAttack() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8880); }
		ScriptString ChatString_NeedWhereTo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8868); }
		ScriptString ChatString_NeedVehicleReady() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8856); }
		ScriptString ChatString_NeedSupport() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8844); }
		ScriptString ChatString_NeedRide() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8832); }
		ScriptString ChatString_NeedHoldVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8820); }
		ScriptString ChatString_NeedEscort() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8808); }
		ScriptString ChatString_NeedDriver() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8796); }
		ScriptString ChatString_NeedCover() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8784); }
		ScriptString ChatString_FlagTake() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8772); }
		ScriptString ChatString_FlagSecure() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8760); }
		ScriptString ChatString_FlagSelfRetrieve() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8748); }
		ScriptString ChatString_FlagRetrieve() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8736); }
		ScriptString ChatString_FlagGiveMe() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8724); }
		ScriptString ChatString_FlagIHave() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8712); }
		ScriptString ChatString_FlagDefend() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8700); }
		ScriptString ChatString_EnemyVehicleDestroyed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8688); }
		ScriptString ChatString_EnemyTurretsDestroyed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8676); }
		ScriptString ChatString_EnemySensorsDestroyed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8664); }
		ScriptString ChatString_EnemyGeneratorDestroyed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8652); }
		ScriptString ChatString_EnemyDisarray() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8640); }
		ScriptString ChatString_CommandAssignment() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8628); }
		ScriptString ChatString_CommandDeclined() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8616); }
		ScriptString ChatString_CommandCompleted() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8604); }
		ScriptString ChatString_CommandAcknowledged() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8592); }
		ScriptString ChatString_BaseSecure() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8580); }
		ScriptString ChatString_BaseRetake() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8568); }
		ScriptString ChatString_EnemyInBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8556); }
		ScriptString ChatString_BaseClear() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8544); }
		ScriptString ChatString_RepairVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8532); }
		ScriptString ChatString_RepairTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8520); }
		ScriptString ChatString_RepairSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8508); }
		ScriptString ChatString_RepairGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8496); }
		ScriptString ChatString_DefendPointE() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8484); }
		ScriptString ChatString_DefendPointD() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8472); }
		ScriptString ChatString_DefendPointC() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8460); }
		ScriptString ChatString_DefendPointB() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8448); }
		ScriptString ChatString_DefendPointA() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8436); }
		ScriptString ChatString_DefendVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8424); }
		ScriptString ChatString_DefendTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8412); }
		ScriptString ChatString_DefendSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8400); }
		ScriptString ChatString_DefendReinforce() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8388); }
		ScriptString ChatString_DefendMe() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8376); }
		ScriptString ChatString_DefendGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8364); }
		ScriptString ChatString_DefendFlag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8352); }
		ScriptString ChatString_DefendEntrances() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8340); }
		ScriptString ChatString_DefendFlagCarrier() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8328); }
		ScriptString ChatString_DefendBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8316); }
		ScriptString ChatString_AttackPointE() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8304); }
		ScriptString ChatString_AttackPointD() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8292); }
		ScriptString ChatString_AttackPointC() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8280); }
		ScriptString ChatString_AttackPointB() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8268); }
		ScriptString ChatString_AttackPointA() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8256); }
		ScriptString ChatString_AttackWait() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8244); }
		ScriptString ChatString_AttackVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8232); }
		ScriptString ChatString_AttackTurrets() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8220); }
		ScriptString ChatString_AttackSensors() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8208); }
		ScriptString ChatString_AttackReinforce() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8196); }
		ScriptString ChatString_AttackGenerator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8184); }
		ScriptString ChatString_AttackFlag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8172); }
		ScriptString ChatString_AttackDisrupt() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8160); }
		ScriptString ChatString_AttackChase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8148); }
		ScriptString ChatString_AttackBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8136); }
		ScriptString ChatString_Attack() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8124); }
		ScriptString ChatString_GlobalTauntLearn() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8112); }
		ScriptString ChatString_GlobalTauntSarcasm() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8100); }
		ScriptString ChatString_GlobalTauntBrag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8088); }
		ScriptString ChatString_GlobalTauntObnoxious() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8076); }
		ScriptString ChatString_GlobalTauntAww() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8064); }
		ScriptString ChatString_GlobalRespondWait() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8052); }
		ScriptString ChatString_GlobalRespondThanks() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8040); }
		ScriptString ChatString_GlobalRespondDontKnow() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8028); }
		ScriptString ChatString_GlobalRespondAnyTime() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8016); }
		ScriptString ChatString_GlobalComplimentGreatShot() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 8004); }
		ScriptString ChatString_GlobalComplimentYouRock() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 7992); }
		ScriptString ChatString_GlobalComplimentNiceMove() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 7980); }
		ScriptString ChatString_GlobalComplimentGoodGame() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 7968); }
		ScriptString ChatString_GlobalComplimentAwesome() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 7956); }
		ScriptString ChatString_GlobalWoohoo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 7944); }
		ScriptString ChatString_GlobalShazbot() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 7932); }
		ScriptString ChatString_GlobalQuiet() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 7920); }
		ScriptString ChatString_GlobalOoops() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 7908); }
		ScriptString ChatString_GlobalBye() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 7896); }
		ScriptString ChatString_GlobalHi() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 7884); }
		ScriptString ChatString_GlobalNo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 7872); }
		ScriptString ChatString_GlobalYes() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 7860); }
		TrVGSCommandList.TrVGSCommand m_CommandList() { return *cast(TrVGSCommandList.TrVGSCommand*)(cast(size_t)cast(void*)this + 60); }
	}
final:
	void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, cast(void*)0, cast(void*)0);
	}
	ScriptString GetContextLocationString(TrVGSCommandList.EVGSContextLocation Loc, bool bEnemyLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(TrVGSCommandList.EVGSContextLocation*)params.ptr = Loc;
		*cast(bool*)&params[4] = bEnemyLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetContextLocationString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
}
