module UnrealScript.TribesGame.TrGameViewportClient;

import ScriptClasses;
import UnrealScript.Engine.Canvas;
import UnrealScript.TribesGame.TrChatConsole;
import UnrealScript.UTGame.UTGameViewportClient;

extern(C++) interface TrGameViewportClient : UTGameViewportClient
{
public extern(D):
	@property final auto ref TrChatConsole ChatConsole() { return *cast(TrChatConsole*)(cast(size_t)cast(void*)this + 408); }
final:
	bool Init(ScriptString* OutError)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *OutError;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[95387], params.ptr, cast(void*)0);
		*OutError = *cast(ScriptString*)params.ptr;
		return *cast(bool*)&params[12];
	}
	void PostRender(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[95390], params.ptr, cast(void*)0);
	}
}
