.class Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver$1;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver;->subscribeCallback(Ljava/lang/String;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver;

.field private final synthetic val$chan:Ljava/lang/String;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver$1;->this$2:Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver;

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver$1;->val$msg:Ljava/lang/String;

    iput-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver$1;->val$chan:Ljava/lang/String;

    .line 1138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1142
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver$1;->val$msg:Ljava/lang/String;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver$1;->val$chan:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    return-void
.end method
