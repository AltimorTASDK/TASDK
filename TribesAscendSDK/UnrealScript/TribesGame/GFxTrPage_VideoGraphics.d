module UnrealScript.TribesGame.GFxTrPage_VideoGraphics;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_VideoGraphics : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrPage_VideoGraphics")); }
	private static __gshared GFxTrPage_VideoGraphics mDefaultProperties;
	@property final static GFxTrPage_VideoGraphics DefaultProperties() { mixin(MGDPC("GFxTrPage_VideoGraphics", "GFxTrPage_VideoGraphics TribesGame.Default__GFxTrPage_VideoGraphics")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mFillData;
			ScriptFunction mSpecialAction;
			ScriptFunction mFillOption;
		}
		public @property static final
		{
			ScriptFunction Initialize() { mixin(MGF("mInitialize", "Function TribesGame.GFxTrPage_VideoGraphics.Initialize")); }
			ScriptFunction FillData() { mixin(MGF("mFillData", "Function TribesGame.GFxTrPage_VideoGraphics.FillData")); }
			ScriptFunction SpecialAction() { mixin(MGF("mSpecialAction", "Function TribesGame.GFxTrPage_VideoGraphics.SpecialAction")); }
			ScriptFunction FillOption() { mixin(MGF("mFillOption", "Function TribesGame.GFxTrPage_VideoGraphics.FillOption")); }
		}
	}
	enum MENU_ACTION_VIDEOGRAPHICS : ubyte
	{
		MAVG_MINIMAL = 0,
		MAVG_LOW = 1,
		MAVG_MEDIUM = 2,
		MAVG_HIGH = 3,
		MAVG_VERYHIGH = 4,
		MAVG_MAX = 5,
	}
	@property final auto ref int CurrGraphics() { mixin(MGPC("int", 356)); }
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillData, params.ptr, cast(void*)0);
	}
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialAction, params.ptr, cast(void*)0);
	}
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillOption, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
}
