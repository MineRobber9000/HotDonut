.class final Lcom/flurry/android/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/flurry/android/u;


# direct methods
.method constructor <init>(Lcom/flurry/android/u;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/flurry/android/ae;->b:Lcom/flurry/android/u;

    iput-object p2, p0, Lcom/flurry/android/ae;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 405
    new-instance v0, Lcom/flurry/android/CallbackEvent;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Lcom/flurry/android/CallbackEvent;-><init>(I)V

    .line 406
    iget-object v1, p0, Lcom/flurry/android/ae;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/CallbackEvent;->setMessage(Ljava/lang/String;)V

    .line 407
    iget-object v1, p0, Lcom/flurry/android/ae;->b:Lcom/flurry/android/u;

    invoke-static {v1}, Lcom/flurry/android/u;->a(Lcom/flurry/android/u;)Lcom/flurry/android/AppCircleCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/flurry/android/AppCircleCallback;->onMarketAppLaunchError(Lcom/flurry/android/CallbackEvent;)V

    .line 408
    return-void
.end method
