module UnrealScript.UTGame.GFxUDKFrontEnd_JoinDialog;

import ScriptClasses;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.UTGame.GFxUDKFrontEnd_Dialog;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUDKFrontEnd_JoinDialog : GFxUDKFrontEnd_Dialog
{
	public @property final auto ref GFxClikWidget SpectateBtn() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref GFxClikWidget JoinBtn() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref GFxClikWidget MutatorListMC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref GFxClikWidget ServerInfoListMC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 168); }
	final void OnTopMostView(bool bPlayOpenAnimation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPlayOpenAnimation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38377], params.ptr, cast(void*)0);
	}
	final void DisableSubComponents(bool bDisableComponents)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDisableComponents;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38379], params.ptr, cast(void*)0);
	}
	final void PopulateServerInfo(OnlineGameSettings GameSettings)
	{
		ubyte params[4];
		params[] = 0;
		*cast(OnlineGameSettings*)params.ptr = GameSettings;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38381], params.ptr, cast(void*)0);
	}
	final void SetJoinButtonPress(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* JoinButtonListener)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = JoinButtonListener;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38401], params.ptr, cast(void*)0);
	}
	final void SetSpectateButtonPress(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* SpectateButtonListener)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = SpectateButtonListener;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38403], params.ptr, cast(void*)0);
	}
	final bool WidgetInitialized(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WidgetName;
		*cast(ScriptName*)&params[8] = WidgetPath;
		*cast(GFxObject*)&params[16] = Widget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38405], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
}
