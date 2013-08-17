module UnrealScript.Engine.UIListElementCellProvider;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UInterface;

extern(C++) interface UIListElementCellProvider : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIListElementCellProvider")()); }
	private static __gshared UIListElementCellProvider mDefaultProperties;
	@property final static UIListElementCellProvider DefaultProperties() { mixin(MGDPC!(UIListElementCellProvider, "UIListElementCellProvider Engine.Default__UIListElementCellProvider")()); }
	static struct Constants
	{
		enum UnknownCellDataFieldName = "NAME_None";
	}
}
