module UnrealScript.Engine.ActorFactory;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;

extern(C++) interface ActorFactory : UObject
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptClass NewActorClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 84); }
			int AlternateMenuPriority() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
			int MenuPriority() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
			ScriptString MenuName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 64); }
			ScriptClass GameplayActorClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bShowInEditorQuickMenu() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x2) != 0; }
		bool bShowInEditorQuickMenu(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x2; } return val; }
		bool bPlaceable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x1) != 0; }
		bool bPlaceable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x1; } return val; }
	}
	final void PostCreateActor(Actor NewActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5796], params.ptr, cast(void*)0);
	}
}
