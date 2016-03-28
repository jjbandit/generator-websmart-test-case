#include "stdafx.h"

#include "..\..\Common\Tracer.h"
#include "..\..\Common\<%= headerName %>.h"

#include "<%= fileName %>.h"


/***************************************************
 <%= className %> Object constructor
 ***************************************************/
<%= className %>::<%= className %>(CTracer * pTracerParm)
{
	ASSERT(pTracerParm);

	pTracer = pTracerParm;
}

/***************************************************
 Run the appropriate tests
 ***************************************************/
bool <%= className %>::Test()
{

	SOMEFUNC();

	return m_bTestsPassed;
}

void <%= className %>::SOMEFUNC()
{
	ASSERT_TRACE();
}
