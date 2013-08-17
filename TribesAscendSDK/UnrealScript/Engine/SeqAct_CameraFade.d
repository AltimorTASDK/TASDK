module UnrealScript.Engine.SeqAct_CameraFade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_CameraFade : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_CameraFade")); }
	private static __gshared SeqAct_CameraFade mDefaultProperties;
	@property final static SeqAct_CameraFade DefaultProperties() { mixin(MGDPC("SeqAct_CameraFade", "SeqAct_CameraFade Engine.Default__SeqAct_CameraFade")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF("mGetObjClassVersion", "Function Engine.SeqAct_CameraFade.GetObjClassVersion")); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(PlayerController) CachedPCs() { mixin(MGPC("ScriptArray!(PlayerController)", 260)); }
			float FadeTimeRemaining() { mixin(MGPC("float", 256)); }
			float FadeTime() { mixin(MGPC("float", 248)); }
			float FadeOpacity() { mixin(MGPC("float", 244)); }
			UObject.Vector2D FadeAlpha() { mixin(MGPC("UObject.Vector2D", 236)); }
			UObject.Color FadeColor() { mixin(MGPC("UObject.Color", 232)); }
		}
		bool bPersistFade() { mixin(MGBPC(252, 0x1)); }
		bool bPersistFade(bool val) { mixin(MSBPC(252, 0x1)); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
