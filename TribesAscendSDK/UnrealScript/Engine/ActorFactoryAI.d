module UnrealScript.Engine.ActorFactoryAI;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryAI : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryAI")); }
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptClass) InventoryList() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 116); }
			int TeamIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 128); }
			ScriptString PawnName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 100); }
			ScriptClass PawnClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 96); }
			ScriptClass ControllerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 92); }
		}
		bool bGiveDefaultInventory() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x1) != 0; }
		bool bGiveDefaultInventory(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x1; } return val; }
	}
}
