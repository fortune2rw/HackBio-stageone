To solve the protein molecular weight calculation task, I followed a structured and logical approach that mirrors common practices in bioinformatics data processing. The goal was to compute the molecular weight of a protein sequence based on the constituent amino acids, using the R programming language.

Step 1: Define a Reference Amino Acid Weight Table

The first step was to prepare a reference table that maps each standard amino acid one-letter code to its corresponding molecular weight in Daltons (Da). This table serves as the biological knowledge base for the calculation.

In R, I represented this table as a named numeric vector, where:

the names correspond to amino acid one-letter codes (e.g., A, R, N, D),

the values correspond to their molecular weights.

This structure allows direct lookup of amino-acid weights using character indexing, which is efficient and idiomatic in R.

Step 2: Create a Dedicated Function

Next, I encapsulated the logic into a function (kD_Calc) to ensure reusability and clarity. Encapsulation allows the same calculation to be applied to any protein sequence without rewriting code and follows good programming practice.

The function accepts a single argument:

input_protein, a character string representing a protein sequence.

Step 3: Normalize the Input Sequence

Because biological sequences may be provided in mixed or lowercase letters, I standardized the input by converting it to uppercase using toupper(). This ensures compatibility with the amino acid table, which is defined using uppercase one-letter codes.

Step 4: Split the Protein into Individual Amino Acids

Protein sequences are strings, but amino acid processing requires working at the level of individual residues. I therefore used strsplit() to split the input string into a character vector, where each element represents a single amino acid.

This transformation makes it possible to evaluate and manipulate each residue independently.

Step 5: Match Amino Acids Against the Reference Table

To calculate the molecular weight, I filtered the protein sequence to retain only characters that exist as valid keys in the amino acid weight table. This was achieved using the %in% operator, which performs efficient membership testing in R.

This step identifies which amino acids in the sequence can be mapped to known molecular weights.

Step 6: Calculate the Total Molecular Weight

Once the valid amino acids were identified, I retrieved their corresponding weights from the reference table using vector indexing. I then summed these values using sum() to obtain the total molecular weight in Daltons.

To convert the result into kilodaltons (kDa), which is the standard unit used in protein biochemistry, I divided the total weight by 1000.

Step 7: Return the Result

Finally, the function returns the computed molecular weight in kilodaltons. By returning a single numeric value, the function remains simple, interpretable, and easy to integrate into downstream analyses.
