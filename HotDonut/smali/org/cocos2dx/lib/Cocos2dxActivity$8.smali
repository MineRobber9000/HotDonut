.class Lorg/cocos2dx/lib/Cocos2dxActivity$8;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Lcom/amazon/ags/api/AGResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;->liveGetGameCenterName()V
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
        "Lcom/amazon/ags/api/profiles/RequestPlayerProfileResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1093
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Lcom/amazon/ags/api/RequestResponse;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/amazon/ags/api/profiles/RequestPlayerProfileResponse;

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity$8;->onComplete(Lcom/amazon/ags/api/profiles/RequestPlayerProfileResponse;)V

    return-void
.end method

.method public onComplete(Lcom/amazon/ags/api/profiles/RequestPlayerProfileResponse;)V
    .locals 3
    .param p1, "result"    # Lcom/amazon/ags/api/profiles/RequestPlayerProfileResponse;

    .prologue
    .line 1098
    invoke-interface {p1}, Lcom/amazon/ags/api/profiles/RequestPlayerProfileResponse;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1099
    const-string v1, "Cocos2dxActivityIAP"

    const-string v2, "ERROR in name get."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :goto_0
    return-void

    .line 1101
    :cond_0
    const-string v1, "Cocos2dxActivityIAP"

    const-string v2, "Got Name!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    invoke-interface {p1}, Lcom/amazon/ags/api/profiles/RequestPlayerProfileResponse;->getPlayer()Lcom/amazon/ags/api/profiles/Player;

    move-result-object v1

    .line 1103
    invoke-interface {v1}, Lcom/amazon/ags/api/profiles/Player;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 1104
    .local v0, "name":Ljava/lang/String;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$2()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v1

    iget-object v1, v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 1105
    new-instance v2, Lorg/cocos2dx/lib/Cocos2dxActivity$8$1;

    invoke-direct {v2, p0, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity$8$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity$8;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
