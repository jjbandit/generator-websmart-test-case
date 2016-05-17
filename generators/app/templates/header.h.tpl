#pragma once

#include "..\Base\Tester.h"

class CTracer;

class <%= className %> : public CTester
{
public:

	<%= className %>(CTracer * pTracerParm);

	bool Test();

	void SOMEFUNC();
};
