.class Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver$2;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver;->errorCallback(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver$2;->this$2:Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver;

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver$2;->val$name:Ljava/lang/String;

    .line 1165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver$2;->val$name:Ljava/lang/String;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$3(Ljava/lang/String;)V

    .line 1170
    return-void
.end method
