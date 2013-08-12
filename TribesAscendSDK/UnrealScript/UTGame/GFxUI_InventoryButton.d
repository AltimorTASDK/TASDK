module UnrealScript.UTGame.GFxUI_InventoryButton;

import ScriptClasses;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUI_InventoryButton : GFxClikWidget
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.GFxUI_InventoryButton")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetContent;
			ScriptFunction mSetIconMC;
		}
		public @property static final
		{
			ScriptFunction SetContent() { return mSetContent ? mSetContent : (mSetContent = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUI_InventoryButton.SetContent")); }
			ScriptFunction SetIconMC() { return mSetIconMC ? mSetIconMC : (mSetIconMC = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUI_InventoryButton.SetIconMC")); }
		}
	}
	@property final auto ref
	{
		GFxObject IconMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 144); }
		ScriptString Content() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
	}
final:
	void SetContent(ScriptString newContent)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = newContent;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetContent, params.ptr, cast(void*)0);
	}
	void SetIconMC(GFxObject iconClip)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = iconClip;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetIconMC, params.ptr, cast(void*)0);
	}
}
