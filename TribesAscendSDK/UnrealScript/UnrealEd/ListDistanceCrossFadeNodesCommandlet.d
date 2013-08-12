module UnrealScript.UnrealEd.ListDistanceCrossFadeNodesCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface ListDistanceCrossFadeNodesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ListDistanceCrossFadeNodesCommandlet")); }
	private static __gshared ListDistanceCrossFadeNodesCommandlet mDefaultProperties;
	@property final static ListDistanceCrossFadeNodesCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ListDistanceCrossFadeNodesCommandlet)("ListDistanceCrossFadeNodesCommandlet UnrealEd.Default__ListDistanceCrossFadeNodesCommandlet")); }
}
