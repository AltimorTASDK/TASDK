module UnrealScript.Engine.MaterialExpressionFlipBookSample;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpressionTextureSample;

extern(C++) interface MaterialExpressionFlipBookSample : MaterialExpressionTextureSample
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionFlipBookSample")); }
	private static __gshared MaterialExpressionFlipBookSample mDefaultProperties;
	@property final static MaterialExpressionFlipBookSample DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionFlipBookSample)("MaterialExpressionFlipBookSample Engine.Default__MaterialExpressionFlipBookSample")); }
}
