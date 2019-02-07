.class public Lcom/gamenug/hotdonut/hotdonut$WallPostListener;
.super Lcom/gamenug/hotdonut/hotdonut$BaseDialogListener;
.source "hotdonut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamenug/hotdonut/hotdonut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallPostListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamenug/hotdonut/hotdonut;


# direct methods
.method public constructor <init>(Lcom/gamenug/hotdonut/hotdonut;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/gamenug/hotdonut/hotdonut$WallPostListener;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-direct {p0, p1}, Lcom/gamenug/hotdonut/hotdonut$BaseDialogListener;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    .prologue
    .line 600
    iget-object v1, p0, Lcom/gamenug/hotdonut/hotdonut$WallPostListener;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-virtual {v1}, Lcom/gamenug/hotdonut/hotdonut;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 601
    const-string v2, "Wall Post cancelled"

    const/4 v3, 0x0

    .line 600
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 602
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 603
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 589
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 3
    .param p1, "error"    # Lcom/facebook/android/FacebookError;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/gamenug/hotdonut/hotdonut$WallPostListener;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-virtual {v0}, Lcom/gamenug/hotdonut/hotdonut;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Facebook Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 593
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 595
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 596
    return-void
.end method
