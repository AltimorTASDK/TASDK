module UnrealScript.TribesGame.GFxTrScene_EULA;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrScene;

extern(C++) interface GFxTrScene_EULA : GFxTrScene
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrScene_EULA")()); }
	private static __gshared GFxTrScene_EULA mDefaultProperties;
	@property final static GFxTrScene_EULA DefaultProperties() { mixin(MGDPC!(GFxTrScene_EULA, "GFxTrScene_EULA TribesGame.Default__GFxTrScene_EULA")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mLoadEULA;
			ScriptFunction mAcceptEULA;
			ScriptFunction mInitialize;
			ScriptFunction mEULAReponse;
		}
		public @property static final
		{
			ScriptFunction LoadEULA() { mixin(MGF!("mLoadEULA", "Function TribesGame.GFxTrScene_EULA.LoadEULA")()); }
			ScriptFunction AcceptEULA() { mixin(MGF!("mAcceptEULA", "Function TribesGame.GFxTrScene_EULA.AcceptEULA")()); }
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.GFxTrScene_EULA.Initialize")()); }
			ScriptFunction EULAReponse() { mixin(MGF!("mEULAReponse", "Function TribesGame.GFxTrScene_EULA.EULAReponse")()); }
		}
	}
	@property final auto ref ScriptString EULA() { mixin(MGPC!("ScriptString", 132)()); }
final:
	void LoadEULA()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadEULA, cast(void*)0, cast(void*)0);
	}
	void AcceptEULA()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AcceptEULA, cast(void*)0, cast(void*)0);
	}
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void EULAReponse(bool bAccepted)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bAccepted;
		(cast(ScriptObject)this).ProcessEvent(Functions.EULAReponse, params.ptr, cast(void*)0);
	}
}
