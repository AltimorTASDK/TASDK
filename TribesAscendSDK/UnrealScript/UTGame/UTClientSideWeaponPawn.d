module UnrealScript.UTGame.UTClientSideWeaponPawn;

import ScriptClasses;
import UnrealScript.UTGame.UTWeaponPawn;
import UnrealScript.Engine.Pawn;

extern(C++) interface UTClientSideWeaponPawn : UTWeaponPawn
{
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44063], cast(void*)0, cast(void*)0);
	}
	final void AttachDriver(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44064], params.ptr, cast(void*)0);
	}
	final void DetachDriver(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44066], params.ptr, cast(void*)0);
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44068], params.ptr, cast(void*)0);
	}
}
