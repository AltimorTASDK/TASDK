module UnrealScript.TribesGame.TrTeamBlockerStaticMeshActor;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.StaticMeshActor;
import UnrealScript.Engine.Material;

extern(C++) interface TrTeamBlockerStaticMeshActor : StaticMeshActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrTeamBlockerStaticMeshActor")); }
	private static __gshared TrTeamBlockerStaticMeshActor mDefaultProperties;
	@property final static TrTeamBlockerStaticMeshActor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrTeamBlockerStaticMeshActor)("TrTeamBlockerStaticMeshActor TribesGame.Default__TrTeamBlockerStaticMeshActor")); }
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
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTeamBlockerStaticMeshActor.PostBeginPlay")); }
			ScriptFunction DisableBlocking() { return mDisableBlocking ? mDisableBlocking : (mDisableBlocking = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTeamBlockerStaticMeshActor.DisableBlocking")); }
			ScriptFunction EnableBlocking() { return mEnableBlocking ? mEnableBlocking : (mEnableBlocking = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTeamBlockerStaticMeshActor.EnableBlocking")); }
			ScriptFunction UpdateMaterialForPawn() { return mUpdateMaterialForPawn ? mUpdateMaterialForPawn : (mUpdateMaterialForPawn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTeamBlockerStaticMeshActor.UpdateMaterialForPawn")); }
			ScriptFunction CreateMICs() { return mCreateMICs ? mCreateMICs : (mCreateMICs = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTeamBlockerStaticMeshActor.CreateMICs")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(MaterialInstanceConstant) m_MICs() { return *cast(ScriptArray!(MaterialInstanceConstant)*)(cast(size_t)cast(void*)this + 492); }
			Material m_BaseMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 504); }
			ubyte m_DefenderTeamIndex() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 484); }
		}
		bool m_bDisableBlockingOnSiegePhase0Ends() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x1) != 0; }
		bool m_bDisableBlockingOnSiegePhase0Ends(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x1; } return val; }
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
