module UnrealScript.TribesGame.GFxTrScene_Header;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrScene;

extern(C++) interface GFxTrScene_Header : GFxTrScene
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrScene_Header")()); }
	private static __gshared GFxTrScene_Header mDefaultProperties;
	@property final static GFxTrScene_Header DefaultProperties() { mixin(MGDPC!(GFxTrScene_Header, "GFxTrScene_Header TribesGame.Default__GFxTrScene_Header")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitialize;
		public @property static final ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.GFxTrScene_Header.Initialize")()); }
	}
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
}
