
**FREE
//--------------------------------------------------------------------------------------------------
// MIT License
// Copyright (c) 2020 Ghost +
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//-------------------------------------------------------------------------------------------------- 
ctl-opt option(*srcstmt: *nodebugio) datfmt(*iso) nomain;

/include QRPGLESRC,UTILITY_P

//--------------------------------------------------------------------------------------------------
// Procedure  : Utility_getSystemName
// Purpose    : Use ibm retrieval to get the name of the system.
// Returns    : systemName => The retrieved char.
// Parameter/s: N/A
//--------------------------------------------------------------------------------------------------
dcl-proc Utility_getSystemName;
  dcl-pi *n char(8) end-pi;

  dcl-pr QWCRNETA extpgm('QWCRNETA');
   *n char(32766) options(*varsize); 
   *n int(10) const; 
   *n int(10) const; 
   *n char(10) const;
   *n char(256); 
  end-pr;

  // Error code structure
  dcl-ds apiError len(256) end-ds;

  // Receiver variable for QWCRNETA
  dcl-ds apiData;
   filler char(32);
   returnSystem char(8);
  end-ds;

  dcl-c SYSTEM_NAME const('SYSNAME');

  QWCRNETA(apiData
         : %size(apiData)
         : 1
         : SYSTEM_NAME
         : apiError );

  return returnSystem;
end-proc;     
