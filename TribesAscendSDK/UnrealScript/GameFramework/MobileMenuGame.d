module UnrealScript.GameFramework.MobileMenuGame;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.GameInfo;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.PlayerController;

extern(C++) interface MobileMenuGame : GameInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.MobileMenuGame")()); }
	private static __gshared MobileMenuGame mDefaultProperties;
	@property final static MobileMenuGame DefaultProperties() { mixin(MGDPC!(MobileMenuGame, "MobileMenuGame GameFramework.Default__MobileMenuGame")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostLogin;
			ScriptFunction mStartMatch;
			ScriptFunction mRestartPlayer;
		}
		public @property static final
		{
			ScriptFunction PostLogin() { mixin(MGF!("mPostLogin", "Function GameFramework.MobileMenuGame.PostLogin")()); }
			ScriptFunction StartMatch() { mixin(MGF!("mStartMatch", "Function GameFramework.MobileMenuGame.StartMatch")()); }
			ScriptFunction RestartPlayer() { mixin(MGF!("mRestartPlayer", "Function GameFramework.MobileMenuGame.RestartPlayer")()); }
		}
	}
	@property final auto ref ScriptClass InitialSceneToDisplayClass() { mixin(MGPC!(ScriptClass, 884)()); }
final:
	void PostLogin(PlayerController NewPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = NewPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostLogin, params.ptr, cast(void*)0);
	}
	void StartMatch()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartMatch, cast(void*)0, cast(void*)0);
	}
	void RestartPlayer(Controller NewPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = NewPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.RestartPlayer, params.ptr, cast(void*)0);
	}
}
