.class Lorg/cocos2dx/lib/Cocos2dxActivity$7;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;->friendResult(I[Ljava/lang/Object;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1081
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$6()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$6()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$7()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->nativeFriendResult(I[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1082
    return-void
.end method
