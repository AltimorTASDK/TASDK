module UnrealScript.Helpers;

private import std.conv;

/**
 * A mixin for checking if a field is already filled, and,
 * if it isn't, find the ScriptFunction to fill it.
 */
string MGF(string fieldName, string fullName)()
{
	return "return " ~ fieldName ~ " ? " ~ fieldName ~ " : (" ~ fieldName ~ ` = ScriptObject.Find!(ScriptFunction)("` ~ fullName ~ `"));`;
}

/**
 * A mixin for getting a property of a struct.
 */
string MGPS(T, int offset)()
{
	return "return *cast(" ~ T.stringof ~ "*)(cast(size_t)&this + " ~ to!string(offset) ~ ");";
}

/**
 * A mixin for getting a property of a class.
 */
string MGPC(T, int offset)()
{
	return "return *cast(" ~ T.stringof ~ "*)(cast(size_t)cast(void*)this + " ~ to!string(offset) ~ ");";
}

/**
 * A mixin for getting the static class of a struct.
 */
string MGSCS(string fullName)()
{
	return `return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("` ~ fullName ~ `"));`;
}

/**
 * A mixin for getting the static class of a class.
 */
string MGSCC(string fullName)()
{
	return `return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("` ~ fullName ~ `"));`;
}

/**
 * A mixin for getting the default instance of a class.
 */
string MGDPC(T, string fullName)
{
	return `return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(` ~ T.stringof ~ `)("` ~ fullName ~ `"));`;
}
