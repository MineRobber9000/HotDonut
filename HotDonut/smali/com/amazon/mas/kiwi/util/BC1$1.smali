.class final Lcom/amazon/mas/kiwi/util/BC1$1;
.super Ljava/util/HashSet;
.source "BC1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/mas/kiwi/util/BC1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 54
    const-string v0, "assets/"

    invoke-virtual {p0, v0}, Lcom/amazon/mas/kiwi/util/BC1$1;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v0, "res/"

    invoke-virtual {p0, v0}, Lcom/amazon/mas/kiwi/util/BC1$1;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method
