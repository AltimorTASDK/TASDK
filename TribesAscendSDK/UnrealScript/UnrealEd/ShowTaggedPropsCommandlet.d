module UnrealScript.UnrealEd.ShowTaggedPropsCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface ShowTaggedPropsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.ShowTaggedPropsCommandlet")()); }
	private static __gshared ShowTaggedPropsCommandlet mDefaultProperties;
	@property final static ShowTaggedPropsCommandlet DefaultProperties() { mixin(MGDPC!(ShowTaggedPropsCommandlet, "ShowTaggedPropsCommandlet UnrealEd.Default__ShowTaggedPropsCommandlet")()); }
}
