module UnrealScript.GameFramework.GamePawn;

import ScriptClasses;
import UnrealScript.Engine.Pawn;

extern(C++) interface GamePawn : Pawn
{
public extern(D):
	@property final
	{
		bool bRespondToExplosions() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1144) & 0x2) != 0; }
		bool bRespondToExplosions(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1144) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1144) &= ~0x2; } return val; }
		bool bLastHitWasHeadShot() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1144) & 0x1) != 0; }
		bool bLastHitWasHeadShot(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1144) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1144) &= ~0x1; } return val; }
	}
final:
	void UpdateShadowSettings(bool bInWantShadow)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInWantShadow;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31725], params.ptr, cast(void*)0);
	}
	void ReattachMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31729], cast(void*)0, cast(void*)0);
	}
	void ReattachMeshWithoutBeingSeen()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31730], cast(void*)0, cast(void*)0);
	}
}
