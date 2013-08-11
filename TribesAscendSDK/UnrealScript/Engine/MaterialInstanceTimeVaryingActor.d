module UnrealScript.Engine.MaterialInstanceTimeVaryingActor;

import UnrealScript.Engine.Actor;
import UnrealScript.Engine.MaterialInstanceTimeVarying;

extern(C++) interface MaterialInstanceTimeVaryingActor : Actor
{
	public @property final auto ref MaterialInstanceTimeVarying MatInst() { return *cast(MaterialInstanceTimeVarying*)(cast(size_t)cast(void*)this + 476); }
}
