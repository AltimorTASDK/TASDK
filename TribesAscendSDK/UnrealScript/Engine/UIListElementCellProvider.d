module UnrealScript.Engine.UIListElementCellProvider;

import ScriptClasses;
import UnrealScript.Core.UInterface;

extern(C++) interface UIListElementCellProvider : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIListElementCellProvider")); }
	static struct Constants
	{
		enum UnknownCellDataFieldName = "NAME_None";
	}
}
