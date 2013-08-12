module UnrealScript.Engine.MaterialExpressionFontSample;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;
import UnrealScript.Engine.Font;

extern(C++) interface MaterialExpressionFontSample : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionFontSample")); }
	private static __gshared MaterialExpressionFontSample mDefaultProperties;
	@property final static MaterialExpressionFontSample DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionFontSample)("MaterialExpressionFontSample Engine.Default__MaterialExpressionFontSample")); }
	@property final auto ref
	{
		int FontTexturePage() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
		// WARNING: Property 'Font' has the same name as a defined type!
	}
}
