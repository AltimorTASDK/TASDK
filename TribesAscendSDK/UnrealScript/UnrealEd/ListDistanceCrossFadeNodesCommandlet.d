module UnrealScript.UnrealEd.ListDistanceCrossFadeNodesCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface ListDistanceCrossFadeNodesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.ListDistanceCrossFadeNodesCommandlet")); }
	private static __gshared ListDistanceCrossFadeNodesCommandlet mDefaultProperties;
	@property final static ListDistanceCrossFadeNodesCommandlet DefaultProperties() { mixin(MGDPC("ListDistanceCrossFadeNodesCommandlet", "ListDistanceCrossFadeNodesCommandlet UnrealEd.Default__ListDistanceCrossFadeNodesCommandlet")); }
}
