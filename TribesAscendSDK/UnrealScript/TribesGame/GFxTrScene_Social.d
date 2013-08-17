module UnrealScript.TribesGame.GFxTrScene_Social;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrScene;

extern(C++) interface GFxTrScene_Social : GFxTrScene
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrScene_Social")()); }
	private static __gshared GFxTrScene_Social mDefaultProperties;
	@property final static GFxTrScene_Social DefaultProperties() { mixin(MGDPC!(GFxTrScene_Social, "GFxTrScene_Social TribesGame.Default__GFxTrScene_Social")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitialize;
		public @property static final ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.GFxTrScene_Social.Initialize")()); }
	}
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
}
