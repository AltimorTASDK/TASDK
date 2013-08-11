module UnrealScript.UTGame.GFxUI_InventoryButton;

import ScriptClasses;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUI_InventoryButton : GFxClikWidget
{
	public @property final auto ref GFxObject IconMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref ScriptString Content() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
	final void SetContent(ScriptString newContent)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = newContent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39083], params.ptr, cast(void*)0);
	}
	final void SetIconMC(GFxObject iconClip)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = iconClip;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39085], params.ptr, cast(void*)0);
	}
}
