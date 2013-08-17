module UnrealScript.UTGame.GFxUI_InventoryButton;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUI_InventoryButton : GFxClikWidget
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.GFxUI_InventoryButton")); }
	private static __gshared GFxUI_InventoryButton mDefaultProperties;
	@property final static GFxUI_InventoryButton DefaultProperties() { mixin(MGDPC("GFxUI_InventoryButton", "GFxUI_InventoryButton UTGame.Default__GFxUI_InventoryButton")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetContent;
			ScriptFunction mSetIconMC;
		}
		public @property static final
		{
			ScriptFunction SetContent() { mixin(MGF("mSetContent", "Function UTGame.GFxUI_InventoryButton.SetContent")); }
			ScriptFunction SetIconMC() { mixin(MGF("mSetIconMC", "Function UTGame.GFxUI_InventoryButton.SetIconMC")); }
		}
	}
	@property final auto ref
	{
		GFxObject IconMC() { mixin(MGPC("GFxObject", 144)); }
		ScriptString Content() { mixin(MGPC("ScriptString", 132)); }
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
