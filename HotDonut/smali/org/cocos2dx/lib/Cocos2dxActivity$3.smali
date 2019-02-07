.class Lorg/cocos2dx/lib/Cocos2dxActivity$3;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Lcom/amazon/ags/api/AGResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;->submitAchievement(Ljava/lang/String;)V
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
        "Lcom/amazon/ags/api/achievements/UpdateProgressResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Lcom/amazon/ags/api/RequestResponse;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/amazon/ags/api/achievements/UpdateProgressResponse;

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity$3;->onComplete(Lcom/amazon/ags/api/achievements/UpdateProgressResponse;)V

    return-void
.end method

.method public onComplete(Lcom/amazon/ags/api/achievements/UpdateProgressResponse;)V
    .locals 2
    .param p1, "result"    # Lcom/amazon/ags/api/achievements/UpdateProgressResponse;

    .prologue
    .line 988
    invoke-interface {p1}, Lcom/amazon/ags/api/achievements/UpdateProgressResponse;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    const-string v0, "Cocos2dxActivityIAP"

    const-string v1, "ERROR in achievement submit."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :goto_0
    return-void

    .line 991
    :cond_0
    const-string v0, "Cocos2dxActivityIAP"

    const-string v1, "Achievement Submitted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
