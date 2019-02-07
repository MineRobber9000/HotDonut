.class Lorg/cocos2dx/lib/Cocos2dxActivity$8$1;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity$8;->onComplete(Lcom/amazon/ags/api/profiles/RequestPlayerProfileResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$8;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity$8;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$8$1;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$8;

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$8$1;->val$name:Ljava/lang/String;

    .line 1105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$8$1;->val$name:Ljava/lang/String;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->nativeSetGameCenterName(Ljava/lang/String;)V

    .line 1111
    return-void
.end method
