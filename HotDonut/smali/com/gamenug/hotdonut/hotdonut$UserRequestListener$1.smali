.class Lcom/gamenug/hotdonut/hotdonut$UserRequestListener$1;
.super Ljava/lang/Object;
.source "hotdonut.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamenug/hotdonut/hotdonut$UserRequestListener;->onComplete(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gamenug/hotdonut/hotdonut$UserRequestListener;


# direct methods
.method constructor <init>(Lcom/gamenug/hotdonut/hotdonut$UserRequestListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamenug/hotdonut/hotdonut$UserRequestListener$1;->this$1:Lcom/gamenug/hotdonut/hotdonut$UserRequestListener;

    .line 841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/gamenug/hotdonut/hotdonut$UserRequestListener$1;->this$1:Lcom/gamenug/hotdonut/hotdonut$UserRequestListener;

    invoke-static {v0}, Lcom/gamenug/hotdonut/hotdonut$UserRequestListener;->access$0(Lcom/gamenug/hotdonut/hotdonut$UserRequestListener;)Lcom/gamenug/hotdonut/hotdonut;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gamenug/hotdonut/hotdonut;->doPostToWall()V

    .line 844
    return-void
.end method
