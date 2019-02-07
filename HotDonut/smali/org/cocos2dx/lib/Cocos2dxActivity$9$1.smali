.class Lorg/cocos2dx/lib/Cocos2dxActivity$9$1;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$9;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity$9;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$9$1;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$9;

    .line 1238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1241
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$2()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v0

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$9$1$1;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity$9$1$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity$9$1;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1250
    return-void
.end method
