.class Lorg/cocos2dx/lib/Cocos2dxActivity$4;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Lcom/amazon/ags/api/AGResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;->reportScore(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/ags/api/AGResponseCallback",
        "<",
        "Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Lcom/amazon/ags/api/RequestResponse;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity$4;->onComplete(Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;)V

    return-void
.end method

.method public onComplete(Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;)V
    .locals 2
    .param p1, "result"    # Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;

    .prologue
    .line 1022
    invoke-interface {p1}, Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    const-string v0, "Cocos2dxActivityIAP"

    const-string v1, "ERROR in score submit."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :goto_0
    return-void

    .line 1029
    :cond_0
    const-string v0, "Cocos2dxActivityIAP"

    const-string v1, "Score Submitted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
