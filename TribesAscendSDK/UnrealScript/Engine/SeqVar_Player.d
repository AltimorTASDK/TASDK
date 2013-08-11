module UnrealScript.Engine.SeqVar_Player;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SeqVar_Object;

extern(C++) interface SeqVar_Player : SeqVar_Object
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptArray!(UObject) Players() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 176); }
			int PlayerIdx() { return *cast(int*)(cast(size_t)cast(void*)this + 192); }
		}
		bool bAllPlayers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x1) != 0; }
		bool bAllPlayers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x1; } return val; }
	}
final:
	void UpdatePlayersList()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26251], cast(void*)0, cast(void*)0);
	}
	UObject GetObjectValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26252], params.ptr, cast(void*)0);
		return *cast(UObject*)params.ptr;
	}
}
