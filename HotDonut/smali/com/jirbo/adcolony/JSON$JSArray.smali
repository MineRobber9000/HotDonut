.class Lcom/jirbo/adcolony/JSON$JSArray;
.super Lcom/jirbo/adcolony/JSON$JSObject;
.source "JSON.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/JSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JSArray"
.end annotation


# instance fields
.field data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/JSON$JSObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 515
    invoke-direct {p0}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/JSON$JSArray;->data:Ljava/util/ArrayList;

    .line 517
    return-void
.end method

.method constructor <init>(Lcom/jirbo/adcolony/ParseReader;)V
    .locals 3
    .param p1, "reader"    # Lcom/jirbo/adcolony/ParseReader;

    .prologue
    const/16 v2, 0x5d

    .line 525
    invoke-direct {p0}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    .line 511
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/JSON$JSArray;->data:Ljava/util/ArrayList;

    .line 526
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->consume_ws()V

    .line 527
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ParseReader;->must_consume(C)V

    .line 529
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->consume_ws()V

    .line 530
    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ParseReader;->consume(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    :goto_0
    return-void

    .line 532
    :cond_0
    const/4 v0, 0x1

    .line 533
    .local v0, "first":Z
    :goto_1
    if-nez v0, :cond_1

    if-nez v0, :cond_2

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ParseReader;->consume(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 535
    :cond_1
    const/4 v0, 0x0

    .line 537
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->consume_ws()V

    .line 538
    invoke-static {p1}, Lcom/jirbo/adcolony/JSON;->parse(Lcom/jirbo/adcolony/ParseReader;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/JSON$JSArray;->add(Lcom/jirbo/adcolony/JSON$JSObject;)Lcom/jirbo/adcolony/JSON$JSArray;

    .line 540
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->consume_ws()V

    goto :goto_1

    .line 543
    :cond_2
    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ParseReader;->must_consume(C)V

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "json_string"    # Ljava/lang/String;

    .prologue
    .line 521
    new-instance v0, Lcom/jirbo/adcolony/ParseReader;

    invoke-direct {v0, p1}, Lcom/jirbo/adcolony/ParseReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/jirbo/adcolony/JSON$JSArray;-><init>(Lcom/jirbo/adcolony/ParseReader;)V

    .line 522
    return-void
.end method


# virtual methods
.method add(D)Lcom/jirbo/adcolony/JSON$JSArray;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 587
    new-instance v0, Lcom/jirbo/adcolony/JSON$JSNumber;

    invoke-direct {v0, p1, p2}, Lcom/jirbo/adcolony/JSON$JSNumber;-><init>(D)V

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/JSON$JSArray;->add(Lcom/jirbo/adcolony/JSON$JSObject;)Lcom/jirbo/adcolony/JSON$JSArray;

    move-result-object v0

    return-object v0
.end method

.method add(Lcom/jirbo/adcolony/JSON$JSObject;)Lcom/jirbo/adcolony/JSON$JSArray;
    .locals 1
    .param p1, "value"    # Lcom/jirbo/adcolony/JSON$JSObject;

    .prologue
    .line 575
    if-nez p1, :cond_0

    sget-object p1, Lcom/jirbo/adcolony/JSON;->JSNull:Lcom/jirbo/adcolony/JSON$JSObject;

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/JSON$JSArray;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    return-object p0
.end method

.method add(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSArray;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 582
    new-instance v0, Lcom/jirbo/adcolony/JSON$JSString;

    invoke-direct {v0, p1}, Lcom/jirbo/adcolony/JSON$JSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/JSON$JSArray;->add(Lcom/jirbo/adcolony/JSON$JSObject;)Lcom/jirbo/adcolony/JSON$JSArray;

    move-result-object v0

    return-object v0
.end method

.method add(Z)Lcom/jirbo/adcolony/JSON$JSArray;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 592
    if-eqz p1, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/JSON;->JSTrue:Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/JSON$JSArray;->add(Lcom/jirbo/adcolony/JSON$JSObject;)Lcom/jirbo/adcolony/JSON$JSArray;

    move-result-object v0

    .line 593
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/JSON;->JSFalse:Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/JSON$JSArray;->add(Lcom/jirbo/adcolony/JSON$JSObject;)Lcom/jirbo/adcolony/JSON$JSArray;

    move-result-object v0

    goto :goto_0
.end method

.method clear()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/jirbo/adcolony/JSON$JSArray;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 571
    return-void
.end method

.method count()I
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/jirbo/adcolony/JSON$JSArray;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method find(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 609
    invoke-super {p0, p1}, Lcom/jirbo/adcolony/JSON$JSObject;->find(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v1

    .line 610
    .local v1, "result":Lcom/jirbo/adcolony/JSON$JSObject;
    if-eqz v1, :cond_0

    move-object v3, v1

    .line 621
    :goto_0
    return-object v3

    .line 612
    :cond_0
    iget-object v3, p0, Lcom/jirbo/adcolony/JSON$JSArray;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jirbo/adcolony/JSON$JSObject;

    .line 614
    .local v2, "v":Lcom/jirbo/adcolony/JSON$JSObject;
    if-eqz v2, :cond_1

    .line 616
    invoke-virtual {v2, p1}, Lcom/jirbo/adcolony/JSON$JSObject;->find(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v1

    .line 617
    if-eqz v1, :cond_1

    move-object v3, v1

    goto :goto_0

    .line 621
    .end local v2    # "v":Lcom/jirbo/adcolony/JSON$JSObject;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method get(I)Lcom/jirbo/adcolony/JSON$JSObject;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 638
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/JSON$JSArray;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v0

    .line 639
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/JSON$JSArray;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/JSON$JSObject;

    goto :goto_0
.end method

.method get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;
    .locals 2
    .param p1, "property_name"    # Ljava/lang/String;

    .prologue
    .line 598
    invoke-super {p0, p1}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v0

    .line 599
    .local v0, "result":Lcom/jirbo/adcolony/JSON$JSObject;
    if-eqz v0, :cond_0

    .line 602
    .end local v0    # "result":Lcom/jirbo/adcolony/JSON$JSObject;
    :goto_0
    return-object v0

    .line 601
    .restart local v0    # "result":Lcom/jirbo/adcolony/JSON$JSObject;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/jirbo/adcolony/JSON;->is_digit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/jirbo/adcolony/JSON;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/JSON$JSArray;->get(I)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v0

    goto :goto_0

    .line 602
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .param p2, "default_value"    # Ljava/lang/String;

    .prologue
    .line 644
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/jirbo/adcolony/JSON$JSArray;->count()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 647
    .end local p2    # "default_value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 645
    .restart local p2    # "default_value":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/JSON$JSArray;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/JSON$JSObject;

    .line 646
    .local v0, "obj":Lcom/jirbo/adcolony/JSON$JSObject;
    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {v0}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/jirbo/adcolony/JSON$JSObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 548
    iget-object v0, p0, Lcom/jirbo/adcolony/JSON$JSArray;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public keys()Ljava/lang/Iterable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 553
    iget-object v6, p0, Lcom/jirbo/adcolony/JSON$JSArray;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p0, Lcom/jirbo/adcolony/JSON$JSArray;->properties:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    add-int v0, v6, v7

    .line 554
    .local v0, "capacity":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 556
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/jirbo/adcolony/JSON$JSArray;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 557
    .local v5, "size":I
    iget-object v6, p0, Lcom/jirbo/adcolony/JSON$JSArray;->properties:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 558
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 559
    :cond_1
    return-object v4
.end method

.method set(ID)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "new_value"    # D

    .prologue
    .line 675
    new-instance v0, Lcom/jirbo/adcolony/JSON$JSNumber;

    invoke-direct {v0, p2, p3}, Lcom/jirbo/adcolony/JSON$JSNumber;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/JSON$JSArray;->set(ILcom/jirbo/adcolony/JSON$JSObject;)V

    .line 676
    return-void
.end method

.method set(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "new_value"    # J

    .prologue
    .line 680
    new-instance v0, Lcom/jirbo/adcolony/JSON$JSNumber;

    invoke-direct {v0, p2, p3}, Lcom/jirbo/adcolony/JSON$JSNumber;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/JSON$JSArray;->set(ILcom/jirbo/adcolony/JSON$JSObject;)V

    .line 681
    return-void
.end method

.method set(ILcom/jirbo/adcolony/JSON$JSObject;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/jirbo/adcolony/JSON$JSObject;

    .prologue
    .line 653
    if-nez p2, :cond_0

    sget-object p2, Lcom/jirbo/adcolony/JSON;->JSNull:Lcom/jirbo/adcolony/JSON$JSObject;

    .line 654
    :cond_0
    if-gez p1, :cond_1

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/jirbo/adcolony/JSON$JSArray;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 666
    :goto_0
    return-void

    .line 660
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/jirbo/adcolony/JSON$JSArray;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_2

    .line 662
    iget-object v0, p0, Lcom/jirbo/adcolony/JSON$JSArray;->data:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 664
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/JSON$JSArray;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method set(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "new_value"    # Ljava/lang/String;

    .prologue
    .line 670
    new-instance v0, Lcom/jirbo/adcolony/JSON$JSString;

    invoke-direct {v0, p2}, Lcom/jirbo/adcolony/JSON$JSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/JSON$JSArray;->set(ILcom/jirbo/adcolony/JSON$JSObject;)V

    .line 671
    return-void
.end method

.method set(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "new_value"    # Z

    .prologue
    .line 685
    if-eqz p2, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/JSON;->JSTrue:Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/JSON$JSArray;->set(ILcom/jirbo/adcolony/JSON$JSObject;)V

    .line 687
    :goto_0
    return-void

    .line 686
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/JSON;->JSFalse:Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/JSON$JSArray;->set(ILcom/jirbo/adcolony/JSON$JSObject;)V

    goto :goto_0
.end method

.method set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V
    .locals 1
    .param p1, "property_name"    # Ljava/lang/String;
    .param p2, "new_value"    # Lcom/jirbo/adcolony/JSON$JSObject;

    .prologue
    .line 626
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/jirbo/adcolony/JSON;->is_digit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    invoke-static {p1}, Lcom/jirbo/adcolony/JSON;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/jirbo/adcolony/JSON$JSArray;->set(ILcom/jirbo/adcolony/JSON$JSObject;)V

    .line 634
    :goto_0
    return-void

    .line 632
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    goto :goto_0
.end method

.method toJSON(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 691
    const/16 v3, 0x5b

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 692
    const/4 v0, 0x1

    .line 693
    .local v0, "first":Z
    iget-object v3, p0, Lcom/jirbo/adcolony/JSON$JSArray;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jirbo/adcolony/JSON$JSObject;

    .line 695
    .local v2, "value":Lcom/jirbo/adcolony/JSON$JSObject;
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 697
    :goto_1
    invoke-virtual {v2, p1}, Lcom/jirbo/adcolony/JSON$JSObject;->toJSON(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 696
    :cond_0
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 699
    .end local v2    # "value":Lcom/jirbo/adcolony/JSON$JSObject;
    :cond_1
    const/16 v3, 0x5d

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 700
    return-void
.end method
