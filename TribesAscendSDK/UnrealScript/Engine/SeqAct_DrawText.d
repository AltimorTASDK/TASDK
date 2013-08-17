module UnrealScript.Engine.SeqAct_DrawText;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;
import UnrealScript.Engine.HUD;

extern(C++) interface SeqAct_DrawText : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_DrawText")); }
	private static __gshared SeqAct_DrawText mDefaultProperties;
	@property final static SeqAct_DrawText DefaultProperties() { mixin(MGDPC("SeqAct_DrawText", "SeqAct_DrawText Engine.Default__SeqAct_DrawText")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF("mGetObjClassVersion", "Function Engine.SeqAct_DrawText.GetObjClassVersion")); }
	}
	@property final
	{
		auto ref
		{
			HUD.KismetDrawTextInfo DrawTextInfo() { mixin(MGPC("HUD.KismetDrawTextInfo", 240)); }
			float DisplayTimeSeconds() { mixin(MGPC("float", 232)); }
		}
		bool bDisplayOnObject() { mixin(MGBPC(236, 0x1)); }
		bool bDisplayOnObject(bool val) { mixin(MSBPC(236, 0x1)); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
