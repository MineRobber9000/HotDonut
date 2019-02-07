.class Lcom/jirbo/adcolony/JSON$JSString;
.super Lcom/jirbo/adcolony/JSON$JSObject;
.source "JSON.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/JSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JSString"
.end annotation


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ParseReader;)V
    .locals 7
    .param p1, "reader"    # Lcom/jirbo/adcolony/ParseReader;

    .prologue
    const/16 v6, 0x5c

    const/16 v5, 0x22

    .line 715
    invoke-direct {p0}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 718
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->consume_ws()V

    .line 719
    invoke-virtual {p1, v5}, Lcom/jirbo/adcolony/ParseReader;->must_consume(C)V

    .line 720
    :goto_0
    invoke-virtual {p1, v5}, Lcom/jirbo/adcolony/ParseReader;->consume(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 722
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->read()C

    move-result v1

    .line 723
    .local v1, "ch":C
    if-ne v1, v6, :cond_0

    .line 725
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->read()C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 727
    :sswitch_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 728
    :sswitch_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 729
    :sswitch_2
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 730
    :sswitch_3
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 731
    :sswitch_4
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 732
    :sswitch_5
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 733
    :sswitch_6
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 734
    :sswitch_7
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 737
    :sswitch_8
    const/4 v2, 0x0

    .line 738
    .local v2, "n":I
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->read()C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int/lit8 v2, v3, 0x0

    .line 739
    shl-int/lit8 v3, v2, 0x10

    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->read()C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int v2, v3, v4

    .line 740
    shl-int/lit8 v3, v2, 0x10

    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->read()C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int v2, v3, v4

    .line 741
    shl-int/lit8 v3, v2, 0x10

    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->read()C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int v2, v3, v4

    .line 742
    int-to-char v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 749
    .end local v2    # "n":I
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 753
    .end local v1    # "ch":C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jirbo/adcolony/JSON$JSString;->value:Ljava/lang/String;

    .line 754
    return-void

    .line 725
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2f -> :sswitch_2
        0x5c -> :sswitch_1
        0x62 -> :sswitch_3
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x72 -> :sswitch_6
        0x74 -> :sswitch_7
        0x75 -> :sswitch_8
    .end sparse-switch
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 710
    invoke-direct {p0}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    .line 711
    iput-object p1, p0, Lcom/jirbo/adcolony/JSON$JSString;->value:Ljava/lang/String;

    .line 712
    return-void
.end method


# virtual methods
.method toBoolean()Z
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/jirbo/adcolony/JSON$JSString;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/JSON$JSString;->value:Ljava/lang/String;

    const-string v1, "0"

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/JSON$JSString;->value:Ljava/lang/String;

    const-string v1, "false"

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 764
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method toJSON(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v5, 0x22

    .line 769
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 770
    iget-object v3, p0, Lcom/jirbo/adcolony/JSON$JSString;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 771
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 773
    iget-object v3, p0, Lcom/jirbo/adcolony/JSON$JSString;->value:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 774
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_0

    .line 785
    const/16 v3, 0x20

    if-lt v0, v3, :cond_0

    const/16 v3, 0x7e

    if-gt v0, v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 771
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 776
    :sswitch_0
    const-string v3, "\\\""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 777
    :sswitch_1
    const-string v3, "\\\\"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 778
    :sswitch_2
    const-string v3, "\\/"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 779
    :sswitch_3
    const-string v3, "\\b"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 780
    :sswitch_4
    const-string v3, "\\f"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 781
    :sswitch_5
    const-string v3, "\\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 782
    :sswitch_6
    const-string v3, "\\r"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 783
    :sswitch_7
    const-string v3, "\\t"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 786
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v0, v4}, Lcom/jirbo/adcolony/JSON;->toHexString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 790
    .end local v0    # "ch":C
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 791
    return-void

    .line 774
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_3
        0x9 -> :sswitch_7
        0xa -> :sswitch_5
        0xc -> :sswitch_4
        0xd -> :sswitch_6
        0x22 -> :sswitch_0
        0x2f -> :sswitch_2
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/jirbo/adcolony/JSON$JSString;->value:Ljava/lang/String;

    return-object v0
.end method
