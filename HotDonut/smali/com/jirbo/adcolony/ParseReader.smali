.class Lcom/jirbo/adcolony/ParseReader;
.super Ljava/lang/Object;
.source "ParseReader.java"


# instance fields
.field count:I

.field data:[C

.field position:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    const/4 v4, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 40
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "ch":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 42
    if-lt v1, v3, :cond_0

    const/16 v2, 0x7e

    if-le v1, v2, :cond_1

    :cond_0
    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0x80

    if-lt v1, v2, :cond_2

    .line 44
    :cond_1
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 52
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iput v2, p0, Lcom/jirbo/adcolony/ParseReader;->count:I

    .line 53
    iget v2, p0, Lcom/jirbo/adcolony/ParseReader;->count:I

    new-array v2, v2, [C

    iput-object v2, p0, Lcom/jirbo/adcolony/ParseReader;->data:[C

    .line 54
    iget v2, p0, Lcom/jirbo/adcolony/ParseReader;->count:I

    iget-object v3, p0, Lcom/jirbo/adcolony/ParseReader;->data:[C

    invoke-virtual {v0, v4, v2, v3, v4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 55
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x20

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/jirbo/adcolony/ParseReader;->count:I

    .line 22
    iget v2, p0, Lcom/jirbo/adcolony/ParseReader;->count:I

    new-array v2, v2, [C

    iput-object v2, p0, Lcom/jirbo/adcolony/ParseReader;->data:[C

    .line 23
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/jirbo/adcolony/ParseReader;->count:I

    if-ge v1, v2, :cond_3

    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 26
    .local v0, "ch":C
    if-lt v0, v3, :cond_0

    const/16 v2, 0x7e

    if-le v0, v2, :cond_1

    :cond_0
    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v2, 0x80

    if-lt v0, v2, :cond_2

    .line 28
    :cond_1
    iget-object v2, p0, Lcom/jirbo/adcolony/ParseReader;->data:[C

    aput-char v0, v2, v1

    .line 23
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_2
    iget-object v2, p0, Lcom/jirbo/adcolony/ParseReader;->data:[C

    aput-char v3, v2, v1

    goto :goto_1

    .line 35
    .end local v0    # "ch":C
    :cond_3
    return-void
.end method


# virtual methods
.method consume(C)Z
    .locals 2
    .param p1, "ch"    # C

    .prologue
    .line 69
    iget v0, p0, Lcom/jirbo/adcolony/ParseReader;->position:I

    iget v1, p0, Lcom/jirbo/adcolony/ParseReader;->count:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ParseReader;->data:[C

    iget v1, p0, Lcom/jirbo/adcolony/ParseReader;->position:I

    aget-char v0, v0, v1

    if-eq v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    .line 70
    :cond_1
    iget v0, p0, Lcom/jirbo/adcolony/ParseReader;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jirbo/adcolony/ParseReader;->position:I

    .line 71
    const/4 v0, 0x1

    goto :goto_0
.end method

.method consume(Ljava/lang/String;)Z
    .locals 6
    .param p1, "st"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 82
    .local v1, "len":I
    iget v3, p0, Lcom/jirbo/adcolony/ParseReader;->position:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/jirbo/adcolony/ParseReader;->count:I

    if-le v3, v4, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v2

    .line 83
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lcom/jirbo/adcolony/ParseReader;->data:[C

    iget v5, p0, Lcom/jirbo/adcolony/ParseReader;->position:I

    add-int/2addr v5, v0

    aget-char v4, v4, v5

    if-ne v3, v4, :cond_0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    :cond_2
    iget v2, p0, Lcom/jirbo/adcolony/ParseReader;->position:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/jirbo/adcolony/ParseReader;->position:I

    .line 88
    const/4 v2, 0x1

    goto :goto_0
.end method

.method consume_ws()V
    .locals 3

    .prologue
    .line 100
    :goto_0
    iget v1, p0, Lcom/jirbo/adcolony/ParseReader;->position:I

    iget v2, p0, Lcom/jirbo/adcolony/ParseReader;->count:I

    if-ne v1, v2, :cond_1

    .line 103
    :cond_0
    return-void

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/ParseReader;->data:[C

    iget v2, p0, Lcom/jirbo/adcolony/ParseReader;->position:I

    aget-char v0, v1, v2

    .line 102
    .local v0, "ch":C
    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    :cond_2
    iget v1, p0, Lcom/jirbo/adcolony/ParseReader;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jirbo/adcolony/ParseReader;->position:I

    goto :goto_0
.end method

.method must_consume(C)V
    .locals 3
    .param p1, "ch"    # C

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ParseReader;->consume(C)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' expected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    return-void
.end method

.method must_consume(Ljava/lang/String;)V
    .locals 3
    .param p1, "st"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ParseReader;->consume(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" expected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    return-void
.end method

.method peek()C
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jirbo/adcolony/ParseReader;->data:[C

    iget v1, p0, Lcom/jirbo/adcolony/ParseReader;->position:I

    aget-char v0, v0, v1

    return v0
.end method

.method read()C
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jirbo/adcolony/ParseReader;->data:[C

    iget v1, p0, Lcom/jirbo/adcolony/ParseReader;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jirbo/adcolony/ParseReader;->position:I

    aget-char v0, v0, v1

    return v0
.end method
