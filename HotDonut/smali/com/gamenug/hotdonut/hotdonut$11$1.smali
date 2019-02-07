.class Lcom/gamenug/hotdonut/hotdonut$11$1;
.super Ljava/lang/Object;
.source "hotdonut.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamenug/hotdonut/hotdonut$11;->onComplete(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gamenug/hotdonut/hotdonut$11;


# direct methods
.method constructor <init>(Lcom/gamenug/hotdonut/hotdonut$11;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamenug/hotdonut/hotdonut$11$1;->this$1:Lcom/gamenug/hotdonut/hotdonut$11;

    .line 1034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1036
    iget-object v1, p0, Lcom/gamenug/hotdonut/hotdonut$11$1;->this$1:Lcom/gamenug/hotdonut/hotdonut$11;

    invoke-static {v1}, Lcom/gamenug/hotdonut/hotdonut$11;->access$0(Lcom/gamenug/hotdonut/hotdonut$11;)Lcom/gamenug/hotdonut/hotdonut;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gamenug/hotdonut/hotdonut;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1037
    const-string v2, "You are now logged out of Facebook."

    .line 1038
    const/4 v3, 0x0

    .line 1036
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1039
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1040
    return-void
.end method
