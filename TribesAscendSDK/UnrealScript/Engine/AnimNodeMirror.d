module UnrealScript.Engine.AnimNodeMirror;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNodeMirror : AnimNodeBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.AnimNodeMirror")); }
	private static __gshared AnimNodeMirror mDefaultProperties;
	@property final static AnimNodeMirror DefaultProperties() { mixin(MGDPC("AnimNodeMirror", "AnimNodeMirror Engine.Default__AnimNodeMirror")); }
	@property final
	{
		bool bEnableMirroring() { mixin(MGBPC(244, 0x1)); }
		bool bEnableMirroring(bool val) { mixin(MSBPC(244, 0x1)); }
	}
}
