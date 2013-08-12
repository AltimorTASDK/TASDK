module UnrealScript.UDKBase.UDKAIDecisionComponent;

import ScriptClasses;
import UnrealScript.Engine.ActorComponent;

extern(C++) interface UDKAIDecisionComponent : ActorComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKAIDecisionComponent")); }
	@property final
	{
		bool bTriggered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x1) != 0; }
		bool bTriggered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x1; } return val; }
	}
}
