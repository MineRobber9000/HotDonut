.class public Lcom/jirbo/adcolony/JSON$JSNumber;
.super Lcom/jirbo/adcolony/JSON$JSObject;
.source "JSON.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/JSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JSNumber"
.end annotation


# instance fields
.field is_double:Z

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(D)V
    .locals 2
    .param p1, "value"    # D

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/JSON$JSNumber;->value:Ljava/lang/String;

    .line 804
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/JSON$JSNumber;->is_double:Z

    .line 805
    return-void
.end method

.method constructor <init>(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 808
    invoke-direct {p0}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/JSON$JSNumber;->value:Ljava/lang/String;

    .line 810
    return-void
.end method

.method constructor <init>(Lcom/jirbo/adcolony/ParseReader;)V
    .locals 7
    .param p1, "reader"    # Lcom/jirbo/adcolony/ParseReader;

    .prologue
    const/16 v6, 0x65

    const/16 v5, 0x2e

    const/16 v4, 0x2b

    const/4 v3, 0x1

    const/16 v2, 0x2d

    .line 819
    invoke-direct {p0}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 822
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->consume_ws()V

    .line 823
    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ParseReader;->consume(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 825
    const-string v1, "Infinity"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ParseReader;->consume(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 827
    const-string v1, "-Infinity"

    iput-object v1, p0, Lcom/jirbo/adcolony/JSON$JSNumber;->value:Ljava/lang/String;

    .line 828
    iput-boolean v3, p0, Lcom/jirbo/adcolony/JSON$JSNumber;->is_double:Z

    .line 856
    :goto_0
    return-void

    .line 833
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 837
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->peek()C

    move-result v1

    invoke-static {v1}, Lcom/jirbo/adcolony/JSON;->is_digit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->read()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 839
    :cond_2
    invoke-virtual {p1, v5}, Lcom/jirbo/adcolony/ParseReader;->consume(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 841
    iput-boolean v3, p0, Lcom/jirbo/adcolony/JSON$JSNumber;->is_double:Z

    .line 842
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 843
    :goto_2
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->peek()C

    move-result v1

    invoke-static {v1}, Lcom/jirbo/adcolony/JSON;->is_digit(C)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->read()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 846
    :cond_3
    invoke-virtual {p1, v6}, Lcom/jirbo/adcolony/ParseReader;->consume(C)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x45

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ParseReader;->consume(C)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 848
    :cond_4
    iput-boolean v3, p0, Lcom/jirbo/adcolony/JSON$JSNumber;->is_double:Z

    .line 849
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 850
    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ParseReader;->consume(C)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 852
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->peek()C

    move-result v1

    invoke-static {v1}, Lcom/jirbo/adcolony/JSON;->is_digit(C)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->read()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 851
    :cond_6
    invoke-virtual {p1, v4}, Lcom/jirbo/adcolony/ParseReader;->consume(C)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 855
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/JSON$JSNumber;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "is_double"    # Z

    .prologue
    .line 813
    invoke-direct {p0}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    .line 814
    iput-object p1, p0, Lcom/jirbo/adcolony/JSON$JSNumber;->value:Ljava/lang/String;

    .line 815
    iput-boolean p2, p0, Lcom/jirbo/adcolony/JSON$JSNumber;->is_double:Z

    .line 816
    return-void
.end method


# virtual methods
.method toBoolean()Z
    .locals 4

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/jirbo/adcolony/JSON$JSNumber;->toDouble()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method toJSON(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 871
    iget-object v0, p0, Lcom/jirbo/adcolony/JSON$JSNumber;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    return-void
.end method

.method toLong()J
    .locals 2

    .prologue
    .line 860
    iget-boolean v0, p0, Lcom/jirbo/adcolony/JSON$JSNumber;->is_double:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jirbo/adcolony/JSON$JSNumber;->toDouble()D

    move-result-wide v0

    double-to-long v0, v0

    .line 861
    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0}, Lcom/jirbo/adcolony/JSON$JSObject;->toLong()J

    move-result-wide v0

    goto :goto_0
.end method
