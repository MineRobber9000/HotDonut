.class Lcom/jirbo/adcolony/HTTPRequest;
.super Ljava/lang/Object;
.source "HTTPRequest.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 25
    const/16 v16, 0x50

    .line 27
    .local v16, "port":I
    move-object/from16 v8, p0

    .line 28
    .local v8, "host":Ljava/lang/String;
    :try_start_0
    const-string v15, ""

    .line 29
    .local v15, "path":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "http://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v19, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 30
    :cond_0
    const/16 v19, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 31
    .local v9, "i":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v9, v0, :cond_1

    .line 33
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 34
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 38
    :cond_1
    new-instance v18, Ljava/net/Socket;

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-direct {v0, v8, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 39
    .local v18, "socket":Ljava/net/Socket;
    const/16 v19, 0x7530

    invoke-virtual/range {v18 .. v19}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 40
    new-instance v14, Ljava/io/PrintStream;

    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 41
    .local v14, "out":Ljava/io/PrintStream;
    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    .line 43
    .local v12, "in":Ljava/io/InputStream;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v2, "buffer":Ljava/lang/StringBuilder;
    const-string v19, "POST "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v19, " HTTP/1.1\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v19, "Host: "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v19, "\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v19, "Content-Type: "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v19, "\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v19, "Content-Length: "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const-string v19, "\r\n\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v19, "\r\n\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v14}, Ljava/io/PrintStream;->flush()V

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "buffer":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .restart local v2    # "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    move-result v3

    .local v3, "ch":I
    :goto_0
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v3, v0, :cond_2

    .line 71
    int-to-char v0, v3

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    const-string v19, "\r\n\r\n"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x4

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v19

    if-ltz v19, :cond_3

    .line 79
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "header":Ljava/lang/String;
    const/4 v4, -0x1

    .line 84
    .local v4, "content_length":I
    const-string v5, "Content-Length:"

    .line 85
    .local v5, "content_length_str":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 86
    .local v10, "i1":I
    if-ltz v10, :cond_8

    .line 88
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v19

    add-int v10, v10, v19

    .line 89
    const-string v19, "\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    .line 90
    .local v11, "i2":I
    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 91
    .local v13, "length_str":Ljava/lang/String;
    :goto_1
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 69
    .end local v4    # "content_length":I
    .end local v5    # "content_length_str":Ljava/lang/String;
    .end local v7    # "header":Ljava/lang/String;
    .end local v10    # "i1":I
    .end local v11    # "i2":I
    .end local v13    # "length_str":Ljava/lang/String;
    :cond_3
    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    move-result v3

    goto :goto_0

    .line 92
    .restart local v4    # "content_length":I
    .restart local v5    # "content_length_str":Ljava/lang/String;
    .restart local v7    # "header":Ljava/lang/String;
    .restart local v10    # "i1":I
    .restart local v11    # "i2":I
    .restart local v13    # "length_str":Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 94
    const/16 v19, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 96
    :cond_5
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 106
    .end local v11    # "i2":I
    .end local v13    # "length_str":Ljava/lang/String;
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "buffer":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .restart local v2    # "buffer":Ljava/lang/StringBuilder;
    :cond_6
    :goto_4
    if-eqz v4, :cond_7

    .line 109
    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 110
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_9

    .line 116
    :cond_7
    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->close()V

    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 128
    .end local v2    # "buffer":Ljava/lang/StringBuilder;
    .end local v3    # "ch":I
    .end local v4    # "content_length":I
    .end local v5    # "content_length_str":Ljava/lang/String;
    .end local v7    # "header":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "i1":I
    .end local v12    # "in":Ljava/io/InputStream;
    .end local v14    # "out":Ljava/io/PrintStream;
    .end local v15    # "path":Ljava/lang/String;
    .end local v18    # "socket":Ljava/net/Socket;
    :goto_5
    return-object v17

    .line 100
    .restart local v2    # "buffer":Ljava/lang/StringBuilder;
    .restart local v3    # "ch":I
    .restart local v4    # "content_length":I
    .restart local v5    # "content_length_str":Ljava/lang/String;
    .restart local v7    # "header":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v10    # "i1":I
    .restart local v12    # "in":Ljava/io/InputStream;
    .restart local v14    # "out":Ljava/io/PrintStream;
    .restart local v15    # "path":Ljava/lang/String;
    .restart local v18    # "socket":Ljava/net/Socket;
    :cond_8
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Missing Content-Length in response header ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 123
    .end local v2    # "buffer":Ljava/lang/StringBuilder;
    .end local v3    # "ch":I
    .end local v4    # "content_length":I
    .end local v5    # "content_length_str":Ljava/lang/String;
    .end local v7    # "header":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "i1":I
    .end local v12    # "in":Ljava/io/InputStream;
    .end local v14    # "out":Ljava/io/PrintStream;
    .end local v15    # "path":Ljava/lang/String;
    .end local v18    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v6

    .line 125
    .local v6, "err":Ljava/lang/Exception;
    const-string v19, "HTTP POST failed:"

    invoke-static/range {v19 .. v19}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 128
    const-string v17, "ERROR"

    goto :goto_5

    .line 112
    .end local v6    # "err":Ljava/lang/Exception;
    .restart local v2    # "buffer":Ljava/lang/StringBuilder;
    .restart local v3    # "ch":I
    .restart local v4    # "content_length":I
    .restart local v5    # "content_length_str":Ljava/lang/String;
    .restart local v7    # "header":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v10    # "i1":I
    .restart local v12    # "in":Ljava/io/InputStream;
    .restart local v14    # "out":Ljava/io/PrintStream;
    .restart local v15    # "path":Ljava/lang/String;
    .restart local v18    # "socket":Ljava/net/Socket;
    :cond_9
    int-to-char v0, v3

    move/from16 v19, v0

    :try_start_1
    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 113
    if-lez v4, :cond_6

    add-int/lit8 v4, v4, -0x1

    goto :goto_4
.end method
