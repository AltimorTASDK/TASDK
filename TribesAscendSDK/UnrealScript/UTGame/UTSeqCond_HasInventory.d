module UnrealScript.UTGame.UTSeqCond_HasInventory;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface UTSeqCond_HasInventory : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSeqCond_HasInventory")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { return mActivated ? mActivated : (mActivated = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSeqCond_HasInventory.Activated")); }
	}
	@property final
	{
		auto ref
		{
			ScriptClass RequiredInventory() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 212); }
			Actor Target() { return *cast(Actor*)(cast(size_t)cast(void*)this + 208); }
		}
		bool bCheckVehicleDriver() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x2) != 0; }
		bool bCheckVehicleDriver(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x2; } return val; }
		bool bAllowSubclass() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x1) != 0; }
		bool bAllowSubclass(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x1; } return val; }
	}
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}
