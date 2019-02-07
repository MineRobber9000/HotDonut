.class Lcom/facebook/android/FbDialog$2;
.super Ljava/lang/Object;
.source "FbDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/android/FbDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/android/FbDialog;


# direct methods
.method constructor <init>(Lcom/facebook/android/FbDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/android/FbDialog$2;->this$0:Lcom/facebook/android/FbDialog;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/android/FbDialog$2;->this$0:Lcom/facebook/android/FbDialog;

    invoke-static {v0}, Lcom/facebook/android/FbDialog;->access$0(Lcom/facebook/android/FbDialog;)Lcom/facebook/android/Facebook$DialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/android/Facebook$DialogListener;->onCancel()V

    .line 97
    iget-object v0, p0, Lcom/facebook/android/FbDialog$2;->this$0:Lcom/facebook/android/FbDialog;

    invoke-virtual {v0}, Lcom/facebook/android/FbDialog;->dismiss()V

    .line 98
    return-void
.end method
