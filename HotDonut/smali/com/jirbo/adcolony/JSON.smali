.class public Lcom/jirbo/adcolony/JSON;
.super Ljava/lang/Object;
.source "JSON.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/JSON$JSNullType;,
        Lcom/jirbo/adcolony/JSON$JSFalseType;,
        Lcom/jirbo/adcolony/JSON$JSTrueType;,
        Lcom/jirbo/adcolony/JSON$JSNumber;,
        Lcom/jirbo/adcolony/JSON$JSString;,
        Lcom/jirbo/adcolony/JSON$JSArray;,
        Lcom/jirbo/adcolony/JSON$JSObject;
    }
.end annotation


# static fields
.field static JSFalse:Lcom/jirbo/adcolony/JSON$JSObject;

.field static JSNull:Lcom/jirbo/adcolony/JSON$JSObject;

.field static JSTrue:Lcom/jirbo/adcolony/JSON$JSObject;

.field static buffer:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/jirbo/adcolony/JSON$JSTrueType;

    invoke-direct {v0}, Lcom/jirbo/adcolony/JSON$JSTrueType;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/JSON;->JSTrue:Lcom/jirbo/adcolony/JSON$JSObject;

    .line 31
    new-instance v0, Lcom/jirbo/adcolony/JSON$JSFalseType;

    invoke-direct {v0}, Lcom/jirbo/adcolony/JSON$JSFalseType;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/JSON;->JSFalse:Lcom/jirbo/adcolony/JSON$JSObject;

    .line 32
    new-instance v0, Lcom/jirbo/adcolony/JSON$JSNullType;

    invoke-direct {v0}, Lcom/jirbo/adcolony/JSON$JSNullType;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/JSON;->JSNull:Lcom/jirbo/adcolony/JSON$JSObject;

    .line 90
    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lcom/jirbo/adcolony/JSON;->buffer:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 901
    return-void
.end method

.method static is_digit(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 127
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static load(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;
    .locals 9
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x400

    const/4 v7, 0x0

    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jirbo/adcolony/AdColony;->openPrivateInputFile(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 96
    .local v3, "infile":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 97
    .local v0, "builder":Ljava/io/ByteArrayOutputStream;
    sget-object v5, Lcom/jirbo/adcolony/JSON;->buffer:[B

    invoke-virtual {v3, v5, v7, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    .line 98
    .local v1, "count":I
    :goto_0
    if-ltz v1, :cond_0

    .line 100
    sget-object v5, Lcom/jirbo/adcolony/JSON;->buffer:[B

    invoke-virtual {v0, v5, v7, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 101
    sget-object v5, Lcom/jirbo/adcolony/JSON;->buffer:[B

    invoke-virtual {v3, v5, v7, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 105
    .local v2, "data":[B
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 107
    invoke-static {v2}, Lcom/jirbo/adcolony/JSON;->load([B)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v4

    .line 108
    .local v4, "result":Lcom/jirbo/adcolony/JSON$JSObject;
    return-object v4
.end method

.method public static load([B)Lcom/jirbo/adcolony/JSON$JSObject;
    .locals 5
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v4, p0

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 114
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v3, 0xc5

    .line 115
    .local v3, "x":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_0

    .line 117
    aget-byte v1, p0, v2

    .line 118
    .local v1, "ch":I
    xor-int/2addr v1, v3

    .line 119
    move v3, v1

    .line 120
    and-int/lit16 v4, v1, 0xff

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "ch":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jirbo/adcolony/JSON;->parse(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v4

    return-object v4
.end method

.method public static parse(Lcom/jirbo/adcolony/ParseReader;)Lcom/jirbo/adcolony/JSON$JSObject;
    .locals 3
    .param p0, "reader"    # Lcom/jirbo/adcolony/ParseReader;

    .prologue
    const/4 v2, 0x1

    .line 56
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ParseReader;->consume(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ParseReader;->consume(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ParseReader;->peek()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized JSON notation: (char) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ParseReader;->peek()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :sswitch_0
    new-instance v0, Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>(Lcom/jirbo/adcolony/ParseReader;)V

    .line 84
    :goto_0
    return-object v0

    .line 64
    :sswitch_1
    new-instance v0, Lcom/jirbo/adcolony/JSON$JSArray;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/JSON$JSArray;-><init>(Lcom/jirbo/adcolony/ParseReader;)V

    goto :goto_0

    .line 65
    :sswitch_2
    new-instance v0, Lcom/jirbo/adcolony/JSON$JSString;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/JSON$JSString;-><init>(Lcom/jirbo/adcolony/ParseReader;)V

    goto :goto_0

    .line 78
    :sswitch_3
    new-instance v0, Lcom/jirbo/adcolony/JSON$JSNumber;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/JSON$JSNumber;-><init>(Lcom/jirbo/adcolony/ParseReader;)V

    goto :goto_0

    .line 80
    :sswitch_4
    const-string v0, "true"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ParseReader;->must_consume(Ljava/lang/String;)V

    sget-object v0, Lcom/jirbo/adcolony/JSON;->JSTrue:Lcom/jirbo/adcolony/JSON$JSObject;

    goto :goto_0

    .line 81
    :sswitch_5
    const-string v0, "false"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ParseReader;->must_consume(Ljava/lang/String;)V

    sget-object v0, Lcom/jirbo/adcolony/JSON;->JSFalse:Lcom/jirbo/adcolony/JSON$JSObject;

    goto :goto_0

    .line 82
    :sswitch_6
    const-string v0, "null"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ParseReader;->must_consume(Ljava/lang/String;)V

    sget-object v0, Lcom/jirbo/adcolony/JSON;->JSFalse:Lcom/jirbo/adcolony/JSON$JSObject;

    goto :goto_0

    .line 83
    :sswitch_7
    const-string v0, "Infinity"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ParseReader;->must_consume(Ljava/lang/String;)V

    new-instance v0, Lcom/jirbo/adcolony/JSON$JSNumber;

    const-string v1, "Infinity"

    invoke-direct {v0, v1, v2}, Lcom/jirbo/adcolony/JSON$JSNumber;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    .line 84
    :sswitch_8
    const-string v0, "NaN"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ParseReader;->must_consume(Ljava/lang/String;)V

    new-instance v0, Lcom/jirbo/adcolony/JSON$JSNumber;

    const-string v1, "NaN"

    invoke-direct {v0, v1, v2}, Lcom/jirbo/adcolony/JSON$JSNumber;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    .line 61
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x2d -> :sswitch_3
        0x30 -> :sswitch_3
        0x31 -> :sswitch_3
        0x32 -> :sswitch_3
        0x33 -> :sswitch_3
        0x34 -> :sswitch_3
        0x35 -> :sswitch_3
        0x36 -> :sswitch_3
        0x37 -> :sswitch_3
        0x38 -> :sswitch_3
        0x39 -> :sswitch_3
        0x49 -> :sswitch_7
        0x4e -> :sswitch_8
        0x5b -> :sswitch_1
        0x66 -> :sswitch_5
        0x6e -> :sswitch_6
        0x74 -> :sswitch_4
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/jirbo/adcolony/JSON$JSObject;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/jirbo/adcolony/ParseReader;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ParseReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/jirbo/adcolony/JSON;->parse(Lcom/jirbo/adcolony/ParseReader;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;
    .locals 3
    .param p0, "st"    # Ljava/lang/String;

    .prologue
    .line 39
    :try_start_0
    new-instance v1, Lcom/jirbo/adcolony/ParseReader;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/ParseReader;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/jirbo/adcolony/JSON;->parse(Lcom/jirbo/adcolony/ParseReader;)Lcom/jirbo/adcolony/JSON$JSObject;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 45
    :goto_0
    return-object v1

    .line 41
    :catch_0
    move-exception v0

    .line 43
    .local v0, "err":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed JSON:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 45
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static parseDouble(Ljava/lang/String;)D
    .locals 3
    .param p0, "st"    # Ljava/lang/String;

    .prologue
    .line 134
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 138
    :goto_0
    return-wide v1

    .line 136
    :catch_0
    move-exception v0

    .line 138
    .local v0, "zero_by_default":Ljava/lang/NumberFormatException;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method static parseInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "st"    # Ljava/lang/String;

    .prologue
    .line 158
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 162
    :goto_0
    return v1

    .line 160
    :catch_0
    move-exception v0

    .line 162
    .local v0, "zero_by_default":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static parseLong(Ljava/lang/String;)J
    .locals 3
    .param p0, "st"    # Ljava/lang/String;

    .prologue
    .line 146
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 150
    :goto_0
    return-wide v1

    .line 148
    :catch_0
    move-exception v0

    .line 150
    .local v0, "zero_by_default":Ljava/lang/NumberFormatException;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method static toHexString(II)Ljava/lang/String;
    .locals 5
    .param p0, "n"    # I
    .param p1, "digits"    # I

    .prologue
    .line 169
    and-int/lit8 v1, p0, 0xf

    .line 170
    .local v1, "value":I
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "digit":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 174
    .end local v0    # "digit":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 171
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, -0xa

    add-int/lit8 v3, v3, 0x61

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "digit":Ljava/lang/String;
    goto :goto_0

    .line 174
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    ushr-int/lit8 v3, p0, 0x4

    add-int/lit8 v4, p1, -0x1

    invoke-static {v3, v4}, Lcom/jirbo/adcolony/JSON;->toHexString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
