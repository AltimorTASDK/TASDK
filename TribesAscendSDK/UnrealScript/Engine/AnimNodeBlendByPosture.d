module UnrealScript.Engine.AnimNodeBlendByPosture;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlendList;

extern(C++) interface AnimNodeBlendByPosture : AnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNodeBlendByPosture")); }
	private static __gshared AnimNodeBlendByPosture mDefaultProperties;
	@property final static AnimNodeBlendByPosture DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimNodeBlendByPosture)("AnimNodeBlendByPosture Engine.Default__AnimNodeBlendByPosture")); }
}
