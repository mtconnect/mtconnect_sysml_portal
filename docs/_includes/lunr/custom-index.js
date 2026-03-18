const content_to_merge = [docs[i].doc + ": " + docs[i].content, docs[i].definition];
docs[i].content = content_to_merge.join(' ');