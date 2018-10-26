# R package SmallCountRounding

### Small Count Rounding of Tabular Data 

#### A statistical disclosure control tool to protect frequency tables in cases where small values are sensitive

The main function, RoundViaDummy(), performs small count rounding of necessary inner cells (Heldal, 2017)
so that all small frequencies of cross-classifications to be published (publishable cells) are rounded. This is equivalent to changing micro data since frequencies of unique combinations are changed. Thus, additivity and consistency are guaranteed.
This is performed by an algorithm inspired by partial least squares regression (Langsrud and Heldal, 2018).


#### References

Heldal, J.: The European Census Hub 2011 Hypercubes - Norwegian SDC Experiences. In: Work Session on Statistical Data Confidentiality (2017), Skopje, The former Yugoslav Republic of Macedonia, September 20-22 , 2017.

Langsrud, Ø. and  Johan Heldal, J.: An Algorithm for Small Count Rounding of Tabular Data. 
To be presented at: Privacy in statistical databases, Valencia, Spain. September 26-28, 2018.
 [Full-text](https://www.researchgate.net/publication/327768398_An_Algorithm_for_Small_Count_Rounding_of_Tabular_Data)
 and
[presentation](https://www.researchgate.net/publication/327916165_An_Algorithm_for_Small_Count_Rounding_of_Tabular_Data_-_Presentation) 
 available at Researchgate.
 
 
 