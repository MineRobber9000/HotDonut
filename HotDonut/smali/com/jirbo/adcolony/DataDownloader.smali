.class public Lcom/jirbo/adcolony/DataDownloader;
.super Ljava/lang/Object;
.source "DataDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public data:[B

.field public filepath:Ljava/lang/String;

.field public sha1_hash:Ljava/lang/String;

.field public success:Z

.field public timestamp:J

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filepath"    # Ljava/lang/String;
    .param p3, "timestamp"    # J
    .param p5, "sha1_hash"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/jirbo/adcolony/DataDownloader;->url:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/jirbo/adcolony/DataDownloader;->filepath:Ljava/lang/String;

    .line 53
    iput-wide p3, p0, Lcom/jirbo/adcolony/DataDownloader;->timestamp:J

    .line 54
    iput-object p5, p0, Lcom/jirbo/adcolony/DataDownloader;->sha1_hash:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static download(Ljava/lang/String;)[B
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/jirbo/adcolony/DataDownloader;

    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/jirbo/adcolony/DataDownloader;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 30
    .local v0, "downloader":Lcom/jirbo/adcolony/DataDownloader;
    invoke-virtual {v0}, Lcom/jirbo/adcolony/DataDownloader;->run()V

    .line 31
    iget-object v1, v0, Lcom/jirbo/adcolony/DataDownloader;->data:[B

    return-object v1
.end method


# virtual methods
.method public run()V
    .locals 36

    .prologue
    .line 62
    const/16 v29, 0x1

    .local v29, "tries":I
    :goto_0
    const/16 v31, 0x3

    move/from16 v0, v29

    move/from16 v1, v31

    if-gt v0, v1, :cond_2

    .line 66
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 68
    .local v26, "start_ms":J
    new-instance v31, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/DataDownloader;->url:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-direct/range {v31 .. v32}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 69
    .local v6, "connection":Ljava/net/URLConnection;
    const/16 v31, 0x7530

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/DataDownloader;->filepath:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_d

    .line 73
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/DataDownloader;->filepath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v14, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v18

    .line 75
    .local v18, "last_modified":J
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v31

    if-eqz v31, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/jirbo/adcolony/DataDownloader;->timestamp:J

    move-wide/from16 v31, v0

    const-wide/16 v33, 0x0

    cmp-long v31, v31, v33

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/jirbo/adcolony/DataDownloader;->timestamp:J

    move-wide/from16 v31, v0

    cmp-long v31, v31, v18

    if-eqz v31, :cond_1

    :cond_0
    const-wide/16 v31, 0x0

    cmp-long v31, v18, v31

    if-nez v31, :cond_3

    .line 79
    :cond_1
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jirbo/adcolony/DataDownloader;->success:Z

    .line 218
    .end local v6    # "connection":Ljava/net/URLConnection;
    .end local v14    # "file":Ljava/io/File;
    .end local v18    # "last_modified":J
    .end local v26    # "start_ms":J
    :cond_2
    :goto_1
    return-void

    .line 84
    .restart local v6    # "connection":Ljava/net/URLConnection;
    .restart local v14    # "file":Ljava/io/File;
    .restart local v18    # "last_modified":J
    .restart local v26    # "start_ms":J
    :cond_3
    invoke-virtual {v6}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v31

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/jirbo/adcolony/DataDownloader;->timestamp:J

    .line 87
    invoke-static {}, Lcom/jirbo/adcolony/NetworkStatus;->usingWiFiNetwork()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v30

    .line 103
    .local v30, "using_wifi":Z
    :try_start_1
    const-string v31, "SHA1"

    invoke-static/range {v31 .. v31}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v25

    .line 111
    .local v25, "sha1_calculator":Ljava/security/MessageDigest;
    :try_start_2
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/DataDownloader;->filepath:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "-"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".tmp"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 112
    .local v28, "temp_filepath":Ljava/lang/String;
    new-instance v23, Ljava/io/FileOutputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 113
    .local v23, "out":Ljava/io/OutputStream;
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    .line 115
    .local v17, "in":Ljava/io/InputStream;
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7

    .line 117
    .local v7, "content_length":I
    const/16 v31, 0x400

    move/from16 v0, v31

    new-array v5, v0, [B

    .line 118
    .local v5, "buffer":[B
    const/16 v31, 0x0

    const/16 v32, 0x400

    move-object/from16 v0, v17

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 119
    .local v8, "count":I
    :cond_4
    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v8, v0, :cond_7

    .line 121
    if-lez v7, :cond_6

    .line 123
    if-le v8, v7, :cond_5

    move v8, v7

    .line 124
    :cond_5
    sub-int/2addr v7, v8

    .line 127
    :cond_6
    const/16 v31, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v5, v1, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 128
    const/16 v31, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v5, v1, v8}, Ljava/security/MessageDigest;->update([BII)V

    .line 129
    const/16 v31, 0x0

    const/16 v32, 0x400

    move-object/from16 v0, v17

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 131
    if-nez v7, :cond_4

    .line 134
    :cond_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 135
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->flush()V

    .line 136
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->close()V

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    sub-long v11, v31, v26

    .line 139
    .local v11, "elapsed_ms":J
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Downloaded "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/DataDownloader;->url:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " to "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " in "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-wide/16 v32, 0x64

    div-long v32, v11, v32

    move-wide/from16 v0, v32

    long-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x4024000000000000L    # 10.0

    div-double v32, v32, v34

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "s"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/jirbo/adcolony/AdColony;->logInfo(Ljava/lang/String;)V

    .line 142
    new-instance v14, Ljava/io/File;

    .end local v14    # "file":Ljava/io/File;
    move-object/from16 v0, v28

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .restart local v14    # "file":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/DataDownloader;->sha1_hash:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_b

    if-eqz v30, :cond_b

    .line 148
    invoke-virtual/range {v25 .. v25}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    .line 150
    .local v10, "digest_bytes":[B
    new-instance v15, Ljava/lang/StringBuilder;

    array-length v0, v10

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 151
    .local v15, "hash_buffer":Ljava/lang/StringBuilder;
    move-object v3, v10

    .local v3, "arr$":[B
    array-length v0, v3

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    aget-byte v4, v3, v16

    .line 153
    .local v4, "b":B
    shr-int/lit8 v31, v4, 0x4

    and-int/lit8 v20, v31, 0xf

    .line 154
    .local v20, "left":I
    and-int/lit8 v24, v4, 0xf

    .line 155
    .local v24, "right":I
    const/16 v31, 0xa

    move/from16 v0, v20

    move/from16 v1, v31

    if-ge v0, v1, :cond_8

    add-int/lit8 v31, v20, 0x30

    move/from16 v0, v31

    int-to-char v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    :goto_3
    const/16 v31, 0xa

    move/from16 v0, v24

    move/from16 v1, v31

    if-ge v0, v1, :cond_9

    add-int/lit8 v31, v24, 0x30

    move/from16 v0, v31

    int-to-char v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 105
    .end local v3    # "arr$":[B
    .end local v4    # "b":B
    .end local v5    # "buffer":[B
    .end local v7    # "content_length":I
    .end local v8    # "count":I
    .end local v10    # "digest_bytes":[B
    .end local v11    # "elapsed_ms":J
    .end local v15    # "hash_buffer":Ljava/lang/StringBuilder;
    .end local v16    # "i$":I
    .end local v17    # "in":Ljava/io/InputStream;
    .end local v20    # "left":I
    .end local v21    # "len$":I
    .end local v23    # "out":Ljava/io/OutputStream;
    .end local v24    # "right":I
    .end local v25    # "sha1_calculator":Ljava/security/MessageDigest;
    .end local v28    # "temp_filepath":Ljava/lang/String;
    :catch_0
    move-exception v22

    .line 107
    .local v22, "not_likely":Ljava/lang/Exception;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 210
    .end local v6    # "connection":Ljava/net/URLConnection;
    .end local v14    # "file":Ljava/io/File;
    .end local v18    # "last_modified":J
    .end local v22    # "not_likely":Ljava/lang/Exception;
    .end local v26    # "start_ms":J
    .end local v30    # "using_wifi":Z
    :catch_1
    move-exception v13

    .line 212
    .local v13, "err":Ljava/io/IOException;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Download of "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/DataDownloader;->url:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " failed:\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v13}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 215
    const/16 v31, 0x3

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_2

    .line 216
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Trying again ("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    add-int/lit8 v32, v29, 0x1

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/3)"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/jirbo/adcolony/AdColony;->logInfo(Ljava/lang/String;)V

    .line 62
    .end local v13    # "err":Ljava/io/IOException;
    :goto_5
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_0

    .line 156
    .restart local v3    # "arr$":[B
    .restart local v4    # "b":B
    .restart local v5    # "buffer":[B
    .restart local v6    # "connection":Ljava/net/URLConnection;
    .restart local v7    # "content_length":I
    .restart local v8    # "count":I
    .restart local v10    # "digest_bytes":[B
    .restart local v11    # "elapsed_ms":J
    .restart local v14    # "file":Ljava/io/File;
    .restart local v15    # "hash_buffer":Ljava/lang/StringBuilder;
    .restart local v16    # "i$":I
    .restart local v17    # "in":Ljava/io/InputStream;
    .restart local v18    # "last_modified":J
    .restart local v20    # "left":I
    .restart local v21    # "len$":I
    .restart local v23    # "out":Ljava/io/OutputStream;
    .restart local v24    # "right":I
    .restart local v25    # "sha1_calculator":Ljava/security/MessageDigest;
    .restart local v26    # "start_ms":J
    .restart local v28    # "temp_filepath":Ljava/lang/String;
    .restart local v30    # "using_wifi":Z
    :cond_8
    add-int/lit8 v31, v20, -0xa

    add-int/lit8 v31, v31, 0x61

    move/from16 v0, v31

    int-to-char v0, v0

    move/from16 v31, v0

    :try_start_3
    move/from16 v0, v31

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 158
    :cond_9
    add-int/lit8 v31, v24, -0xa

    add-int/lit8 v31, v31, 0x61

    move/from16 v0, v31

    int-to-char v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 161
    .end local v4    # "b":B
    .end local v20    # "left":I
    .end local v24    # "right":I
    :cond_a
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 163
    .local v9, "current_sha1_hash":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/DataDownloader;->sha1_hash:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_b

    .line 165
    const-string v31, "Incorrect hash."

    invoke-static/range {v31 .. v31}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 166
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "  Expected: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/DataDownloader;->sha1_hash:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 167
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "  Current:  "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    goto :goto_5

    .line 173
    .end local v3    # "arr$":[B
    .end local v9    # "current_sha1_hash":Ljava/lang/String;
    .end local v10    # "digest_bytes":[B
    .end local v15    # "hash_buffer":Ljava/lang/StringBuilder;
    .end local v16    # "i$":I
    .end local v21    # "len$":I
    :cond_b
    new-instance v31, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/DataDownloader;->filepath:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-direct/range {v31 .. v32}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v31

    if-eqz v31, :cond_c

    .line 175
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Renamed to "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/DataDownloader;->filepath:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/jirbo/adcolony/AdColony;->logDebug(Ljava/lang/String;)V

    .line 207
    .end local v7    # "content_length":I
    .end local v14    # "file":Ljava/io/File;
    .end local v18    # "last_modified":J
    .end local v23    # "out":Ljava/io/OutputStream;
    .end local v25    # "sha1_calculator":Ljava/security/MessageDigest;
    .end local v28    # "temp_filepath":Ljava/lang/String;
    .end local v30    # "using_wifi":Z
    :goto_6
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jirbo/adcolony/DataDownloader;->success:Z

    goto/16 :goto_1

    .line 179
    .restart local v7    # "content_length":I
    .restart local v14    # "file":Ljava/io/File;
    .restart local v18    # "last_modified":J
    .restart local v23    # "out":Ljava/io/OutputStream;
    .restart local v25    # "sha1_calculator":Ljava/security/MessageDigest;
    .restart local v28    # "temp_filepath":Ljava/lang/String;
    .restart local v30    # "using_wifi":Z
    :cond_c
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 180
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Error renaming "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 187
    .end local v5    # "buffer":[B
    .end local v7    # "content_length":I
    .end local v8    # "count":I
    .end local v11    # "elapsed_ms":J
    .end local v14    # "file":Ljava/io/File;
    .end local v17    # "in":Ljava/io/InputStream;
    .end local v18    # "last_modified":J
    .end local v23    # "out":Ljava/io/OutputStream;
    .end local v25    # "sha1_calculator":Ljava/security/MessageDigest;
    .end local v28    # "temp_filepath":Ljava/lang/String;
    .end local v30    # "using_wifi":Z
    :cond_d
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    .line 188
    .restart local v17    # "in":Ljava/io/InputStream;
    new-instance v23, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 190
    .local v23, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v31, 0x400

    move/from16 v0, v31

    new-array v5, v0, [B

    .line 191
    .restart local v5    # "buffer":[B
    const/16 v31, 0x0

    const/16 v32, 0x400

    move-object/from16 v0, v17

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 192
    .restart local v8    # "count":I
    :goto_7
    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v8, v0, :cond_e

    .line 194
    const/16 v31, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v5, v1, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 195
    const/16 v31, 0x0

    const/16 v32, 0x400

    move-object/from16 v0, v17

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    goto :goto_7

    .line 198
    :cond_e
    invoke-virtual/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 199
    invoke-virtual/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jirbo/adcolony/DataDownloader;->data:[B

    .line 200
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    sub-long v11, v31, v26

    .line 203
    .restart local v11    # "elapsed_ms":J
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Downloaded "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/DataDownloader;->url:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " in "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-wide/16 v32, 0x64

    div-long v32, v11, v32

    move-wide/from16 v0, v32

    long-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x4024000000000000L    # 10.0

    div-double v32, v32, v34

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "s"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/jirbo/adcolony/AdColony;->logInfo(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_6
.end method
