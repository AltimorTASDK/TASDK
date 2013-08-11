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
	public @property final auto ref ScriptArray!(MaterialInstanceConstant) m_MICs() { return *cast(ScriptArray!(MaterialInstanceConstant)*)(cast(size_t)cast(void*)this + 536); }
	public @property final auto ref TrDaDShell m_Shell() { return *cast(TrDaDShell*)(cast(size_t)cast(void*)this + 560); }
	public @property final auto ref int m_nShieldIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref TrDaDCore m_Core() { return *cast(TrDaDCore*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref Material m_BaseMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 548); }
	public @property final auto ref ubyte m_DefenderTeamIndex() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 532); }
	final void Init(int ShieldIndex, TrDaDCore Core, TrDaDShell Shell)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ShieldIndex;
		*cast(TrDaDCore*)&params[4] = Core;
		*cast(TrDaDShell*)&params[8] = Shell;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79660], params.ptr, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79667], cast(void*)0, cast(void*)0);
	}
	final void DisableBlocking()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79668], cast(void*)0, cast(void*)0);
	}
	final void EnableBlocking()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79669], cast(void*)0, cast(void*)0);
	}
	final void UpdateMaterialForPawn(TrPawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79670], params.ptr, cast(void*)0);
	}
	final void CreateMICs()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79673], cast(void*)0, cast(void*)0);
	}
}
