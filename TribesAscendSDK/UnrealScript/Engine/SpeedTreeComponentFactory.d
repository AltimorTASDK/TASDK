module UnrealScript.Engine.SpeedTreeComponentFactory;

import ScriptClasses;
import UnrealScript.Engine.PrimitiveComponentFactory;

extern(C++) interface SpeedTreeComponentFactory : PrimitiveComponentFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SpeedTreeComponentFactory")); }
	private static __gshared SpeedTreeComponentFactory mDefaultProperties;
	@property final static SpeedTreeComponentFactory DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SpeedTreeComponentFactory)("SpeedTreeComponentFactory Engine.Default__SpeedTreeComponentFactory")); }
}
