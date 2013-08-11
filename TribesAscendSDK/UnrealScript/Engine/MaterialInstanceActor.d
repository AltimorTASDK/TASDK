module UnrealScript.Engine.MaterialInstanceActor;

import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Actor;

extern(C++) interface MaterialInstanceActor : Actor
{
	public @property final auto ref MaterialInstanceConstant MatInst() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 476); }
}
