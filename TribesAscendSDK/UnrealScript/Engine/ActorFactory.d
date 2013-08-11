module UnrealScript.Engine.ActorFactory;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;

extern(C++) interface ActorFactory : UObject
{
	public @property final bool bShowInEditorQuickMenu() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x2) != 0; }
	public @property final bool bShowInEditorQuickMenu(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x2; } return val; }
	public @property final bool bPlaceable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x1) != 0; }
	public @property final bool bPlaceable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x1; } return val; }
	public @property final auto ref ScriptClass NewActorClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref int AlternateMenuPriority() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref int MenuPriority() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref ScriptString MenuName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref ScriptClass GameplayActorClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 60); }
	final void PostCreateActor(Actor NewActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5796], params.ptr, cast(void*)0);
	}
}
