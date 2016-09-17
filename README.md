# Replication_Reads_Method
/////////////////////////////////////////////////////////////////////////////////////

"Replication techniques designs_descriptions"

Replicating BRAMs to support multiple reads without complex control logics(multiplexor).


Replication is widely adopted technique to increase readports. 

This technique enables multiple read prots by replicating the data to multiple BRAMs (Blcok RAMs). 


The data betweent these BRAMs should be updated simultaneously. 

But only one write port to support multiple reads. 


The write port needs to routed to every BRAM and updates the data to corresponding address in each BRAMs address data.


///////////////////////////////////////////////////////////////////////////////////

So, the "Replication_Duplicate techniques" advantage and dis-advantages in below:


Pros: Simple (no needs any multiplexor).

Cons: High cost of BRMAs (Block RAM) memory resources.


///////////////////////////////////////////////////////////////////////////////////

Storage Cost Ratio = (D_total) / (D_actual).

In "Replication techniques", the cost ratio = m / 1 = m. 

(In general case - mR1W Multi-ported Memory Module)


///////////////////////////////////////////////////////////////////////////////////

Provide & Connection author "Chun-Feng Neil Chen"

Email: apple51314520@gmail.com 

Other Email: chunfeng8204@gmail.com


If you have anything problem of multi-ported memory designs,

you could send by email to me or leave issues in github.


When I saw it, I'll as soon as possible to resolve problem.

Thans!!!

//////////////////////////////////////////////////////////////////////////////////////

First, saw "README.md" file; second, saw "Memory_design" file.
