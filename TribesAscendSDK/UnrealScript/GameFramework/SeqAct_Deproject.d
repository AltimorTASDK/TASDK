module UnrealScript.GameFramework.SeqAct_Deproject;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Deproject : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.SeqAct_Deproject")); }
	private static __gshared SeqAct_Deproject mDefaultProperties;
	@property final static SeqAct_Deproject DefaultProperties() { mixin(MGDPC("SeqAct_Deproject", "SeqAct_Deproject GameFramework.Default__SeqAct_Deproject")); }
	@property final auto ref
	{
		Vector HitNormal() { mixin(MGPC("Vector", 260)); }
		Vector HitLocation() { mixin(MGPC("Vector", 248)); }
		UObject HitObject() { mixin(MGPC("UObject", 244)); }
		float TraceDistance() { mixin(MGPC("float", 240)); }
		float ScreenY() { mixin(MGPC("float", 236)); }
		float ScreenX() { mixin(MGPC("float", 232)); }
	}
}
