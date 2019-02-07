.class Lcom/gamenug/hotdonut/hotdonut$10;
.super Ljava/lang/Object;
.source "hotdonut.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamenug/hotdonut/hotdonut;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/gamenug/hotdonut/hotdonut$10;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    .line 1017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/gamenug/hotdonut/hotdonut$10;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    iget-object v0, v0, Lcom/gamenug/hotdonut/hotdonut;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getHeight()I

    move-result v0

    sput v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->screenHeight:I

    .line 1022
    iget-object v0, p0, Lcom/gamenug/hotdonut/hotdonut$10;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    iget-object v0, v0, Lcom/gamenug/hotdonut/hotdonut;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getWidth()I

    move-result v0

    sput v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->screenWidth:I

    .line 1023
    return-void
.end method
