module UnrealScript.TribesGame.GFxTrUI_MainMenu;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.GFxUI_PauseMenu;

extern(C++) interface GFxTrUI_MainMenu : GFxUI_PauseMenu
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrUI_MainMenu")()); }
	private static __gshared GFxTrUI_MainMenu mDefaultProperties;
	@property final static GFxTrUI_MainMenu DefaultProperties() { mixin(MGDPC!(GFxTrUI_MainMenu, "GFxTrUI_MainMenu TribesGame.Default__GFxTrUI_MainMenu")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mStart;
		public @property static final ScriptFunction Start() { mixin(MGF!("mStart", "Function TribesGame.GFxTrUI_MainMenu.Start")()); }
	}
	@property final auto ref GFxUI_PauseMenu FamilyMenuMovie() { mixin(MGPC!(GFxUI_PauseMenu, 448)()); }
	final bool Start(bool StartPaused)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = StartPaused;
		(cast(ScriptObject)this).ProcessEvent(Functions.Start, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
