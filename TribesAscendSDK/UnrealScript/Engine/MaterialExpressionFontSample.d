module UnrealScript.Engine.MaterialExpressionFontSample;

import UnrealScript.Engine.MaterialExpression;
import UnrealScript.Engine.Font;

extern(C++) interface MaterialExpressionFontSample : MaterialExpression
{
	public @property final auto ref int FontTexturePage() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
	// WARNING: Property 'Font' has the same name as a defined type!
}
