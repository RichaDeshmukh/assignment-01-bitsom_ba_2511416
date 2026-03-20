## Vector DB Use Case

A traditional keyword-based database search would not be sufficient for a system where lawyers need to query 500-page contracts using plain English questions. Keyword search relies on exact word matching, which means it may fail when the query uses different terminology than the document. For example, a lawyer may search for “termination clauses,” while the contract might use terms like “contract cancellation,” “agreement end conditions,” or “exit provisions.” In such cases, keyword-based systems may miss relevant sections or return incomplete results.

Additionally, legal documents are complex, lengthy, and context-heavy. Keyword search does not understand semantic meaning or relationships between words, making it difficult to retrieve precise answers from large unstructured text.

A vector database solves this problem by enabling semantic search. First, the contract text is broken into smaller chunks (such as paragraphs) and converted into embeddings — numerical representations that capture the meaning of the text. Similarly, the user’s query is also converted into an embedding. The system then compares vectors using similarity measures (e.g., cosine similarity) to find the most relevant sections, even if the wording is different.

This allows the system to return contextually relevant answers rather than exact keyword matches. In this use case, a vector database acts as the backbone of intelligent search, enabling accurate, fast, and meaning-based retrieval of information from large legal documents.
