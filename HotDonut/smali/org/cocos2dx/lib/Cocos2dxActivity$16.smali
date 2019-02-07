.class Lorg/cocos2dx/lib/Cocos2dxActivity$16;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;->fbLoginOnly()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1486
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$2()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v0

    check-cast v0, Lcom/gamenug/hotdonut/hotdonut;

    invoke-virtual {v0}, Lcom/gamenug/hotdonut/hotdonut;->doFacebookLogin()V

    .line 1487
    return-void
.end method
