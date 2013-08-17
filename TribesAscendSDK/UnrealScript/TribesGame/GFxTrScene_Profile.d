module UnrealScript.TribesGame.GFxTrScene_Profile;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrScene;

extern(C++) interface GFxTrScene_Profile : GFxTrScene
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrScene_Profile")()); }
	private static __gshared GFxTrScene_Profile mDefaultProperties;
	@property final static GFxTrScene_Profile DefaultProperties() { mixin(MGDPC!(GFxTrScene_Profile, "GFxTrScene_Profile TribesGame.Default__GFxTrScene_Profile")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitialize;
		public @property static final ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.GFxTrScene_Profile.Initialize")()); }
	}
	@property final auto ref ScriptArray!(int) ChosenClasses() { mixin(MGPC!("ScriptArray!(int)", 132)()); }
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
}
