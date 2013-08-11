module UnrealScript.UTGame.UTSeqAct_UseHoverboard;

import ScriptClasses;
import UnrealScript.UTGame.UTVehicle;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_UseHoverboard : SequenceAction
{
public extern(D):
	@property final auto ref UTVehicle Hoverboard() { return *cast(UTVehicle*)(cast(size_t)cast(void*)this + 232); }
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49161], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
