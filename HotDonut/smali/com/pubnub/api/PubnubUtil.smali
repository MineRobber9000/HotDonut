.class public Lcom/pubnub/api/PubnubUtil;
.super Ljava/lang/Object;
.source "PubnubUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized hashTableKeysToDelimitedString(Ljava/util/Hashtable;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "ht"    # Ljava/util/Hashtable;
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 165
    const-class v5, Lcom/pubnub/api/PubnubUtil;

    monitor-enter v5

    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 166
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 167
    .local v1, "first":Z
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 169
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 171
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 173
    .local v2, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    const/4 v1, 0x0

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 165
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "first":Z
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 180
    .restart local v0    # "e":Ljava/util/Enumeration;
    .restart local v1    # "first":Z
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    monitor-exit v5

    return-object v4
.end method

.method public static declared-synchronized hashtableKeysToArray(Ljava/util/Hashtable;)[Ljava/lang/String;
    .locals 7
    .param p0, "ht"    # Ljava/util/Hashtable;

    .prologue
    .line 136
    const-class v6, Lcom/pubnub/api/PubnubUtil;

    monitor-enter v6

    :try_start_0
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 137
    .local v4, "v":Ljava/util/Vector;
    const/4 v3, 0x0

    .line 138
    .local v3, "sa":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 140
    .local v0, "count":I
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 141
    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 142
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 143
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    .line 145
    goto :goto_0

    .line 147
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    new-array v3, v0, [Ljava/lang/String;

    .line 148
    invoke-virtual {v4, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit v6

    return-object v3

    .line 136
    .end local v0    # "count":I
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v3    # "sa":[Ljava/lang/String;
    .end local v4    # "v":Ljava/util/Vector;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static joinString([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "sourceArray"    # [Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 74
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static splitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    .line 25
    const/4 v2, 0x0

    .line 26
    .local v2, "delimiterCount":I
    const/4 v3, 0x0

    .line 27
    .local v3, "index":I
    move-object v6, p0

    .line 31
    .local v6, "tmpStr":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v8, :cond_0

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 34
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    :cond_0
    add-int/lit8 v7, v2, 0x1

    new-array v5, v7, [Ljava/lang/String;

    .line 39
    .local v5, "splittedList":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 40
    .local v0, "counter":I
    move-object v6, p0

    .line 43
    :cond_1
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 45
    .local v4, "nextIndex":I
    if-eq v4, v8, :cond_2

    .line 46
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "counter":I
    .local v1, "counter":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v0

    .line 48
    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move v0, v1

    .line 55
    .end local v1    # "counter":I
    .restart local v0    # "counter":I
    :goto_1
    invoke-virtual {v6, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v8, :cond_1

    .line 57
    return-object v5

    .line 51
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "counter":I
    .restart local v1    # "counter":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v0

    .line 53
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move v0, v1

    .end local v1    # "counter":I
    .restart local v0    # "counter":I
    goto :goto_1
.end method

.method public static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "sUrl"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .local v2, "urlOK":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 91
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 92
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_0

    .line 121
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 90
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :sswitch_0
    const-string v3, "%3C"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 97
    :sswitch_1
    const-string v3, "%3E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 100
    :sswitch_2
    const-string v3, "%2F"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 103
    :sswitch_3
    const-string v3, "%20"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 106
    :sswitch_4
    const-string v3, "%3A"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 109
    :sswitch_5
    const-string v3, "%2D"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 112
    :sswitch_6
    const-string v3, "%7B"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 115
    :sswitch_7
    const-string v3, "%7D"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 118
    :sswitch_8
    const-string v3, "%22"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 125
    .end local v0    # "ch":C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 92
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_3
        0x22 -> :sswitch_8
        0x2d -> :sswitch_5
        0x2f -> :sswitch_2
        0x3a -> :sswitch_4
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
        0x7b -> :sswitch_6
        0x7d -> :sswitch_7
    .end sparse-switch
.end method
