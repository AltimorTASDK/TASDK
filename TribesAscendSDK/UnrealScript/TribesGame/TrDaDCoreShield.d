module UnrealScript.TribesGame.TrDaDCoreShield;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDaDCoreShield")()); }
	private static __gshared TrDaDCoreShield mDefaultProperties;
	@property final static TrDaDCoreShield DefaultProperties() { mixin(MGDPC!(TrDaDCoreShield, "TrDaDCoreShield TribesGame.Default__TrDaDCoreShield")()); }
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
			ScriptFunction Init() { mixin(MGF!("mInit", "Function TribesGame.TrDaDCoreShield.Init")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrDaDCoreShield.PostBeginPlay")()); }
			ScriptFunction DisableBlocking() { mixin(MGF!("mDisableBlocking", "Function TribesGame.TrDaDCoreShield.DisableBlocking")()); }
			ScriptFunction EnableBlocking() { mixin(MGF!("mEnableBlocking", "Function TribesGame.TrDaDCoreShield.EnableBlocking")()); }
			ScriptFunction UpdateMaterialForPawn() { mixin(MGF!("mUpdateMaterialForPawn", "Function TribesGame.TrDaDCoreShield.UpdateMaterialForPawn")()); }
			ScriptFunction CreateMICs() { mixin(MGF!("mCreateMICs", "Function TribesGame.TrDaDCoreShield.CreateMICs")()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(MaterialInstanceConstant) m_MICs() { mixin(MGPC!("ScriptArray!(MaterialInstanceConstant)", 536)()); }
		TrDaDShell m_Shell() { mixin(MGPC!("TrDaDShell", 560)()); }
		int m_nShieldIndex() { mixin(MGPC!("int", 556)()); }
		TrDaDCore m_Core() { mixin(MGPC!("TrDaDCore", 552)()); }
		Material m_BaseMaterial() { mixin(MGPC!("Material", 548)()); }
		ubyte m_DefenderTeamIndex() { mixin(MGPC!("ubyte", 532)()); }
	}
final:
	void Init(int ShieldIndex, TrDaDCore* Core = null, TrDaDShell* Shell = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ShieldIndex;
		if (Core !is null)
			*cast(TrDaDCore*)&params[4] = *Core;
		if (Shell !is null)
			*cast(TrDaDShell*)&params[8] = *Shell;
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
