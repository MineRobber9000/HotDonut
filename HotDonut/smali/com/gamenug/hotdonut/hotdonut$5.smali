.class Lcom/gamenug/hotdonut/hotdonut$5;
.super Ljava/lang/Object;
.source "hotdonut.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamenug/hotdonut/hotdonut;->doFacebookGetRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamenug/hotdonut/hotdonut;


# direct methods
.method constructor <init>(Lcom/gamenug/hotdonut/hotdonut;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamenug/hotdonut/hotdonut$5;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 380
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 362
    sget-object v1, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v1}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "token":Ljava/lang/String;
    iget-object v1, p0, Lcom/gamenug/hotdonut/hotdonut$5;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-static {v1, v0}, Lcom/gamenug/hotdonut/hotdonut;->access$10(Lcom/gamenug/hotdonut/hotdonut;Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lcom/gamenug/hotdonut/hotdonut$5;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    iget-object v2, p0, Lcom/gamenug/hotdonut/hotdonut$5;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-static {v2}, Lcom/gamenug/hotdonut/hotdonut;->access$11(Lcom/gamenug/hotdonut/hotdonut;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gamenug/hotdonut/hotdonut;->access$12(Lcom/gamenug/hotdonut/hotdonut;Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lcom/gamenug/hotdonut/hotdonut$5;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/gamenug/hotdonut/hotdonut;->access$13(Lcom/gamenug/hotdonut/hotdonut;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 0
    .param p1, "e"    # Lcom/facebook/android/DialogError;

    .prologue
    .line 376
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 0
    .param p1, "error"    # Lcom/facebook/android/FacebookError;

    .prologue
    .line 372
    return-void
.end method
