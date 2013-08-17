module UnrealScript.TribesGame.TrCallIn_CrashLandInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.Info;

extern(C++) interface TrCallIn_CrashLandInfo : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrCallIn_CrashLandInfo")()); }
	private static __gshared TrCallIn_CrashLandInfo mDefaultProperties;
	@property final static TrCallIn_CrashLandInfo DefaultProperties() { mixin(MGDPC!(TrCallIn_CrashLandInfo, "TrCallIn_CrashLandInfo TribesGame.Default__TrCallIn_CrashLandInfo")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSpawnCrashLandInfo;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mInitTimer;
			ScriptFunction mDeliveryPodLanded;
			ScriptFunction mMoveSameTeamPawn;
			ScriptFunction mPerformLandingDamage;
		}
		public @property static final
		{
			ScriptFunction SpawnCrashLandInfo() { mixin(MGF!("mSpawnCrashLandInfo", "Function TribesGame.TrCallIn_CrashLandInfo.SpawnCrashLandInfo")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrCallIn_CrashLandInfo.PostBeginPlay")()); }
			ScriptFunction InitTimer() { mixin(MGF!("mInitTimer", "Function TribesGame.TrCallIn_CrashLandInfo.InitTimer")()); }
			ScriptFunction DeliveryPodLanded() { mixin(MGF!("mDeliveryPodLanded", "Function TribesGame.TrCallIn_CrashLandInfo.DeliveryPodLanded")()); }
			ScriptFunction MoveSameTeamPawn() { mixin(MGF!("mMoveSameTeamPawn", "Function TribesGame.TrCallIn_CrashLandInfo.MoveSameTeamPawn")()); }
			ScriptFunction PerformLandingDamage() { mixin(MGF!("mPerformLandingDamage", "Function TribesGame.TrCallIn_CrashLandInfo.PerformLandingDamage")()); }
		}
	}
	@property final
	{
		auto ref
		{
			float MomentumTransfer() { mixin(MGPC!(float, 528)()); }
			float Damage() { mixin(MGPC!(float, 524)()); }
			float DamageRadius() { mixin(MGPC!(float, 520)()); }
			ScriptClass DamageTypeClass() { mixin(MGPC!(ScriptClass, 516)()); }
			Vector r_CrashLandNormal() { mixin(MGPC!(Vector, 504)()); }
			Vector r_CrashLandPoint() { mixin(MGPC!(Vector, 492)()); }
			float r_fCrashLandTime() { mixin(MGPC!(float, 488)()); }
			Controller m_Owner() { mixin(MGPC!(Controller, 480)()); }
			ScriptClass m_ItemToDeploy() { mixin(MGPC!(ScriptClass, 476)()); }
		}
		bool r_bPodLanded() { mixin(MGBPC!(484, 0x1)()); }
		bool r_bPodLanded(bool val) { mixin(MSBPC!(484, 0x1)()); }
	}
final:
	static bool SpawnCrashLandInfo(Controller Initializer, float CrashLandTime, Vector CrashLandPoint, Vector CrashLandNormal, ScriptClass ItemInDeliveryPod)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Controller*)params.ptr = Initializer;
		*cast(float*)&params[4] = CrashLandTime;
		*cast(Vector*)&params[8] = CrashLandPoint;
		*cast(Vector*)&params[20] = CrashLandNormal;
		*cast(ScriptClass*)&params[32] = ItemInDeliveryPod;
		StaticClass.ProcessEvent(Functions.SpawnCrashLandInfo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[36];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void InitTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitTimer, cast(void*)0, cast(void*)0);
	}
	void DeliveryPodLanded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DeliveryPodLanded, cast(void*)0, cast(void*)0);
	}
	void MoveSameTeamPawn(TrPawn PawnToMove)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = PawnToMove;
		(cast(ScriptObject)this).ProcessEvent(Functions.MoveSameTeamPawn, params.ptr, cast(void*)0);
	}
	void PerformLandingDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PerformLandingDamage, cast(void*)0, cast(void*)0);
	}
}
