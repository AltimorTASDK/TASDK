module UnrealScript.TribesGame.GFxTrScene_Container;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrScene;

extern(C++) interface GFxTrScene_Container : GFxTrScene
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrScene_Container")()); }
	private static __gshared GFxTrScene_Container mDefaultProperties;
	@property final static GFxTrScene_Container DefaultProperties() { mixin(MGDPC!(GFxTrScene_Container, "GFxTrScene_Container TribesGame.Default__GFxTrScene_Container")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitialize;
		public @property static final ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.GFxTrScene_Container.Initialize")()); }
	}
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
}
