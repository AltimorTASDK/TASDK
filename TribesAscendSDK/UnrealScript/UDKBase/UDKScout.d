module UnrealScript.UDKBase.UDKScout;

import ScriptClasses;
import UnrealScript.Engine.Scout;

extern(C++) interface UDKScout : Scout
{
	public @property final auto ref ScriptName SizePersonFindName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1296); }
	public @property final auto ref ScriptClass PrototypePawnClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1292); }
	public @property final auto ref float MaxDoubleJumpHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1288); }
	public @property final bool bRequiresDoubleJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1284) & 0x1) != 0; }
	public @property final bool bRequiresDoubleJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1284) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1284) &= ~0x1; } return val; }
	final bool SuggestJumpVelocity(Vector* JumpVelocity, Vector Destination, Vector Start, bool bRequireFallLanding)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Vector*)params.ptr = *JumpVelocity;
		*cast(Vector*)&params[12] = Destination;
		*cast(Vector*)&params[24] = Start;
		*cast(bool*)&params[36] = bRequireFallLanding;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35314], params.ptr, cast(void*)0);
		*JumpVelocity = *cast(Vector*)params.ptr;
		return *cast(bool*)&params[40];
	}
}
