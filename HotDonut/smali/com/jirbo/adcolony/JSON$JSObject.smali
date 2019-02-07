.class public Lcom/jirbo/adcolony/JSON$JSObject;
.super Ljava/lang/Object;
.source "JSON.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/JSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JSObject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/jirbo/adcolony/JSON$JSObject;",
        ">;"
    }
.end annotation


# instance fields
.field properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jirbo/adcolony/JSON$JSObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/JSON$JSObject;->properties:Ljava/util/HashMap;

    .line 188
    return-void
.end method

.method constructor <init>(Lcom/jirbo/adcolony/ParseReader;)V
    .locals 12
    .param p1, "reader"    # Lcom/jirbo/adcolony/ParseReader;

    .prologue
    const/16 v11, 0x7a

    const/16 v10, 0x61

    const/16 v9, 0x5f

    const/16 v8, 0x5a

    const/16 v7, 0x41

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/jirbo/adcolony/JSON$JSObject;->properties:Ljava/util/HashMap;

    .line 197
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->consume_ws()V

    .line 198
    const/16 v5, 0x7b

    invoke-virtual {p1, v5}, Lcom/jirbo/adcolony/ParseReader;->must_consume(C)V

    .line 200
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->consume_ws()V

    .line 201
    const/16 v5, 0x7d

    invoke-virtual {p1, v5}, Lcom/jirbo/adcolony/ParseReader;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 245
    :goto_0
    return-void

    .line 203
    :cond_0
    const/4 v2, 0x1

    .line 204
    .local v2, "first":Z
    :goto_1
    if-nez v2, :cond_1

    if-nez v2, :cond_b

    const/16 v5, 0x2c

    invoke-virtual {p1, v5}, Lcom/jirbo/adcolony/ParseReader;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 206
    :cond_1
    const/4 v2, 0x0

    .line 209
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->consume_ws()V

    .line 210
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->peek()C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_2

    .line 212
    new-instance v5, Lcom/jirbo/adcolony/JSON$JSString;

    invoke-direct {v5, p1}, Lcom/jirbo/adcolony/JSON$JSString;-><init>(Lcom/jirbo/adcolony/ParseReader;)V

    iget-object v3, v5, Lcom/jirbo/adcolony/JSON$JSString;->value:Ljava/lang/String;

    .line 233
    .local v3, "property_name":Ljava/lang/String;
    :goto_2
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->consume_ws()V

    .line 234
    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Lcom/jirbo/adcolony/ParseReader;->must_consume(C)V

    .line 236
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->consume_ws()V

    .line 237
    invoke-static {p1}, Lcom/jirbo/adcolony/JSON;->parse(Lcom/jirbo/adcolony/ParseReader;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v4

    .line 239
    .local v4, "value":Lcom/jirbo/adcolony/JSON$JSObject;
    invoke-virtual {p0, v3, v4}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 241
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->consume_ws()V

    goto :goto_1

    .line 217
    .end local v3    # "property_name":Ljava/lang/String;
    .end local v4    # "value":Lcom/jirbo/adcolony/JSON$JSObject;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->read()C

    move-result v1

    .line 219
    .local v1, "ch":C
    if-lt v1, v10, :cond_3

    if-le v1, v11, :cond_5

    :cond_3
    if-lt v1, v7, :cond_4

    if-le v1, v8, :cond_5

    :cond_4
    if-eq v1, v9, :cond_5

    .line 221
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Letter or underscore expected."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 223
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->peek()C

    move-result v1

    .line 225
    :goto_3
    if-lt v1, v10, :cond_6

    if-le v1, v11, :cond_9

    :cond_6
    if-lt v1, v7, :cond_7

    if-le v1, v8, :cond_9

    :cond_7
    const/16 v5, 0x30

    if-lt v1, v5, :cond_8

    const/16 v5, 0x39

    if-le v1, v5, :cond_9

    :cond_8
    if-ne v1, v9, :cond_a

    .line 227
    :cond_9
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->read()C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ParseReader;->peek()C

    move-result v1

    goto :goto_3

    .line 230
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "property_name":Ljava/lang/String;
    goto :goto_2

    .line 244
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v1    # "ch":C
    .end local v3    # "property_name":Ljava/lang/String;
    :cond_b
    const/16 v5, 0x7d

    invoke-virtual {p1, v5}, Lcom/jirbo/adcolony/ParseReader;->must_consume(C)V

    goto/16 :goto_0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "json_string"    # Ljava/lang/String;

    .prologue
    .line 192
    new-instance v0, Lcom/jirbo/adcolony/ParseReader;

    invoke-direct {v0, p1}, Lcom/jirbo/adcolony/ParseReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>(Lcom/jirbo/adcolony/ParseReader;)V

    .line 193
    return-void
.end method


# virtual methods
.method add(D)Lcom/jirbo/adcolony/JSON$JSArray;
    .locals 2
    .param p1, "value"    # D

    .prologue
    .line 450
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "JSObject::add() - not an array."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method add(Lcom/jirbo/adcolony/JSON$JSObject;)Lcom/jirbo/adcolony/JSON$JSArray;
    .locals 2
    .param p1, "value"    # Lcom/jirbo/adcolony/JSON$JSObject;

    .prologue
    .line 440
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "JSObject::add() - not an array."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method add(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSArray;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 445
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "JSObject::add() - not an array."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method add(Z)Lcom/jirbo/adcolony/JSON$JSArray;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 455
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "JSObject::add() - not an array."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/jirbo/adcolony/JSON$JSObject;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method count()I
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/jirbo/adcolony/JSON$JSObject;->properties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method find(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 306
    iget-object v3, p0, Lcom/jirbo/adcolony/JSON$JSObject;->properties:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jirbo/adcolony/JSON$JSObject;

    .line 307
    .local v2, "result":Lcom/jirbo/adcolony/JSON$JSObject;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 318
    :goto_0
    return-object v3

    .line 309
    :cond_0
    iget-object v3, p0, Lcom/jirbo/adcolony/JSON$JSObject;->properties:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jirbo/adcolony/JSON$JSObject;

    .line 311
    .local v1, "p":Lcom/jirbo/adcolony/JSON$JSObject;
    if-eqz v1, :cond_1

    .line 313
    invoke-virtual {v1, p1}, Lcom/jirbo/adcolony/JSON$JSObject;->find(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v2

    .line 314
    if-eqz v2, :cond_1

    move-object v3, v2

    goto :goto_0

    .line 318
    .end local v1    # "p":Lcom/jirbo/adcolony/JSON$JSObject;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method get(I)Lcom/jirbo/adcolony/JSON$JSObject;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v0

    return-object v0
.end method

.method get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;
    .locals 1
    .param p1, "property_name"    # Ljava/lang/String;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/jirbo/adcolony/JSON$JSObject;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/JSON$JSObject;

    return-object v0
.end method

.method getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/JSON$JSObject;->toBoolean()Z

    move-result v0

    return v0
.end method

.method getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "default_value"    # Z

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/JSON$JSObject;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    .end local p2    # "default_value":Z
    :goto_0
    return p2

    .restart local p2    # "default_value":Z
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/JSON$JSObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0
.end method

.method getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 402
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/JSON$JSObject;->toDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method getDouble(Ljava/lang/String;D)D
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "default_value"    # D

    .prologue
    .line 415
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/JSON$JSObject;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    .end local p2    # "default_value":D
    :goto_0
    return-wide p2

    .restart local p2    # "default_value":D
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/JSON$JSObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p2

    goto :goto_0
.end method

.method getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/JSON$JSObject;->toInt()I

    move-result v0

    return v0
.end method

.method getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "default_value"    # I

    .prologue
    .line 427
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/JSON$JSObject;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    .end local p2    # "default_value":I
    :goto_0
    return p2

    .restart local p2    # "default_value":I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/JSON$JSObject;->getInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0
.end method

.method getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 403
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/JSON$JSObject;->toLong()J

    move-result-wide v0

    return-wide v0
.end method

.method getLong(Ljava/lang/String;J)J
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "default_value"    # J

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/JSON$JSObject;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    .end local p2    # "default_value":J
    :goto_0
    return-wide p2

    .restart local p2    # "default_value":J
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/JSON$JSObject;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 401
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "default_value"    # Ljava/lang/String;

    .prologue
    .line 409
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/JSON$JSObject;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    .end local p2    # "default_value":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "default_value":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/jirbo/adcolony/JSON;->JSNull:Lcom/jirbo/adcolony/JSON$JSObject;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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
    .line 279
    iget-object v0, p0, Lcom/jirbo/adcolony/JSON$JSObject;->properties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public keys()Ljava/lang/Iterable;
    .locals 1
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
    .line 284
    iget-object v0, p0, Lcom/jirbo/adcolony/JSON$JSObject;->properties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "property_name"    # Ljava/lang/String;

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/JSON$JSObject;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/JSON$JSObject;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_0
    return-void
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 273
    .local v0, "writer":Ljava/io/PrintStream;
    invoke-virtual {p0}, Lcom/jirbo/adcolony/JSON$JSObject;->toJSON()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 275
    return-void
.end method

.method public save(Ljava/lang/String;)V
    .locals 9
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 250
    .local v5, "writer":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v5}, Lcom/jirbo/adcolony/JSON$JSObject;->save(Ljava/io/OutputStream;)V

    .line 251
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 255
    .local v0, "bytes":[B
    const/16 v6, 0xc5

    .line 256
    .local v6, "x":I
    const/4 v3, 0x0

    .line 257
    .local v3, "next_x":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v0

    if-ge v2, v7, :cond_0

    .line 259
    aget-byte v1, v0, v2

    .line 260
    .local v1, "ch":I
    move v3, v1

    .line 261
    xor-int v7, v1, v6

    int-to-byte v7, v7

    aput-byte v7, v0, v2

    .line 262
    move v6, v3

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    .end local v1    # "ch":I
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jirbo/adcolony/AdColony;->openPrivateOutputFile(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 266
    .local v4, "outfile":Ljava/io/FileOutputStream;
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 267
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 268
    return-void
.end method

.method set(ID)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 387
    new-instance v0, Lcom/jirbo/adcolony/JSON$JSNumber;

    invoke-direct {v0, p2, p3}, Lcom/jirbo/adcolony/JSON$JSNumber;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->set(ILcom/jirbo/adcolony/JSON$JSObject;)V

    .line 388
    return-void
.end method

.method set(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 392
    new-instance v0, Lcom/jirbo/adcolony/JSON$JSNumber;

    invoke-direct {v0, p2, p3}, Lcom/jirbo/adcolony/JSON$JSNumber;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->set(ILcom/jirbo/adcolony/JSON$JSObject;)V

    .line 393
    return-void
.end method

.method set(ILcom/jirbo/adcolony/JSON$JSObject;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/jirbo/adcolony/JSON$JSObject;

    .prologue
    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 378
    return-void
.end method

.method set(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 382
    new-instance v0, Lcom/jirbo/adcolony/JSON$JSString;

    invoke-direct {v0, p2}, Lcom/jirbo/adcolony/JSON$JSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->set(ILcom/jirbo/adcolony/JSON$JSObject;)V

    .line 383
    return-void
.end method

.method set(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .prologue
    .line 397
    if-eqz p2, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/JSON;->JSTrue:Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->set(ILcom/jirbo/adcolony/JSON$JSObject;)V

    .line 399
    :goto_0
    return-void

    .line 398
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/JSON;->JSFalse:Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->set(ILcom/jirbo/adcolony/JSON$JSObject;)V

    goto :goto_0
.end method

.method set(Ljava/lang/String;D)V
    .locals 1
    .param p1, "property_name"    # Ljava/lang/String;
    .param p2, "new_value"    # D

    .prologue
    .line 356
    new-instance v0, Lcom/jirbo/adcolony/JSON$JSNumber;

    invoke-direct {v0, p2, p3}, Lcom/jirbo/adcolony/JSON$JSNumber;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 357
    return-void
.end method

.method set(Ljava/lang/String;J)V
    .locals 1
    .param p1, "property_name"    # Ljava/lang/String;
    .param p2, "new_value"    # J

    .prologue
    .line 361
    new-instance v0, Lcom/jirbo/adcolony/JSON$JSNumber;

    invoke-direct {v0, p2, p3}, Lcom/jirbo/adcolony/JSON$JSNumber;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 362
    return-void
.end method

.method set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V
    .locals 1
    .param p1, "property_name"    # Ljava/lang/String;
    .param p2, "new_value"    # Lcom/jirbo/adcolony/JSON$JSObject;

    .prologue
    .line 345
    if-nez p2, :cond_0

    sget-object p2, Lcom/jirbo/adcolony/JSON;->JSNull:Lcom/jirbo/adcolony/JSON$JSObject;

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/JSON$JSObject;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    return-void
.end method

.method set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property_name"    # Ljava/lang/String;
    .param p2, "new_value"    # Ljava/lang/String;

    .prologue
    .line 351
    new-instance v0, Lcom/jirbo/adcolony/JSON$JSString;

    invoke-direct {v0, p2}, Lcom/jirbo/adcolony/JSON$JSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 352
    return-void
.end method

.method set(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "property_name"    # Ljava/lang/String;
    .param p2, "new_value"    # Z

    .prologue
    .line 366
    if-eqz p2, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/JSON;->JSTrue:Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 368
    :goto_0
    return-void

    .line 367
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/JSON;->JSFalse:Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    goto :goto_0
.end method

.method toBoolean()Z
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x1

    return v0
.end method

.method toDouble()D
    .locals 2

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/JSON;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method toInt()I
    .locals 2

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/jirbo/adcolony/JSON$JSObject;->toLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method toJSON()Ljava/lang/String;
    .locals 2

    .prologue
    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->toJSON(Ljava/lang/StringBuilder;)V

    .line 490
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method toJSON(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 495
    const/16 v3, 0x7b

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 496
    const/4 v0, 0x1

    .line 497
    .local v0, "first":Z
    iget-object v3, p0, Lcom/jirbo/adcolony/JSON$JSObject;->properties:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 499
    .local v2, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 501
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    iget-object v3, p0, Lcom/jirbo/adcolony/JSON$JSObject;->properties:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-virtual {v3, p1}, Lcom/jirbo/adcolony/JSON$JSObject;->toJSON(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 500
    :cond_0
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 504
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    const/16 v3, 0x7d

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 505
    return-void
.end method

.method toLong()J
    .locals 2

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/JSON;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->toJSON(Ljava/lang/StringBuilder;)V

    .line 483
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
