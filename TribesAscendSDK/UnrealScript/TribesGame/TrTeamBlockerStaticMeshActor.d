module UnrealScript.TribesGame.TrTeamBlockerStaticMeshActor;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.StaticMeshActor;
import UnrealScript.Engine.Material;

extern(C++) interface TrTeamBlockerStaticMeshActor : StaticMeshActor
{
public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113113], cast(void*)0, cast(void*)0);
	}
	void DisableBlocking()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113114], cast(void*)0, cast(void*)0);
	}
	void EnableBlocking()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113115], cast(void*)0, cast(void*)0);
	}
	void UpdateMaterialForPawn(TrPawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113116], params.ptr, cast(void*)0);
	}
	void CreateMICs()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113119], cast(void*)0, cast(void*)0);
	}
}
