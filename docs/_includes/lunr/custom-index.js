const content_to_merge = [docs[i].label +  ":", docs[i].definition, docs[i].content];
docs[i].content = content_to_merge.join(' ');