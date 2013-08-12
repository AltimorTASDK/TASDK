module UnrealScript.TribesGame.TrDaDCoreShield;

import ScriptClasses;
import UnrealScript.Engine.DynamicSMActor;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.TribesGame.TrDaDCore;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrDaDShell;
import UnrealScript.Engine.Material;

extern(C++) interface TrDaDCoreShield : DynamicSMActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDaDCoreShield")); }
	private static __gshared TrDaDCoreShield mDefaultProperties;
	@property final static TrDaDCoreShield DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDaDCoreShield)("TrDaDCoreShield TribesGame.Default__TrDaDCoreShield")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInit;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mDisableBlocking;
			ScriptFunction mEnableBlocking;
			ScriptFunction mUpdateMaterialForPawn;
			ScriptFunction mCreateMICs;
		}
		public @property static final
		{
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDCoreShield.Init")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDCoreShield.PostBeginPlay")); }
			ScriptFunction DisableBlocking() { return mDisableBlocking ? mDisableBlocking : (mDisableBlocking = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDCoreShield.DisableBlocking")); }
			ScriptFunction EnableBlocking() { return mEnableBlocking ? mEnableBlocking : (mEnableBlocking = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDCoreShield.EnableBlocking")); }
			ScriptFunction UpdateMaterialForPawn() { return mUpdateMaterialForPawn ? mUpdateMaterialForPawn : (mUpdateMaterialForPawn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDCoreShield.UpdateMaterialForPawn")); }
			ScriptFunction CreateMICs() { return mCreateMICs ? mCreateMICs : (mCreateMICs = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDCoreShield.CreateMICs")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(MaterialInstanceConstant) m_MICs() { return *cast(ScriptArray!(MaterialInstanceConstant)*)(cast(size_t)cast(void*)this + 536); }
		TrDaDShell m_Shell() { return *cast(TrDaDShell*)(cast(size_t)cast(void*)this + 560); }
		int m_nShieldIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 556); }
		TrDaDCore m_Core() { return *cast(TrDaDCore*)(cast(size_t)cast(void*)this + 552); }
		Material m_BaseMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 548); }
		ubyte m_DefenderTeamIndex() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 532); }
	}
final:
	void Init(int ShieldIndex, TrDaDCore Core, TrDaDShell Shell)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ShieldIndex;
		*cast(TrDaDCore*)&params[4] = Core;
		*cast(TrDaDShell*)&params[8] = Shell;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
	}
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
