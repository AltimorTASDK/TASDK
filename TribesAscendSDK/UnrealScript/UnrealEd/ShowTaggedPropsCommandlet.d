module UnrealScript.UnrealEd.ShowTaggedPropsCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface ShowTaggedPropsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ShowTaggedPropsCommandlet")); }
	private static __gshared ShowTaggedPropsCommandlet mDefaultProperties;
	@property final static ShowTaggedPropsCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ShowTaggedPropsCommandlet)("ShowTaggedPropsCommandlet UnrealEd.Default__ShowTaggedPropsCommandlet")); }
}
