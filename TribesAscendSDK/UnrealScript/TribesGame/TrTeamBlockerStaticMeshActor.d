module UnrealScript.TribesGame.TrTeamBlockerStaticMeshActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.StaticMeshActor;
import UnrealScript.Engine.Material;

extern(C++) interface TrTeamBlockerStaticMeshActor : StaticMeshActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrTeamBlockerStaticMeshActor")()); }
	private static __gshared TrTeamBlockerStaticMeshActor mDefaultProperties;
	@property final static TrTeamBlockerStaticMeshActor DefaultProperties() { mixin(MGDPC!(TrTeamBlockerStaticMeshActor, "TrTeamBlockerStaticMeshActor TribesGame.Default__TrTeamBlockerStaticMeshActor")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mDisableBlocking;
			ScriptFunction mEnableBlocking;
			ScriptFunction mUpdateMaterialForPawn;
			ScriptFunction mCreateMICs;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrTeamBlockerStaticMeshActor.PostBeginPlay")()); }
			ScriptFunction DisableBlocking() { mixin(MGF!("mDisableBlocking", "Function TribesGame.TrTeamBlockerStaticMeshActor.DisableBlocking")()); }
			ScriptFunction EnableBlocking() { mixin(MGF!("mEnableBlocking", "Function TribesGame.TrTeamBlockerStaticMeshActor.EnableBlocking")()); }
			ScriptFunction UpdateMaterialForPawn() { mixin(MGF!("mUpdateMaterialForPawn", "Function TribesGame.TrTeamBlockerStaticMeshActor.UpdateMaterialForPawn")()); }
			ScriptFunction CreateMICs() { mixin(MGF!("mCreateMICs", "Function TribesGame.TrTeamBlockerStaticMeshActor.CreateMICs")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(MaterialInstanceConstant) m_MICs() { mixin(MGPC!("ScriptArray!(MaterialInstanceConstant)", 492)()); }
			Material m_BaseMaterial() { mixin(MGPC!("Material", 504)()); }
			ubyte m_DefenderTeamIndex() { mixin(MGPC!("ubyte", 484)()); }
		}
		bool m_bDisableBlockingOnSiegePhase0Ends() { mixin(MGBPC!(488, 0x1)()); }
		bool m_bDisableBlockingOnSiegePhase0Ends(bool val) { mixin(MSBPC!(488, 0x1)()); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void DisableBlocking()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisableBlocking, cast(void*)0, cast(void*)0);
	}
	void EnableBlocking()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableBlocking, cast(void*)0, cast(void*)0);
	}
	void UpdateMaterialForPawn(TrPawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateMaterialForPawn, params.ptr, cast(void*)0);
	}
	void CreateMICs()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateMICs, cast(void*)0, cast(void*)0);
	}
}
