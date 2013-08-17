module UnrealScript.TribesGame.TrVGSCommandList;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface TrVGSCommandList : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVGSCommandList")()); }
	private static __gshared TrVGSCommandList mDefaultProperties;
	@property final static TrVGSCommandList DefaultProperties() { mixin(MGDPC!(TrVGSCommandList, "TrVGSCommandList TribesGame.Default__TrVGSCommandList")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInit;
			ScriptFunction mGetContextLocationString;
		}
		public @property static final
		{
			ScriptFunction Init() { mixin(MGF!("mInit", "Function TribesGame.TrVGSCommandList.Init")()); }
			ScriptFunction GetContextLocationString() { mixin(MGF!("mGetContextLocationString", "Function TribesGame.TrVGSCommandList.GetContextLocationString")()); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrVGSCommandList.TrVGSCommand")()); }
		@property final
		{
			auto ref
			{
				ScriptString MenuString() { mixin(MGPS!("ScriptString", 36)()); }
				ScriptString ChatString() { mixin(MGPS!("ScriptString", 24)()); }
				ScriptString KeyBindPath() { mixin(MGPS!("ScriptString", 12)()); }
				// WARNING: Property 'KeyBind' has the same name as a defined type!
				TrVGSCommandList.EVGSScope VGSScope() { mixin(MGPS!("TrVGSCommandList.EVGSScope", 0)()); }
			}
			bool bIsContext() { mixin(MGBPS!(48, 0x1)()); }
			bool bIsContext(bool val) { mixin(MSBPS!(48, 0x1)()); }
		}
	}
	@property final auto ref
	{
		ScriptString MenuString_TeamWait() { mixin(MGPC!("ScriptString", 11724)()); }
		ScriptString MenuString_TeamThanks() { mixin(MGPC!("ScriptString", 11712)()); }
		ScriptString MenuString_TeamSorry() { mixin(MGPC!("ScriptString", 11700)()); }
		ScriptString MenuString_TeamMove() { mixin(MGPC!("ScriptString", 11688)()); }
		ScriptString MenuString_TeamHelp() { mixin(MGPC!("ScriptString", 11676)()); }
		ScriptString MenuString_TeamDontKnow() { mixin(MGPC!("ScriptString", 11664)()); }
		ScriptString MenuString_TeamCeaseFire() { mixin(MGPC!("ScriptString", 11652)()); }
		ScriptString MenuString_TeamBaseSecure() { mixin(MGPC!("ScriptString", 11640)()); }
		ScriptString MenuString_TeamAnytime() { mixin(MGPC!("ScriptString", 11628)()); }
		ScriptString MenuString_TeamNo() { mixin(MGPC!("ScriptString", 11616)()); }
		ScriptString MenuString_TeamYes() { mixin(MGPC!("ScriptString", 11604)()); }
		ScriptString MenuString_WarnVehicle() { mixin(MGPC!("ScriptString", 11592)()); }
		ScriptString MenuString_WarnEnemies() { mixin(MGPC!("ScriptString", 11580)()); }
		ScriptString MenuString_UpgradeTurrets() { mixin(MGPC!("ScriptString", 11568)()); }
		ScriptString MenuString_UpgradeSensors() { mixin(MGPC!("ScriptString", 11556)()); }
		ScriptString MenuString_UpgradeGenerator() { mixin(MGPC!("ScriptString", 11544)()); }
		ScriptString MenuString_TargetWait() { mixin(MGPC!("ScriptString", 11532)()); }
		ScriptString MenuString_TargetVehicle() { mixin(MGPC!("ScriptString", 11520)()); }
		ScriptString MenuString_TargetTurret() { mixin(MGPC!("ScriptString", 11508)()); }
		ScriptString MenuString_TargetSensors() { mixin(MGPC!("ScriptString", 11496)()); }
		ScriptString MenuString_TargetNeed() { mixin(MGPC!("ScriptString", 11484)()); }
		ScriptString MenuString_TargetFireOnMy() { mixin(MGPC!("ScriptString", 11472)()); }
		ScriptString MenuString_TargetFlag() { mixin(MGPC!("ScriptString", 11460)()); }
		ScriptString MenuString_TargetDestroyed() { mixin(MGPC!("ScriptString", 11448)()); }
		ScriptString MenuString_TargetBase() { mixin(MGPC!("ScriptString", 11436)()); }
		ScriptString MenuString_TargetAcquired() { mixin(MGPC!("ScriptString", 11424)()); }
		ScriptString MenuString_SelfUpgradeTurrets() { mixin(MGPC!("ScriptString", 11412)()); }
		ScriptString MenuString_SelfUpgradeSensors() { mixin(MGPC!("ScriptString", 11400)()); }
		ScriptString MenuString_SelfUpgradeGenerator() { mixin(MGPC!("ScriptString", 11388)()); }
		ScriptString MenuString_SelfTaskVehicle() { mixin(MGPC!("ScriptString", 11376)()); }
		ScriptString MenuString_SelfTaskDeployTurrets() { mixin(MGPC!("ScriptString", 11364)()); }
		ScriptString MenuString_SelfTaskDeploySensors() { mixin(MGPC!("ScriptString", 11352)()); }
		ScriptString MenuString_SelfTaskOnIt() { mixin(MGPC!("ScriptString", 11340)()); }
		ScriptString MenuString_SelfTaskForcefield() { mixin(MGPC!("ScriptString", 11328)()); }
		ScriptString MenuString_SelfTaskDefenses() { mixin(MGPC!("ScriptString", 11316)()); }
		ScriptString MenuString_SelfTaskCover() { mixin(MGPC!("ScriptString", 11304)()); }
		ScriptString MenuString_SelfRepairVehicle() { mixin(MGPC!("ScriptString", 11292)()); }
		ScriptString MenuString_SelfRepairTurrets() { mixin(MGPC!("ScriptString", 11280)()); }
		ScriptString MenuString_SelfRepairSensors() { mixin(MGPC!("ScriptString", 11268)()); }
		ScriptString MenuString_SelfRepairGenerator() { mixin(MGPC!("ScriptString", 11256)()); }
		ScriptString MenuString_SelfRepairBase() { mixin(MGPC!("ScriptString", 11244)()); }
		ScriptString MenuString_SelfDefendPointE() { mixin(MGPC!("ScriptString", 11232)()); }
		ScriptString MenuString_SelfDefendPointD() { mixin(MGPC!("ScriptString", 11220)()); }
		ScriptString MenuString_SelfDefendPointC() { mixin(MGPC!("ScriptString", 11208)()); }
		ScriptString MenuString_SelfDefendPointB() { mixin(MGPC!("ScriptString", 11196)()); }
		ScriptString MenuString_SelfDefendPointA() { mixin(MGPC!("ScriptString", 11184)()); }
		ScriptString MenuString_SelfDefendVehicle() { mixin(MGPC!("ScriptString", 11172)()); }
		ScriptString MenuString_SelfDefendTurrets() { mixin(MGPC!("ScriptString", 11160)()); }
		ScriptString MenuString_SelfDefendSensors() { mixin(MGPC!("ScriptString", 11148)()); }
		ScriptString MenuString_SelfDefendGenerator() { mixin(MGPC!("ScriptString", 11136)()); }
		ScriptString MenuString_SelfDefendFlag() { mixin(MGPC!("ScriptString", 11124)()); }
		ScriptString MenuString_SelfDefend() { mixin(MGPC!("ScriptString", 11112)()); }
		ScriptString MenuString_SelfDefendBase() { mixin(MGPC!("ScriptString", 11100)()); }
		ScriptString MenuString_SelfAttackPointE() { mixin(MGPC!("ScriptString", 11088)()); }
		ScriptString MenuString_SelfAttackPointD() { mixin(MGPC!("ScriptString", 11076)()); }
		ScriptString MenuString_SelfAttackPointC() { mixin(MGPC!("ScriptString", 11064)()); }
		ScriptString MenuString_SelfAttackPointB() { mixin(MGPC!("ScriptString", 11052)()); }
		ScriptString MenuString_SelfAttackPointA() { mixin(MGPC!("ScriptString", 11040)()); }
		ScriptString MenuString_SelfAttackVehicle() { mixin(MGPC!("ScriptString", 11028)()); }
		ScriptString MenuString_SelfAttackTurrets() { mixin(MGPC!("ScriptString", 11016)()); }
		ScriptString MenuString_SelfAttackSensors() { mixin(MGPC!("ScriptString", 11004)()); }
		ScriptString MenuString_SelfAttackGenerator() { mixin(MGPC!("ScriptString", 10992)()); }
		ScriptString MenuString_SelfAttackFlag() { mixin(MGPC!("ScriptString", 10980)()); }
		ScriptString MenuString_SelfAttackBase() { mixin(MGPC!("ScriptString", 10968)()); }
		ScriptString MenuString_SelfAttack() { mixin(MGPC!("ScriptString", 10956)()); }
		ScriptString MenuString_NeedWhereTo() { mixin(MGPC!("ScriptString", 10944)()); }
		ScriptString MenuString_NeedVehicleReady() { mixin(MGPC!("ScriptString", 10932)()); }
		ScriptString MenuString_NeedSupport() { mixin(MGPC!("ScriptString", 10920)()); }
		ScriptString MenuString_NeedRide() { mixin(MGPC!("ScriptString", 10908)()); }
		ScriptString MenuString_NeedHoldVehicle() { mixin(MGPC!("ScriptString", 10896)()); }
		ScriptString MenuString_NeedEscort() { mixin(MGPC!("ScriptString", 10884)()); }
		ScriptString MenuString_NeedDriver() { mixin(MGPC!("ScriptString", 10872)()); }
		ScriptString MenuString_NeedCover() { mixin(MGPC!("ScriptString", 10860)()); }
		ScriptString MenuString_FlagTake() { mixin(MGPC!("ScriptString", 10848)()); }
		ScriptString MenuString_FlagSecure() { mixin(MGPC!("ScriptString", 10836)()); }
		ScriptString MenuString_FlagSelfRetrieve() { mixin(MGPC!("ScriptString", 10824)()); }
		ScriptString MenuString_FlagRetrieve() { mixin(MGPC!("ScriptString", 10812)()); }
		ScriptString MenuString_FlagGiveMe() { mixin(MGPC!("ScriptString", 10800)()); }
		ScriptString MenuString_FlagIHave() { mixin(MGPC!("ScriptString", 10788)()); }
		ScriptString MenuString_FlagDefend() { mixin(MGPC!("ScriptString", 10776)()); }
		ScriptString MenuString_EnemyVehicleDestroyed() { mixin(MGPC!("ScriptString", 10764)()); }
		ScriptString MenuString_EnemyTurretsDestroyed() { mixin(MGPC!("ScriptString", 10752)()); }
		ScriptString MenuString_EnemySensorsDestroyed() { mixin(MGPC!("ScriptString", 10740)()); }
		ScriptString MenuString_EnemyGeneratorDestroyed() { mixin(MGPC!("ScriptString", 10728)()); }
		ScriptString MenuString_EnemyDisarray() { mixin(MGPC!("ScriptString", 10716)()); }
		ScriptString MenuString_CommandAssignment() { mixin(MGPC!("ScriptString", 10704)()); }
		ScriptString MenuString_CommandDeclined() { mixin(MGPC!("ScriptString", 10692)()); }
		ScriptString MenuString_CommandCompleted() { mixin(MGPC!("ScriptString", 10680)()); }
		ScriptString MenuString_CommandAcknowledged() { mixin(MGPC!("ScriptString", 10668)()); }
		ScriptString MenuString_BaseSecure() { mixin(MGPC!("ScriptString", 10656)()); }
		ScriptString MenuString_BaseRetake() { mixin(MGPC!("ScriptString", 10644)()); }
		ScriptString MenuString_EnemyInBase() { mixin(MGPC!("ScriptString", 10632)()); }
		ScriptString MenuString_BaseClear() { mixin(MGPC!("ScriptString", 10620)()); }
		ScriptString MenuString_RepairVehicle() { mixin(MGPC!("ScriptString", 10608)()); }
		ScriptString MenuString_RepairTurrets() { mixin(MGPC!("ScriptString", 10596)()); }
		ScriptString MenuString_RepairSensors() { mixin(MGPC!("ScriptString", 10584)()); }
		ScriptString MenuString_RepairGenerator() { mixin(MGPC!("ScriptString", 10572)()); }
		ScriptString MenuString_DefendPointE() { mixin(MGPC!("ScriptString", 10560)()); }
		ScriptString MenuString_DefendPointD() { mixin(MGPC!("ScriptString", 10548)()); }
		ScriptString MenuString_DefendPointC() { mixin(MGPC!("ScriptString", 10536)()); }
		ScriptString MenuString_DefendPointB() { mixin(MGPC!("ScriptString", 10524)()); }
		ScriptString MenuString_DefendPointA() { mixin(MGPC!("ScriptString", 10512)()); }
		ScriptString MenuString_DefendVehicle() { mixin(MGPC!("ScriptString", 10500)()); }
		ScriptString MenuString_DefendTurrets() { mixin(MGPC!("ScriptString", 10488)()); }
		ScriptString MenuString_DefendSensors() { mixin(MGPC!("ScriptString", 10476)()); }
		ScriptString MenuString_DefendReinforce() { mixin(MGPC!("ScriptString", 10464)()); }
		ScriptString MenuString_DefendMe() { mixin(MGPC!("ScriptString", 10452)()); }
		ScriptString MenuString_DefendGenerator() { mixin(MGPC!("ScriptString", 10440)()); }
		ScriptString MenuString_DefendFlag() { mixin(MGPC!("ScriptString", 10428)()); }
		ScriptString MenuString_DefendEntrances() { mixin(MGPC!("ScriptString", 10416)()); }
		ScriptString MenuString_DefendFlagCarrier() { mixin(MGPC!("ScriptString", 10404)()); }
		ScriptString MenuString_DefendBase() { mixin(MGPC!("ScriptString", 10392)()); }
		ScriptString MenuString_AttackPointE() { mixin(MGPC!("ScriptString", 10380)()); }
		ScriptString MenuString_AttackPointD() { mixin(MGPC!("ScriptString", 10368)()); }
		ScriptString MenuString_AttackPointC() { mixin(MGPC!("ScriptString", 10356)()); }
		ScriptString MenuString_AttackPointB() { mixin(MGPC!("ScriptString", 10344)()); }
		ScriptString MenuString_AttackPointA() { mixin(MGPC!("ScriptString", 10332)()); }
		ScriptString MenuString_AttackWait() { mixin(MGPC!("ScriptString", 10320)()); }
		ScriptString MenuString_AttackVehicle() { mixin(MGPC!("ScriptString", 10308)()); }
		ScriptString MenuString_AttackTurrets() { mixin(MGPC!("ScriptString", 10296)()); }
		ScriptString MenuString_AttackSensors() { mixin(MGPC!("ScriptString", 10284)()); }
		ScriptString MenuString_AttackReinforce() { mixin(MGPC!("ScriptString", 10272)()); }
		ScriptString MenuString_AttackGenerator() { mixin(MGPC!("ScriptString", 10260)()); }
		ScriptString MenuString_AttackFlag() { mixin(MGPC!("ScriptString", 10248)()); }
		ScriptString MenuString_AttackDisrupt() { mixin(MGPC!("ScriptString", 10236)()); }
		ScriptString MenuString_AttackChase() { mixin(MGPC!("ScriptString", 10224)()); }
		ScriptString MenuString_AttackBase() { mixin(MGPC!("ScriptString", 10212)()); }
		ScriptString MenuString_Attack() { mixin(MGPC!("ScriptString", 10200)()); }
		ScriptString MenuString_GlobalTauntLearn() { mixin(MGPC!("ScriptString", 10188)()); }
		ScriptString MenuString_GlobalTauntSarcasm() { mixin(MGPC!("ScriptString", 10176)()); }
		ScriptString MenuString_GlobalTauntBrag() { mixin(MGPC!("ScriptString", 10164)()); }
		ScriptString MenuString_GlobalTauntObnoxious() { mixin(MGPC!("ScriptString", 10152)()); }
		ScriptString MenuString_GlobalTauntAww() { mixin(MGPC!("ScriptString", 10140)()); }
		ScriptString MenuString_GlobalRespondWait() { mixin(MGPC!("ScriptString", 10128)()); }
		ScriptString MenuString_GlobalRespondThanks() { mixin(MGPC!("ScriptString", 10116)()); }
		ScriptString MenuString_GlobalRespondDontKnow() { mixin(MGPC!("ScriptString", 10104)()); }
		ScriptString MenuString_GlobalRespondAnyTime() { mixin(MGPC!("ScriptString", 10092)()); }
		ScriptString MenuString_GlobalComplimentGreatShot() { mixin(MGPC!("ScriptString", 10080)()); }
		ScriptString MenuString_GlobalComplimentYouRock() { mixin(MGPC!("ScriptString", 10068)()); }
		ScriptString MenuString_GlobalComplimentNiceMove() { mixin(MGPC!("ScriptString", 10056)()); }
		ScriptString MenuString_GlobalComplimentGoodGame() { mixin(MGPC!("ScriptString", 10044)()); }
		ScriptString MenuString_GlobalComplimentAwesome() { mixin(MGPC!("ScriptString", 10032)()); }
		ScriptString MenuString_GlobalWoohoo() { mixin(MGPC!("ScriptString", 10020)()); }
		ScriptString MenuString_GlobalShazbot() { mixin(MGPC!("ScriptString", 10008)()); }
		ScriptString MenuString_GlobalQuiet() { mixin(MGPC!("ScriptString", 9996)()); }
		ScriptString MenuString_GlobalOoops() { mixin(MGPC!("ScriptString", 9984)()); }
		ScriptString MenuString_GlobalBye() { mixin(MGPC!("ScriptString", 9972)()); }
		ScriptString MenuString_GlobalHi() { mixin(MGPC!("ScriptString", 9960)()); }
		ScriptString MenuString_GlobalNo() { mixin(MGPC!("ScriptString", 9948)()); }
		ScriptString MenuString_GlobalYes() { mixin(MGPC!("ScriptString", 9936)()); }
		ScriptString ChatString_TeamWait() { mixin(MGPC!("ScriptString", 9924)()); }
		ScriptString ChatString_TeamThanks() { mixin(MGPC!("ScriptString", 9912)()); }
		ScriptString ChatString_TeamSorry() { mixin(MGPC!("ScriptString", 9900)()); }
		ScriptString ChatString_TeamMove() { mixin(MGPC!("ScriptString", 9888)()); }
		ScriptString ChatString_TeamHelp() { mixin(MGPC!("ScriptString", 9876)()); }
		ScriptString ChatString_TeamDontKnow() { mixin(MGPC!("ScriptString", 9864)()); }
		ScriptString ChatString_TeamCeaseFire() { mixin(MGPC!("ScriptString", 9852)()); }
		ScriptString ChatString_TeamBaseSecure() { mixin(MGPC!("ScriptString", 9840)()); }
		ScriptString ChatString_TeamAnytime() { mixin(MGPC!("ScriptString", 9828)()); }
		ScriptString ChatString_TeamNo() { mixin(MGPC!("ScriptString", 9816)()); }
		ScriptString ChatString_TeamYes() { mixin(MGPC!("ScriptString", 9804)()); }
		ScriptString ChatString_WarnContext_ActorDeployable() { mixin(MGPC!("ScriptString", 9792)()); }
		ScriptString ChatString_WarnContext_ActorVehicle() { mixin(MGPC!("ScriptString", 9780)()); }
		ScriptString ChatString_WarnContext_ActorSensor() { mixin(MGPC!("ScriptString", 9768)()); }
		ScriptString ChatString_WarnContext_ActorTurret() { mixin(MGPC!("ScriptString", 9756)()); }
		ScriptString ChatString_WarnContext_ActorHeavyPawn() { mixin(MGPC!("ScriptString", 9744)()); }
		ScriptString ChatString_WarnContext_ActorMediumPawn() { mixin(MGPC!("ScriptString", 9732)()); }
		ScriptString ChatString_WarnContext_ActorLightPawn() { mixin(MGPC!("ScriptString", 9720)()); }
		ScriptString ChatString_WarnContext_EnemyNearby() { mixin(MGPC!("ScriptString", 9708)()); }
		ScriptString ChatString_WarnContext_EnemyNearEnemyVehiclePad() { mixin(MGPC!("ScriptString", 9696)()); }
		ScriptString ChatString_WarnContext_EnemyNearOurVehiclePad() { mixin(MGPC!("ScriptString", 9684)()); }
		ScriptString ChatString_WarnContext_EnemyNearEnemyBaseTurret() { mixin(MGPC!("ScriptString", 9672)()); }
		ScriptString ChatString_WarnContext_EnemyNearOurBaseTurret() { mixin(MGPC!("ScriptString", 9660)()); }
		ScriptString ChatString_WarnContext_EnemyNearEnemyFlag() { mixin(MGPC!("ScriptString", 9648)()); }
		ScriptString ChatString_WarnContext_EnemyNearOurFlag() { mixin(MGPC!("ScriptString", 9636)()); }
		ScriptString ChatString_WarnContext_EnemyNearEnemyGenerator() { mixin(MGPC!("ScriptString", 9624)()); }
		ScriptString ChatString_WarnContext_EnemyNearOurGenerator() { mixin(MGPC!("ScriptString", 9612)()); }
		ScriptString ChatString_WarnContext_EnemyInMidfield() { mixin(MGPC!("ScriptString", 9600)()); }
		ScriptString ChatString_WarnContext_EnemyBehindEnemyBase() { mixin(MGPC!("ScriptString", 9588)()); }
		ScriptString ChatString_WarnContext_EnemyBehindOurBase() { mixin(MGPC!("ScriptString", 9576)()); }
		ScriptString ChatString_WarnContext_EnemyAroundEnemyBase() { mixin(MGPC!("ScriptString", 9564)()); }
		ScriptString ChatString_WarnContext_EnemyAroundOurBase() { mixin(MGPC!("ScriptString", 9552)()); }
		ScriptString ChatString_WarnContext_EnemyInsideEnemyBase() { mixin(MGPC!("ScriptString", 9540)()); }
		ScriptString ChatString_WarnContext_EnemyInsideOurBase() { mixin(MGPC!("ScriptString", 9528)()); }
		ScriptString ChatString_WarnVehicle() { mixin(MGPC!("ScriptString", 9516)()); }
		ScriptString ChatString_WarnEnemies() { mixin(MGPC!("ScriptString", 9504)()); }
		ScriptString ChatString_UpgradeTurrets() { mixin(MGPC!("ScriptString", 9492)()); }
		ScriptString ChatString_UpgradeSensors() { mixin(MGPC!("ScriptString", 9480)()); }
		ScriptString ChatString_UpgradeGenerator() { mixin(MGPC!("ScriptString", 9468)()); }
		ScriptString ChatString_TargetWait() { mixin(MGPC!("ScriptString", 9456)()); }
		ScriptString ChatString_TargetVehicle() { mixin(MGPC!("ScriptString", 9444)()); }
		ScriptString ChatString_TargetTurret() { mixin(MGPC!("ScriptString", 9432)()); }
		ScriptString ChatString_TargetSensors() { mixin(MGPC!("ScriptString", 9420)()); }
		ScriptString ChatString_TargetNeed() { mixin(MGPC!("ScriptString", 9408)()); }
		ScriptString ChatString_TargetFireOnMy() { mixin(MGPC!("ScriptString", 9396)()); }
		ScriptString ChatString_TargetFlag() { mixin(MGPC!("ScriptString", 9384)()); }
		ScriptString ChatString_TargetDestroyed() { mixin(MGPC!("ScriptString", 9372)()); }
		ScriptString ChatString_TargetBase() { mixin(MGPC!("ScriptString", 9360)()); }
		ScriptString ChatString_TargetAcquired() { mixin(MGPC!("ScriptString", 9348)()); }
		ScriptString ChatString_SelfUpgradeTurrets() { mixin(MGPC!("ScriptString", 9336)()); }
		ScriptString ChatString_SelfUpgradeSensors() { mixin(MGPC!("ScriptString", 9324)()); }
		ScriptString ChatString_SelfUpgradeGenerator() { mixin(MGPC!("ScriptString", 9312)()); }
		ScriptString ChatString_SelfTaskVehicle() { mixin(MGPC!("ScriptString", 9300)()); }
		ScriptString ChatString_SelfTaskDeployTurrets() { mixin(MGPC!("ScriptString", 9288)()); }
		ScriptString ChatString_SelfTaskDeploySensors() { mixin(MGPC!("ScriptString", 9276)()); }
		ScriptString ChatString_SelfTaskOnIt() { mixin(MGPC!("ScriptString", 9264)()); }
		ScriptString ChatString_SelfTaskForcefield() { mixin(MGPC!("ScriptString", 9252)()); }
		ScriptString ChatString_SelfTaskDefenses() { mixin(MGPC!("ScriptString", 9240)()); }
		ScriptString ChatString_SelfTaskCover() { mixin(MGPC!("ScriptString", 9228)()); }
		ScriptString ChatString_SelfRepairVehicle() { mixin(MGPC!("ScriptString", 9216)()); }
		ScriptString ChatString_SelfRepairTurrets() { mixin(MGPC!("ScriptString", 9204)()); }
		ScriptString ChatString_SelfRepairSensors() { mixin(MGPC!("ScriptString", 9192)()); }
		ScriptString ChatString_SelfRepairGenerator() { mixin(MGPC!("ScriptString", 9180)()); }
		ScriptString ChatString_SelfRepairBase() { mixin(MGPC!("ScriptString", 9168)()); }
		ScriptString ChatString_SelfDefendPointE() { mixin(MGPC!("ScriptString", 9156)()); }
		ScriptString ChatString_SelfDefendPointD() { mixin(MGPC!("ScriptString", 9144)()); }
		ScriptString ChatString_SelfDefendPointC() { mixin(MGPC!("ScriptString", 9132)()); }
		ScriptString ChatString_SelfDefendPointB() { mixin(MGPC!("ScriptString", 9120)()); }
		ScriptString ChatString_SelfDefendPointA() { mixin(MGPC!("ScriptString", 9108)()); }
		ScriptString ChatString_SelfDefendVehicle() { mixin(MGPC!("ScriptString", 9096)()); }
		ScriptString ChatString_SelfDefendTurrets() { mixin(MGPC!("ScriptString", 9084)()); }
		ScriptString ChatString_SelfDefendSensors() { mixin(MGPC!("ScriptString", 9072)()); }
		ScriptString ChatString_SelfDefendGenerator() { mixin(MGPC!("ScriptString", 9060)()); }
		ScriptString ChatString_SelfDefendFlag() { mixin(MGPC!("ScriptString", 9048)()); }
		ScriptString ChatString_SelfDefend() { mixin(MGPC!("ScriptString", 9036)()); }
		ScriptString ChatString_SelfDefendBase() { mixin(MGPC!("ScriptString", 9024)()); }
		ScriptString ChatString_SelfAttackPointE() { mixin(MGPC!("ScriptString", 9012)()); }
		ScriptString ChatString_SelfAttackPointD() { mixin(MGPC!("ScriptString", 9000)()); }
		ScriptString ChatString_SelfAttackPointC() { mixin(MGPC!("ScriptString", 8988)()); }
		ScriptString ChatString_SelfAttackPointB() { mixin(MGPC!("ScriptString", 8976)()); }
		ScriptString ChatString_SelfAttackPointA() { mixin(MGPC!("ScriptString", 8964)()); }
		ScriptString ChatString_SelfAttackVehicle() { mixin(MGPC!("ScriptString", 8952)()); }
		ScriptString ChatString_SelfAttackTurrets() { mixin(MGPC!("ScriptString", 8940)()); }
		ScriptString ChatString_SelfAttackSensors() { mixin(MGPC!("ScriptString", 8928)()); }
		ScriptString ChatString_SelfAttackGenerator() { mixin(MGPC!("ScriptString", 8916)()); }
		ScriptString ChatString_SelfAttackFlag() { mixin(MGPC!("ScriptString", 8904)()); }
		ScriptString ChatString_SelfAttackBase() { mixin(MGPC!("ScriptString", 8892)()); }
		ScriptString ChatString_SelfAttack() { mixin(MGPC!("ScriptString", 8880)()); }
		ScriptString ChatString_NeedWhereTo() { mixin(MGPC!("ScriptString", 8868)()); }
		ScriptString ChatString_NeedVehicleReady() { mixin(MGPC!("ScriptString", 8856)()); }
		ScriptString ChatString_NeedSupport() { mixin(MGPC!("ScriptString", 8844)()); }
		ScriptString ChatString_NeedRide() { mixin(MGPC!("ScriptString", 8832)()); }
		ScriptString ChatString_NeedHoldVehicle() { mixin(MGPC!("ScriptString", 8820)()); }
		ScriptString ChatString_NeedEscort() { mixin(MGPC!("ScriptString", 8808)()); }
		ScriptString ChatString_NeedDriver() { mixin(MGPC!("ScriptString", 8796)()); }
		ScriptString ChatString_NeedCover() { mixin(MGPC!("ScriptString", 8784)()); }
		ScriptString ChatString_FlagTake() { mixin(MGPC!("ScriptString", 8772)()); }
		ScriptString ChatString_FlagSecure() { mixin(MGPC!("ScriptString", 8760)()); }
		ScriptString ChatString_FlagSelfRetrieve() { mixin(MGPC!("ScriptString", 8748)()); }
		ScriptString ChatString_FlagRetrieve() { mixin(MGPC!("ScriptString", 8736)()); }
		ScriptString ChatString_FlagGiveMe() { mixin(MGPC!("ScriptString", 8724)()); }
		ScriptString ChatString_FlagIHave() { mixin(MGPC!("ScriptString", 8712)()); }
		ScriptString ChatString_FlagDefend() { mixin(MGPC!("ScriptString", 8700)()); }
		ScriptString ChatString_EnemyVehicleDestroyed() { mixin(MGPC!("ScriptString", 8688)()); }
		ScriptString ChatString_EnemyTurretsDestroyed() { mixin(MGPC!("ScriptString", 8676)()); }
		ScriptString ChatString_EnemySensorsDestroyed() { mixin(MGPC!("ScriptString", 8664)()); }
		ScriptString ChatString_EnemyGeneratorDestroyed() { mixin(MGPC!("ScriptString", 8652)()); }
		ScriptString ChatString_EnemyDisarray() { mixin(MGPC!("ScriptString", 8640)()); }
		ScriptString ChatString_CommandAssignment() { mixin(MGPC!("ScriptString", 8628)()); }
		ScriptString ChatString_CommandDeclined() { mixin(MGPC!("ScriptString", 8616)()); }
		ScriptString ChatString_CommandCompleted() { mixin(MGPC!("ScriptString", 8604)()); }
		ScriptString ChatString_CommandAcknowledged() { mixin(MGPC!("ScriptString", 8592)()); }
		ScriptString ChatString_BaseSecure() { mixin(MGPC!("ScriptString", 8580)()); }
		ScriptString ChatString_BaseRetake() { mixin(MGPC!("ScriptString", 8568)()); }
		ScriptString ChatString_EnemyInBase() { mixin(MGPC!("ScriptString", 8556)()); }
		ScriptString ChatString_BaseClear() { mixin(MGPC!("ScriptString", 8544)()); }
		ScriptString ChatString_RepairVehicle() { mixin(MGPC!("ScriptString", 8532)()); }
		ScriptString ChatString_RepairTurrets() { mixin(MGPC!("ScriptString", 8520)()); }
		ScriptString ChatString_RepairSensors() { mixin(MGPC!("ScriptString", 8508)()); }
		ScriptString ChatString_RepairGenerator() { mixin(MGPC!("ScriptString", 8496)()); }
		ScriptString ChatString_DefendPointE() { mixin(MGPC!("ScriptString", 8484)()); }
		ScriptString ChatString_DefendPointD() { mixin(MGPC!("ScriptString", 8472)()); }
		ScriptString ChatString_DefendPointC() { mixin(MGPC!("ScriptString", 8460)()); }
		ScriptString ChatString_DefendPointB() { mixin(MGPC!("ScriptString", 8448)()); }
		ScriptString ChatString_DefendPointA() { mixin(MGPC!("ScriptString", 8436)()); }
		ScriptString ChatString_DefendVehicle() { mixin(MGPC!("ScriptString", 8424)()); }
		ScriptString ChatString_DefendTurrets() { mixin(MGPC!("ScriptString", 8412)()); }
		ScriptString ChatString_DefendSensors() { mixin(MGPC!("ScriptString", 8400)()); }
		ScriptString ChatString_DefendReinforce() { mixin(MGPC!("ScriptString", 8388)()); }
		ScriptString ChatString_DefendMe() { mixin(MGPC!("ScriptString", 8376)()); }
		ScriptString ChatString_DefendGenerator() { mixin(MGPC!("ScriptString", 8364)()); }
		ScriptString ChatString_DefendFlag() { mixin(MGPC!("ScriptString", 8352)()); }
		ScriptString ChatString_DefendEntrances() { mixin(MGPC!("ScriptString", 8340)()); }
		ScriptString ChatString_DefendFlagCarrier() { mixin(MGPC!("ScriptString", 8328)()); }
		ScriptString ChatString_DefendBase() { mixin(MGPC!("ScriptString", 8316)()); }
		ScriptString ChatString_AttackPointE() { mixin(MGPC!("ScriptString", 8304)()); }
		ScriptString ChatString_AttackPointD() { mixin(MGPC!("ScriptString", 8292)()); }
		ScriptString ChatString_AttackPointC() { mixin(MGPC!("ScriptString", 8280)()); }
		ScriptString ChatString_AttackPointB() { mixin(MGPC!("ScriptString", 8268)()); }
		ScriptString ChatString_AttackPointA() { mixin(MGPC!("ScriptString", 8256)()); }
		ScriptString ChatString_AttackWait() { mixin(MGPC!("ScriptString", 8244)()); }
		ScriptString ChatString_AttackVehicle() { mixin(MGPC!("ScriptString", 8232)()); }
		ScriptString ChatString_AttackTurrets() { mixin(MGPC!("ScriptString", 8220)()); }
		ScriptString ChatString_AttackSensors() { mixin(MGPC!("ScriptString", 8208)()); }
		ScriptString ChatString_AttackReinforce() { mixin(MGPC!("ScriptString", 8196)()); }
		ScriptString ChatString_AttackGenerator() { mixin(MGPC!("ScriptString", 8184)()); }
		ScriptString ChatString_AttackFlag() { mixin(MGPC!("ScriptString", 8172)()); }
		ScriptString ChatString_AttackDisrupt() { mixin(MGPC!("ScriptString", 8160)()); }
		ScriptString ChatString_AttackChase() { mixin(MGPC!("ScriptString", 8148)()); }
		ScriptString ChatString_AttackBase() { mixin(MGPC!("ScriptString", 8136)()); }
		ScriptString ChatString_Attack() { mixin(MGPC!("ScriptString", 8124)()); }
		ScriptString ChatString_GlobalTauntLearn() { mixin(MGPC!("ScriptString", 8112)()); }
		ScriptString ChatString_GlobalTauntSarcasm() { mixin(MGPC!("ScriptString", 8100)()); }
		ScriptString ChatString_GlobalTauntBrag() { mixin(MGPC!("ScriptString", 8088)()); }
		ScriptString ChatString_GlobalTauntObnoxious() { mixin(MGPC!("ScriptString", 8076)()); }
		ScriptString ChatString_GlobalTauntAww() { mixin(MGPC!("ScriptString", 8064)()); }
		ScriptString ChatString_GlobalRespondWait() { mixin(MGPC!("ScriptString", 8052)()); }
		ScriptString ChatString_GlobalRespondThanks() { mixin(MGPC!("ScriptString", 8040)()); }
		ScriptString ChatString_GlobalRespondDontKnow() { mixin(MGPC!("ScriptString", 8028)()); }
		ScriptString ChatString_GlobalRespondAnyTime() { mixin(MGPC!("ScriptString", 8016)()); }
		ScriptString ChatString_GlobalComplimentGreatShot() { mixin(MGPC!("ScriptString", 8004)()); }
		ScriptString ChatString_GlobalComplimentYouRock() { mixin(MGPC!("ScriptString", 7992)()); }
		ScriptString ChatString_GlobalComplimentNiceMove() { mixin(MGPC!("ScriptString", 7980)()); }
		ScriptString ChatString_GlobalComplimentGoodGame() { mixin(MGPC!("ScriptString", 7968)()); }
		ScriptString ChatString_GlobalComplimentAwesome() { mixin(MGPC!("ScriptString", 7956)()); }
		ScriptString ChatString_GlobalWoohoo() { mixin(MGPC!("ScriptString", 7944)()); }
		ScriptString ChatString_GlobalShazbot() { mixin(MGPC!("ScriptString", 7932)()); }
		ScriptString ChatString_GlobalQuiet() { mixin(MGPC!("ScriptString", 7920)()); }
		ScriptString ChatString_GlobalOoops() { mixin(MGPC!("ScriptString", 7908)()); }
		ScriptString ChatString_GlobalBye() { mixin(MGPC!("ScriptString", 7896)()); }
		ScriptString ChatString_GlobalHi() { mixin(MGPC!("ScriptString", 7884)()); }
		ScriptString ChatString_GlobalNo() { mixin(MGPC!("ScriptString", 7872)()); }
		ScriptString ChatString_GlobalYes() { mixin(MGPC!("ScriptString", 7860)()); }
		TrVGSCommandList.TrVGSCommand m_CommandList() { mixin(MGPC!("TrVGSCommandList.TrVGSCommand", 60)()); }
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
