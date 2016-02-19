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

	bool bResult = true;

	if ( ! SOMEFUNC() )
	{
		pTracer->Trace("_T(Failed on <%= className %>::SOMEFUNC"));
		bResult = false;
	}


	return bResult;
}

bool <%= className %>::SOMEFUNC()
{
	bool bResult = true;


	return bResult;
}
