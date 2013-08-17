module UnrealScript.UnrealEd.EditorPlayer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LocalPlayer;

extern(C++) interface EditorPlayer : LocalPlayer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.EditorPlayer")()); }
	private static __gshared EditorPlayer mDefaultProperties;
	@property final static EditorPlayer DefaultProperties() { mixin(MGDPC!(EditorPlayer, "EditorPlayer UnrealEd.Default__EditorPlayer")()); }
}
