module UnrealScript.UDKBase.UDKGameViewportClient;

import ScriptClasses;
import UnrealScript.Engine.GameViewportClient;

extern(C++) interface UDKGameViewportClient : GameViewportClient
{
public extern(D):
	@property final auto ref ScriptString HintLocFileName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 288); }
	final ScriptString LoadRandomLocalizedHintMessage(ScriptString Category1Name, ScriptString Category2Name)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Category1Name;
		*cast(ScriptString*)&params[12] = Category2Name;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34905], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[24];
	}
}
