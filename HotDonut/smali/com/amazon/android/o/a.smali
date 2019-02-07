.class public final Lcom/amazon/android/o/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/android/framework/resource/b;


# instance fields
.field public a:Lcom/amazon/android/o/d;

.field private b:Lcom/amazon/android/framework/resource/a;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amazon/android/o/d;

    invoke-direct {v0}, Lcom/amazon/android/o/d;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/o/a;->a:Lcom/amazon/android/o/d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/o/a;->a:Lcom/amazon/android/o/d;

    invoke-virtual {v0, p1}, Lcom/amazon/android/o/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/o/a;->a:Lcom/amazon/android/o/d;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/o/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/o/a;->a:Lcom/amazon/android/o/d;

    invoke-virtual {v0, p1}, Lcom/amazon/android/o/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final onResourcesPopulated()V
    .locals 2

    iget-object v0, p0, Lcom/amazon/android/o/a;->b:Lcom/amazon/android/framework/resource/a;

    iget-object v1, p0, Lcom/amazon/android/o/a;->a:Lcom/amazon/android/o/d;

    invoke-interface {v0, v1}, Lcom/amazon/android/framework/resource/a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/o/a;->a:Lcom/amazon/android/o/d;

    invoke-virtual {v0}, Lcom/amazon/android/o/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
